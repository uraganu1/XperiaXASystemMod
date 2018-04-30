/*
 * drivers/misc/doublewave2wake.c
 *
 *
 * Copyright (c) 2017, Andrei Cojocar <cojocar.andrei@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/delay.h>
#include <linux/init.h>
#include <linux/err.h>
#include <linux/slab.h>
#include <linux/workqueue.h>
#include <linux/input.h>
#include <linux/hrtimer.h>
#include <linux/syscalls.h>
#include <linux/wakelock.h>
#include <asm-generic/cputime.h>
#include <linux/string.h>
#include "doublewave2wake.h"
#include <../../vibrator/vibrator_drv.h>
#include "stk3x1x.h"

#ifdef CONFIG_POWERSUSPEND
#include <linux/powersuspend.h>
#endif // CONFIG_POWERSUSPEND

/* Version, author, desc, etc */
#define DRIVER_AUTHOR "Andrei Cojocar <cojocar.andrei@gmail.com>"
#define DRIVER_DESCRIPTION "Doublewave2wake for tubass"
#define DRIVER_VERSION "1.0"
#define LOGTAG "[doublewave2wake]: "

MODULE_AUTHOR(DRIVER_AUTHOR);
MODULE_DESCRIPTION(DRIVER_DESCRIPTION);
MODULE_VERSION(DRIVER_VERSION);
MODULE_LICENSE("GPLv2");

/* Tuneables */
#define DW2W_DEFAULT			1
#define DW2W_ENABLE_TRIES		32
#define DW2W_ENABLE_MS			640

#define DW2W_PWRKEY_DUR		60
#define DW2W_TIME				1280
#define DW2W_TIME_W			400
#define DW2W_VIBRATOR_WAVE	9
#define DW2W_VIBRATOR_WAKE	24

/* Resources */
int dw2w_switch = DW2W_DEFAULT;
static struct timeval wave_time_pre;
static struct timeval wave_time_w;
static int wave_nr = 0;
static bool wave_cnt = false;
static bool exec_count = true;
bool dw2w_scr_suspended = false;
bool dw2w_prx_enabled = false;
static int dw2w_enabler_counter = DW2W_ENABLE_TRIES;

static struct input_dev * doublewave2wake_pwrdev;

static DEFINE_MUTEX(pwrkeyworklock);
static DEFINE_MUTEX(dw2wenabler);

static struct workqueue_struct *dw2w_input_wq;
static struct work_struct dw2w_input_work;
static struct delayed_work dw2w_enabler_work;

struct wake_lock w_lock;

#if DW2W_DEBUG
struct debug_node;

static struct debug_node *head = NULL;

struct debug_node {
	char *log_entry;
	struct debug_node *next;
};

static int nr_entries = 0;

void dw2w_log(const char *entry)
{
	struct debug_node *n;
	struct debug_node *cn;

	if( entry != NULL ) {
		if( head == NULL ) {
			head = kzalloc(sizeof(struct debug_node), GFP_KERNEL);
			head->log_entry = kzalloc(sizeof(char)*strlen(entry)+1, GFP_KERNEL);
			head->next = NULL;
			memcpy(head->log_entry, entry, strlen(entry));
			head->log_entry[strlen(entry)] = 0;
			nr_entries++;
		}
		else if( nr_entries < 512 ) {
			cn = head;
			while( cn->next != NULL ) {
				cn = cn->next;
			}
			n = kzalloc(sizeof(struct debug_node), GFP_KERNEL);
			n->log_entry = kzalloc(sizeof(char)*strlen(entry)+1, GFP_KERNEL);
			n->next = NULL;
			memcpy(n->log_entry, entry, strlen(entry));
			n->log_entry[strlen(entry)] = 0;
			cn->next = n;
			nr_entries++;
		}
		else {
			n = head;
			cn = head->next;
			kfree(head->log_entry);
			kfree(head);
			head = cn;
			cn = head;
			while( cn->next != NULL ) {
				cn = cn->next;
			}
			n = kzalloc(sizeof(struct debug_node), GFP_KERNEL);
			n->log_entry = kzalloc(sizeof(char)*strlen(entry)+1, GFP_KERNEL);
			n->next = NULL;
			memcpy(n->log_entry, entry, strlen(entry));
			n->log_entry[strlen(entry)] = 0;
			cn->next = n;
		}
	}
}
#endif



