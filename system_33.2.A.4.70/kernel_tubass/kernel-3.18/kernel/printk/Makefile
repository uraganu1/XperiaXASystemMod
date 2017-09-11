ifeq ($(strip $(TARGET_BUILD_VARIANT)),user)
ccflags-y += -DDISABLE_UART_LOG
endif
ccflags-y += -I$(srctree)/drivers/misc/mediatek/include
obj-y	= printk.o
obj-$(CONFIG_A11Y_BRAILLE_CONSOLE)	+= braille.o
