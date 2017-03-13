.class public Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;
.super Ljava/lang/Object;
.source "PowerOffAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;,
        Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;,
        Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$3;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedToShowAlarmView:Z

.field private mSendRemoveIPOWinBroadcastRunnable:Ljava/lang/Runnable;

.field private mSystemReady:Z

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->handleAlarmBoot()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mSystemReady:Z

    .line 27
    iput-boolean v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mNeedToShowAlarmView:Z

    .line 60
    new-instance v1, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v1, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance v1, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$3;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$3;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mSendRemoveIPOWinBroadcastRunnable:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 39
    iput-object p3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.normal.shutdown"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "android.intent.action.normal.boot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 54
    sget-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->sInstance:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->sInstance:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->sInstance:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    return-object v0
.end method

.method private handleAlarmBoot()V
    .locals 2

    .prologue
    .line 156
    const-string/jumbo v0, "PowerOffAlarmManager"

    const-string/jumbo v1, "handleAlarmBoot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mNeedToShowAlarmView:Z

    .line 158
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->maybeShowAlarmView()V

    .line 155
    return-void
.end method

.method public static isAlarmBoot()Z
    .locals 3

    .prologue
    .line 174
    const-string/jumbo v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 177
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 176
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method private maybeShowAlarmView()V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mNeedToShowAlarmView:Z

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mNeedToShowAlarmView:Z

    .line 188
    const-string/jumbo v0, "PowerOffAlarmManager"

    const-string/jumbo v1, "maybeShowAlarmView start to showLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->setSuppressPlaySoundFlag()V

    .line 191
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->hideLocked()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->showLocked(Landroid/os/Bundle;)V

    .line 185
    :cond_1
    return-void
.end method

.method private startAlarmService()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.deskclock.START_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "in":Landroid/content/Intent;
    const-string/jumbo v1, "isAlarmBoot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const-string/jumbo v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    return-void
.end method


# virtual methods
.method public onSystemReady()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mSystemReady:Z

    .line 182
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->maybeShowAlarmView()V

    .line 180
    return-void
.end method

.method public startAlarm()V
    .locals 4

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->startAlarmService()V

    .line 164
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->mSendRemoveIPOWinBroadcastRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    return-void
.end method