/* Read cmdline for dt2w */
static int __init read_dw2w_cmdline(char *dw2w)
{
	if (strcmp(dw2w, "1") == 0) {
		pr_info("[cmdline_dw2w]: DoubleWave2Wake enabled. | dw2w='%s'\n", dw2w);
		dw2w_switch = 1;
	} else if (strcmp(dw2w, "0") == 0) {
		pr_info("[cmdline_dw2w]: DoubleWave2Wake disabled. | dw2w='%s'\n", dw2w);
		dw2w_switch = 0;
	} else {
		pr_info("[cmdline_dw2w]: No valid input found. Going with default: | dw2w='%u'\n", dw2w_switch);
	}
	return 1;
}
__setup("dw2w=", read_dw2w_cmdline);

/* reset on finger release */
static void doublewave2wake_reset(void) {

	exec_count = true;
	wave_nr = 0;
	wave_time_pre.tv_sec = 0;
	wave_time_pre.tv_usec = 0;
	wave_time_w.tv_sec = 0;
	wave_time_w.tv_usec = 0;
}

/* PowerKey work func */
static void doublewave2wake_presspwr(struct work_struct * doublewave2wake_presspwr_work) {

	if (!mutex_trylock(&pwrkeyworklock))
                return;
	input_event(doublewave2wake_pwrdev, EV_KEY, KEY_POWER, 1);
	input_event(doublewave2wake_pwrdev, EV_SYN, 0, 0);
	msleep(DW2W_PWRKEY_DUR);
	input_event(doublewave2wake_pwrdev, EV_KEY, KEY_POWER, 0);
	input_event(doublewave2wake_pwrdev, EV_SYN, 0, 0);
	msleep(DW2W_PWRKEY_DUR);
        mutex_unlock(&pwrkeyworklock);
	vibrator_enable_ms(DW2W_VIBRATOR_WAKE);
	return;
}

static DECLARE_WORK(doublewave2wake_presspwr_work, doublewave2wake_presspwr);

void doublewave2wake_enabler(struct work_struct *unused) {

	bool err = false;
	if (!mutex_trylock(&dw2wenabler))
                return;

#if DW2W_DEBUG
	dw2w_log("entering doublewave2wake_enabler");
#endif

	dw2w_enabler_counter--;
	if( dw2w_enabler_counter > 0 ) {
		dw2w_prx_enabled = stk3x1x_store_psenable_exported(true, &err);
#if DW2W_DEBUG
		if( dw2w_prx_enabled ) {
			if( err ) {
				dw2w_log("doublewave2wake_enabler, dw2w_prx_enabled=1, err=1");
			}
			else {
				dw2w_log("doublewave2wake_enabler, dw2w_prx_enabled=1, err=0");
			}
		}
		else {
			if( err ) {
				dw2w_log("doublewave2wake_enabler, dw2w_prx_enabled=0, err=1");
			}
			else {
				dw2w_log("doublewave2wake_enabler, dw2w_prx_enabled=0, err=0");
			}
		}
#endif
		if(  !dw2w_prx_enabled && !err ) {
			wake_lock_timeout(&w_lock, 1*HZ);
			schedule_delayed_work(&dw2w_enabler_work, msecs_to_jiffies(DW2W_ENABLE_MS));
		}
	}
#if DW2W_DEBUG
	dw2w_log("exiting doublewave2wake_enabler");
#endif
	mutex_unlock(&dw2wenabler);
}

/* PowerKey trigger */
static void doublewave2wake_pwrtrigger(void) {

	schedule_work(&doublewave2wake_presspwr_work);
        return;
}

/* init a new wave */
static void new_wave(void) {

	do_gettimeofday(&wave_time_pre);
	wave_nr++;
	vibrator_enable_ms(DW2W_VIBRATOR_WAVE);
}

