.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeService$TriggerSensor;,
        Lcom/android/systemui/doze/DozeService$ProximityCheck;,
        Lcom/android/systemui/doze/DozeService$1;,
        Lcom/android/systemui/doze/DozeService$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mCarMode:Z

.field private final mContext:Landroid/content/Context;

.field private mDisplayStateSupported:Z

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDreaming:Z

.field private mEarliestPulseDueToLight:J

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/doze/DozeHost;

.field private final mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private mNotificationLightOn:Z

.field private mNotificationPulseTime:J

.field private mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveActive:Z

.field private mPulsing:Z

.field private mScheduleResetsRemaining:I

.field private mSensors:Landroid/hardware/SensorManager;

.field private mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

.field private final mTag:Ljava/lang/String;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSensors:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/doze/DozeService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeService$TriggerSensor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/doze/DozeService;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/doze/DozeService;I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/doze/DozeService;J)V
    .locals 1
    .param p1, "notificationTimeMs"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulse(J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishForCarMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishToSavePower()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/doze/DozeService;I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->requestPulse(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/doze/DozeService;Z)V
    .locals 0
    .param p1, "predicate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->rescheduleNotificationPulse(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->resetNotificationResets()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOff()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOn()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulseDueToLight()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "DozeService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 70
    const-string/jumbo v0, "DozeService.%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    .line 71
    iput-object p0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    .line 419
    new-instance v0, Lcom/android/systemui/doze/DozeService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$1;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 442
    new-instance v0, Lcom/android/systemui/doze/DozeService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$2;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    .line 95
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "new DozeService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDebug(Z)V

    .line 94
    return-void
.end method

.method private continuePulsing(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeService$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeService$5;-><init>(Lcom/android/systemui/doze/DozeService;)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    .line 257
    return-void
.end method

.method private finishForCarMode()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Exiting ambient mode, not allowed in car mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 295
    return-void
.end method

.method private finishToSavePower()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Exiting ambient mode due to low power battery saver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 290
    return-void
.end method

.method private listenForBroadcasts(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.systemui.doze.pulse"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.systemui.doze.notification_pulse"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    .line 308
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    goto :goto_0
.end method

.method private listenForNotifications(Z)V
    .locals 2
    .param p1, "listen"    # Z

    .prologue
    .line 324
    if-eqz p1, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->resetNotificationResets()V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isNotificationLightOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulseDueToLight()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    goto :goto_0
.end method

.method private listenForPulseSignals(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listenForPulseSignals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setListening(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setListening(Z)V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->listenForBroadcasts(Z)V

    .line 305
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->listenForNotifications(Z)V

    .line 300
    return-void
.end method

.method private notificationPulseIntent(J)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "instance"    # J

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    .line 369
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.systemui.doze.notification_pulse"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 371
    const-string/jumbo v2, "instance"

    .line 369
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 372
    const/high16 v2, 0x10000000

    .line 369
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 368
    const/4 v2, 0x0

    .line 373
    const/high16 v3, 0x8000000

    .line 368
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private requestPulse(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    .line 220
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    .line 223
    return-void

    .line 225
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 226
    .local v4, "start":J
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupPerformsProxCheck()Z

    move-result v7

    .line 228
    :goto_1
    if-eqz v7, :cond_3

    .line 230
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    .line 233
    :cond_3
    new-instance v1, Lcom/android/systemui/doze/DozeService$4;

    move-object v2, p0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/doze/DozeService$4;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService;JIZ)V

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeService$4;->check()V

    goto :goto_0

    .line 226
    :cond_4
    const/4 v7, 0x0

    .local v7, "nonBlocking":Z
    goto :goto_1
.end method

.method private rescheduleNotificationPulse(Z)V
    .locals 13
    .param p1, "predicate"    # Z

    .prologue
    .line 377
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "rescheduleNotificationPulse predicate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    const-wide/16 v10, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/doze/DozeService;->notificationPulseIntent(J)Landroid/app/PendingIntent;

    move-result-object v4

    .line 379
    .local v4, "notificationPulseIntent":Landroid/app/PendingIntent;
    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v10, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 380
    if-nez p1, :cond_2

    .line 381
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v11, "  don\'t reschedule: predicate is false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    return-void

    .line 384
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseSchedule()Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    move-result-object v5

    .line 385
    .local v5, "schedule":Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    if-nez v5, :cond_4

    .line 386
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v11, "  don\'t reschedule: schedule is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_3
    return-void

    .line 389
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 390
    .local v6, "now":J
    iget-wide v10, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    invoke-virtual {v5, v6, v7, v10, v11}, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->getNextTime(JJ)J

    move-result-wide v8

    .line 391
    .local v8, "time":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_6

    .line 392
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  don\'t reschedule: time is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_5
    return-void

    .line 395
    :cond_6
    sub-long v0, v8, v6

    .line 396
    .local v0, "delta":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gtz v10, :cond_8

    .line 397
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  don\'t reschedule: delta is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_7
    return-void

    .line 400
    :cond_8
    iget-wide v10, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    sub-long v2, v8, v10

    .line 401
    .local v2, "instance":J
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Scheduling pulse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 402
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 401
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/doze/DozeService;->notificationPulseIntent(J)Landroid/app/PendingIntent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v8, v9, v11}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 376
    return-void
.end method

.method private resetNotificationResets()V
    .locals 2

    .prologue
    .line 339
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "resetNotificationResets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseScheduleResets()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    .line 338
    return-void
.end method

.method private static triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 7
    .param p0, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 407
    if-nez p0, :cond_0

    return-object v2

    .line 408
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TriggerEvent["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    iget-wide v4, p0, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 408
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    iget-object v3, p0, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 411
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_1

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 413
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private turnDisplayOff()V
    .locals 2

    .prologue
    .line 281
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Display off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDozeScreenState(I)V

    .line 280
    return-void
.end method

.method private turnDisplayOn()V
    .locals 2

    .prologue
    .line 286
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Display on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDozeScreenState(I)V

    .line 285
    return-void

    .line 287
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateNotificationPulse(J)V
    .locals 7
    .param p1, "notificationTimeMs"    # J

    .prologue
    const/4 v5, 0x0

    .line 350
    sget-boolean v2, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotificationPulse notificationTimeMs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnNotifications()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 352
    :cond_1
    iget v2, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    if-gtz v2, :cond_3

    .line 353
    sget-boolean v2, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "No more schedule resets remaining"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_2
    return-void

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseDuration(Z)I

    move-result v2

    int-to-long v0, v2

    .line 357
    .local v0, "pulseDuration":J
    iget-wide v2, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_5

    .line 358
    sget-boolean v2, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "Recently updated, not resetting schedule"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_4
    return-void

    .line 361
    :cond_5
    iget v2, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    .line 362
    sget-boolean v2, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScheduleResetsRemaining = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_6
    iput-wide p1, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    .line 364
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeService;->rescheduleNotificationPulse(Z)V

    .line 349
    return-void
.end method

.method private updateNotificationPulseDueToLight()V
    .locals 4

    .prologue
    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 345
    .local v0, "timeMs":J
    iget-wide v2, p0, Lcom/android/systemui/doze/DozeService;->mEarliestPulseDueToLight:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 346
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulse(J)V

    .line 343
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "  mDreaming: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 103
    const-string/jumbo v0, "  mPulsing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 104
    const-string/jumbo v0, "  mWakeLock: held="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 105
    const-string/jumbo v0, "  mHost: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 106
    const-string/jumbo v0, "  mBroadcastReceiverRegistered: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 107
    const-string/jumbo v0, "  mSigMotionSensor: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 108
    const-string/jumbo v0, "  mPickupSensor:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 109
    const-string/jumbo v0, "  mDisplayStateSupported: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 110
    const-string/jumbo v0, "  mNotificationLightOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    const-string/jumbo v0, "  mPowerSaveActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 112
    const-string/jumbo v0, "  mCarMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 113
    const-string/jumbo v0, "  mNotificationPulseTime: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 114
    const-string/jumbo v0, "  mScheduleResetsRemaining: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->dump(Ljava/io/PrintWriter;)V

    .line 100
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 148
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 120
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/SystemUIApplication;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/SystemUIApplication;

    .line 125
    .local v6, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {v6, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 127
    .end local v6    # "app":Lcom/android/systemui/SystemUIApplication;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_2

    const-string/jumbo v0, "DozeService"

    const-string/jumbo v1, "No doze service host found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/doze/DozeService;->setWindowless(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSensors:Landroid/hardware/SensorManager;

    .line 132
    new-instance v0, Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 133
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnSigMotion()Z

    move-result v4

    .line 132
    const/16 v2, 0x11

    .line 134
    const/4 v5, 0x2

    move-object v1, p0

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeService$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeService;IZZI)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 135
    new-instance v0, Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnPickup()Z

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnPickup()Z

    move-result v4

    .line 135
    const/16 v2, 0x19

    .line 137
    const/4 v5, 0x3

    move-object v1, p0

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeService$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeService;IZZI)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DozeService"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    .line 143
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOff()V

    .line 119
    return-void
.end method

.method public onDreamingStarted()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 155
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 159
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    .line 163
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    .line 164
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDreamingStarted canDoze="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->canDoze()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mPowerSaveActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    const-string/jumbo v4, " mCarMode="

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    if-eqz v0, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishToSavePower()V

    .line 168
    return-void

    :cond_2
    move v0, v2

    .line 163
    goto :goto_0

    .line 170
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    if-eqz v0, :cond_4

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishForCarMode()V

    .line 172
    return-void

    .line 175
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    .line 176
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeService;->rescheduleNotificationPulse(Z)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/doze/DozeService;->mEarliestPulseDueToLight:J

    .line 178
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeService;->listenForPulseSignals(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeService$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeService$3;-><init>(Lcom/android/systemui/doze/DozeService;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->startDozing(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public onDreamingStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDreamingStopped isDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->isDozing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_1

    .line 203
    return-void

    .line 206
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    .line 207
    invoke-direct {p0, v3}, Lcom/android/systemui/doze/DozeService;->listenForPulseSignals(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    .line 198
    return-void
.end method