static void new_wave_w(void) {

	do_gettimeofday(&wave_time_w);
}

static int computetime(struct timeval *val) {

	struct timeval now;
	unsigned long long tdiff = 0;
	unsigned long  long now_us = 0;
	unsigned long long val_us = 0;

	do_gettimeofday(&now);
	now_us = (unsigned long long)(now.tv_sec*USEC_PER_SEC) + (unsigned long long)now.tv_usec;
	val_us = (unsigned long long)(val->tv_sec*USEC_PER_SEC) + (unsigned long long)val->tv_usec;

	tdiff = (unsigned long long)now_us - (unsigned long long)val_us;

	return (int)(tdiff / MSEC_PER_SEC);
}

/* Doublewave2wake main function */
static void detect_doublewave2wake(bool st)
{

        bool single_wave = st;
	if ((single_wave) && (dw2w_switch > 0) && (exec_count) && (wave_cnt)) {
		wave_cnt = false;
		if (wave_nr == 0) {
			new_wave();
		} else if (wave_nr == 1) {
			if( computetime(&wave_time_pre) < DW2W_TIME ) {
				wave_nr++;
			}
			else {
				doublewave2wake_reset();
				new_wave();
			}
		} else {
			doublewave2wake_reset();
			new_wave();
		}
		if ((wave_nr > 1)) {
			pr_info(LOGTAG"ON\n");
			exec_count = false;
			doublewave2wake_pwrtrigger();
			doublewave2wake_reset();
		}
	}
}

static void dw2w_input_callback(struct work_struct *unused) {
	
	detect_doublewave2wake(true);
	return;
}

static void dw2w_input_event(struct input_handle *handle, unsigned int type, unsigned int code, int value) {
	
#if DW2W_DEBUG
	char *l = kzalloc(sizeof(char)*256, GFP_KERNEL);
	if( l != NULL ) {
		if( dw2w_scr_suspended ) {
			snprintf(l, 255, "dw2w_input_event, type: %d, code: %d, value: %d, dw2w_scr_suspended=1", type, code, value);
		}
		else {
			snprintf(l, 255, "dw2w_input_event, type: %d, code: %d, value: %d, dw2w_scr_suspended=0", type, code, value);
		}
		dw2w_log(l);
		kfree(l);
	}
	else {
		if( dw2w_scr_suspended ) {
			dw2w_log("entering dw2w_input_event, dw2w_scr_suspended=1");
		}
		else {
			dw2w_log("entering dw2w_input_event, dw2w_scr_suspended=0");
		}
	}
#endif
	if ( !dw2w_scr_suspended || !dw2w_prx_enabled )
		return;

	if ( (type != 0x02)  || (code != 0x02) ) {
		//reject
		return;
	}

	if( value == 0x1 )
		new_wave_w();
	else if( computetime(&wave_time_w) < DW2W_TIME_W ) {
		wave_cnt = true;
	}
	else {
		doublewave2wake_reset();
	}

	if (wave_cnt) {
		queue_work_on(0, dw2w_input_wq, &dw2w_input_work);
	}
}

static int input_dev_filter(struct input_dev *dev) {

	if ( strstr(dev->name, "m_alsps_input") ) {
		return 0;
	} else {
		return 1;
	}
}

static int dw2w_input_connect(struct input_handler *handler, struct input_dev *dev, const struct input_device_id *id) {
	
	struct input_handle *handle;
	int error;

	if (input_dev_filter(dev))
		return -ENODEV;

	handle = kzalloc(sizeof(struct input_handle), GFP_KERNEL);
	if (!handle)
		return -ENOMEM;

	handle->dev = dev;
	handle->handler = handler;
	handle->name = "dw2w";

	error = input_register_handle(handle);
	if (error)
		goto err2;

	error = input_open_device(handle);
	if (error)
		goto err1;

	return 0;
err1:
	input_unregister_handle(handle);
err2:
	kfree(handle);
	return error;
}

static void dw2w_input_disconnect(struct input_handle *handle) {
	input_close_device(handle);
	input_unregister_handle(handle);
	kfree(handle);
}

static const struct input_device_id dw2w_ids[] = {
	{ .driver_info = 1 },
	{ },
};

static struct input_handler dw2w_input_handler = {
	.event		= dw2w_input_event,
	.connect	        = dw2w_input_connect,
	.disconnect	= dw2w_input_disconnect,
	.name		= "dw2w_inputreq",
	.id_table	= dw2w_ids,
};

#ifdef CONFIG_POWERSUSPEND
static void dw2w_early_suspend(struct power_suspend *h)
{
#if DW2W_DEBUG
	if( dw2w_switch ) {
		dw2w_log("entering dw2w_early_suspend, dw2w_switch is on");
	}
	else {
		dw2w_log("entering dw2w_early_suspend, dw2w_switch is off");
	}
#endif
	if( dw2w_switch ) {
		bool err = false;
		dw2w_prx_enabled = stk3x1x_store_psenable_exported(true, &err);
#if DW2W_DEBUG
		if( dw2w_prx_enabled ) {
			if( err ) {
				dw2w_log("dw2w_early_suspend, dw2w_prx_enabled=1, err=1");
			}
			else {
				dw2w_log("dw2w_early_suspend, dw2w_prx_enabled=1, err=0");
			}
		}
		else {
			if( err ) {
				dw2w_log("dw2w_early_suspend, dw2w_prx_enabled=0, err=1");
			}
			else {
				dw2w_log("dw2w_early_suspend, dw2w_prx_enabled=0, err=0");
			}
		}
#endif
		if(  !dw2w_prx_enabled && !err ) {
			wake_lock_timeout(&w_lock, 1*HZ);
			schedule_delayed_work(&dw2w_enabler_work, msecs_to_jiffies(DW2W_ENABLE_MS));
		}
	}
	dw2w_scr_suspended = true;
}

static void dw2w_late_resume(struct power_suspend *h)
{
	bool err = false;
	dw2w_scr_suspended = false;

#if DW2W_DEBUG
		if( dw2w_prx_enabled ) {
			dw2w_log("dw2w_late_resume, dw2w_prx_enabled is true");
		}
		else {
			dw2w_log("dw2w_late_resume, dw2w_prx_enabled is false");
		}
#endif

	cancel_delayed_work_sync(&dw2w_enabler_work);
	dw2w_enabler_counter = DW2W_ENABLE_TRIES;
	if( dw2w_prx_enabled ) {
		stk3x1x_store_psenable_exported(false, &err);
	}
	dw2w_prx_enabled = false;
}

static struct power_suspend dw2w_power_suspend_handler = {
	.suspend = dw2w_early_suspend,
	.resume = dw2w_late_resume,
};
#endif // CONFIG_POWERSUSPEND

/*
 * SYSFS stuff below here
 */
static ssize_t dw2w_doublewave2wake_show(struct device *dev, struct device_attribute *attr, char *buf)
{

	size_t count = 0;
	count += sprintf(buf, "%d\n", dw2w_switch);
	return count;
}

static ssize_t dw2w_doublewave2wake_dump(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	if (buf[0] >= '0' && buf[0] <= '2' && buf[1] == '\n')
                if (dw2w_switch != buf[0] - '0')
		        dw2w_switch = buf[0] - '0';

	return count;
}

static DEVICE_ATTR(doublewave2wake, 0644, dw2w_doublewave2wake_show, dw2w_doublewave2wake_dump);

static ssize_t dw2w_version_show(struct device *dev, struct device_attribute *attr, char *buf)
{

	size_t count = 0;
	count += sprintf(buf, "%s\n", DRIVER_VERSION);
	return count;
}

static ssize_t dw2w_version_dump(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	return count;
}

static DEVICE_ATTR(doublewave2wake_version, (S_IWUSR|S_IRUGO), dw2w_version_show, dw2w_version_dump);

#if DW2W_DEBUG
static ssize_t dw2w_debug_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	size_t count = 0;
	int dbg = 0;
	count += sprintf(buf, "%d\n", dbg);
	return count;
}

static ssize_t dw2w_debug_dump(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct debug_node *n = head;
	int dbg_record = 0;
	
	if( buf[0] >= '1' && buf[1] == '\n') {
		while( n != NULL ) {
			pr_info("dw2w_debug, record: %d is: %s\n", dbg_record, n->log_entry);
			n = n->next;
		}
	}

	return count;
}

static DEVICE_ATTR(doublewave2wake_debug, (S_IWUSR|S_IRUGO), dw2w_debug_show, dw2w_debug_dump);
#endif


/*
 * INIT / EXIT stuff below here
 */

struct kobject *android_touch_kobj;

EXPORT_SYMBOL_GPL(android_touch_kobj);

static int __init doublewave2wake_init(void)
{
	int rc = 0;
	
#if DW2W_DEBUG
	pr_info("doublewave2wake: initializing\n");
#endif

	doublewave2wake_pwrdev = input_allocate_device();
	if (!doublewave2wake_pwrdev) {
		pr_err("Can't allocate suspend autotest power button\n");
		goto err_alloc_dev;
	}

	input_set_capability(doublewave2wake_pwrdev, EV_KEY, KEY_POWER);
	doublewave2wake_pwrdev->name = "dw2w_pwrkey";
	doublewave2wake_pwrdev->phys = "dw2w_pwrkey/input0";

	rc = input_register_device(doublewave2wake_pwrdev);
	if (rc) {
		pr_err("%s: input_register_device err=%d\n", __func__, rc);
		goto err_input_dev;
	}

	dw2w_input_wq = create_workqueue("dw2wiwq");
	if (!dw2w_input_wq) {
		pr_err("%s: Failed to create dw2wiwq workqueue\n", __func__);
		return -EFAULT;
	}
	
	INIT_WORK(&dw2w_input_work, dw2w_input_callback);
	INIT_DELAYED_WORK(&dw2w_enabler_work, doublewave2wake_enabler);
	wake_lock_init(&w_lock, WAKE_LOCK_SUSPEND, "dw2w_weak_lock");
	
	rc = input_register_handler(&dw2w_input_handler);
	if (rc)
		pr_err("%s: Failed to register dt2w_input_handler\n", __func__);

#ifdef CONFIG_POWERSUSPEND
	register_power_suspend(&dw2w_power_suspend_handler);
#endif // CONFIG_POWERSUSPEND

	android_touch_kobj = kobject_create_and_add("android_touch", NULL) ;
	if (android_touch_kobj == NULL) {
		pr_warn("%s: android_touch_kobj create_and_add failed\n", __func__);
	}
	rc = sysfs_create_file(android_touch_kobj, &dev_attr_doublewave2wake.attr);
	if (rc) {
		pr_warn("%s: sysfs_create_file failed for doublewave2wake\n", __func__);
	}
	rc = sysfs_create_file(android_touch_kobj, &dev_attr_doublewave2wake_version.attr);
	if (rc) {
		pr_warn("%s: sysfs_create_file failed for doublewave2wake_version\n", __func__);
	}
#if DW2W_DEBUG
	rc = sysfs_create_file(android_touch_kobj, &dev_attr_doublewave2wake_debug.attr);
	if (rc) {
		pr_warn("%s: sysfs_create_file failed for doublewave2wake_debug\n", __func__);
	}
#endif

err_input_dev:
	input_free_device(doublewave2wake_pwrdev);
err_alloc_dev:
	pr_info(LOGTAG"%s done\n", __func__);

#if DW2W_DEBUG
	dw2w_log("doublewave2wake_init completed");
#endif

	return 0;
}

static void __exit doublewave2wake_exit(void)
{
#ifdef CONFIG_POWERSUSPEND
	unregister_power_suspend(&dw2w_power_suspend_handler);
#endif // CONFIG_POWERSUSPEND
	kobject_del(android_touch_kobj);
	input_unregister_handler(&dw2w_input_handler);
	destroy_workqueue(dw2w_input_wq);
	input_unregister_device(doublewave2wake_pwrdev);
	input_free_device(doublewave2wake_pwrdev);
	return;
}

module_init(doublewave2wake_init);
module_exit(doublewave2wake_exit);

