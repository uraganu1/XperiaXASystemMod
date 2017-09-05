.class public Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;
.super Landroid/widget/RelativeLayout;
.source "PowerOffAlarmView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$1;,
        Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$2;
    }
.end annotation


# instance fields
.field private final DELAY_TIME_SECONDS:I

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mGlowPadView:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDocked:Z

.field private mIsRegistered:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPingEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTitleView:Landroid/widget/TextView;

.field private mTotalFailedPatternAttempts:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->snooze()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->triggerPing()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x7

    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->DELAY_TIME_SECONDS:I

    .line 54
    iput v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 55
    iput v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mTotalFailedPatternAttempts:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mTitleView:Landroid/widget/TextView;

    .line 62
    iput-boolean v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mIsRegistered:Z

    .line 75
    iput-boolean v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mIsDocked:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mPingEnabled:Z

    .line 84
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$1;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mHandler:Landroid/os/Handler;

    .line 283
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$2;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method private enableEventDispatching(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 266
    :try_start_0
    const-string/jumbo v2, "window"

    .line 265
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 264
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 267
    .local v1, "wm":Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PowerOffAlarmView"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerOff()V
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, "PowerOffAlarmView"

    const-string/jumbo v1, "powerOff selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string/jumbo v0, "com.android.deskclock.DISMISS_ALARM"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->sendBR(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private powerOn()V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->enableEventDispatching(Z)V

    .line 198
    const-string/jumbo v0, "PowerOffAlarmView"

    const-string/jumbo v1, "powerOn selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string/jumbo v0, "com.android.deskclock.POWER_ON_ALARM"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->sendBR(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "android.intent.action.normal.boot"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->sendBR(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private sendBR(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string/jumbo v0, "PowerOffAlarmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send BR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method private snooze()V
    .locals 2

    .prologue
    .line 191
    const-string/jumbo v0, "PowerOffAlarmView"

    const-string/jumbo v1, "snooze selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string/jumbo v0, "com.android.deskclock.SNOOZE_ALARM"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->sendBR(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private triggerPing()V
    .locals 4

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mPingEnabled:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mGlowPadView:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->ping()V

    .line 184
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public needsInput()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 250
    const-string/jumbo v0, "PowerOffAlarmView"

    const-string/jumbo v1, "onDetachedFromWindow ...."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 135
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 136
    const-string/jumbo v3, "PowerOffAlarmView"

    const-string/jumbo v6, "onFinishInflate ... "

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->setKeepScreenOn(Z)V

    .line 138
    sget v3, Lcom/android/keyguard/R$id;->alertTitle:I

    invoke-virtual {p0, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mTitleView:Landroid/widget/TextView;

    .line 139
    sget v3, Lcom/android/keyguard/R$id;->glow_pad_view:I

    invoke-virtual {p0, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    iput-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mGlowPadView:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    .line 140
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mGlowPadView:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-virtual {v3, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 141
    invoke-virtual {p0, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->setFocusableInTouchMode(Z)V

    .line 142
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->triggerPing()V

    .line 145
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, "ifilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 147
    .local v0, "dockStatus":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v3, "android.intent.extra.DOCK_STATE"

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mIsDocked:Z

    .line 153
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "alarm_killed"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v3, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v3, "update.power.off.alarm.label"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    .line 160
    iget-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mContext:Landroid/content/Context;

    .line 159
    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 161
    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->enableEventDispatching(Z)V

    .line 134
    return-void

    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    move v3, v5

    .line 148
    goto :goto_0

    .line 160
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_1
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 302
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 312
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 348
    invoke-static {}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->isAlarmBoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    packed-switch p1, :pswitch_data_0

    .line 360
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 351
    :pswitch_0
    const-string/jumbo v0, "PowerOffAlarmView"

    const-string/jumbo v1, "onKeyDown() - KeyEvent.KEYCODE_VOLUME_UP, do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v2

    .line 354
    :pswitch_1
    const-string/jumbo v0, "PowerOffAlarmView"

    const-string/jumbo v1, "onKeyDown() - KeyEvent.KEYCODE_VOLUME_DOWN, do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return v2

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 366
    invoke-static {}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->isAlarmBoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    packed-switch p1, :pswitch_data_0

    .line 378
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 369
    :pswitch_0
    const-string/jumbo v0, "PowerOffAlarmView"

    const-string/jumbo v1, "onKeyUp() - KeyEvent.KEYCODE_VOLUME_UP, do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v2

    .line 372
    :pswitch_1
    const-string/jumbo v0, "PowerOffAlarmView"

    const-string/jumbo v1, "onKeyUp() - KeyEvent.KEYCODE_VOLUME_DOWN, do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v2

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 307
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->reset()V

    .line 240
    const-string/jumbo v0, "PowerOffAlarmView"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 213
    .local v0, "result":Z
    return v0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # I

    .prologue
    .line 166
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mGlowPadView:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-virtual {v1, p2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 167
    .local v0, "resId":I
    sget v1, Lcom/android/keyguard/R$drawable;->mtk_ic_alarm_alert_snooze:I

    if-ne v0, v1, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->snooze()V

    .line 165
    :goto_0
    return-void

    .line 169
    :cond_0
    sget v1, Lcom/android/keyguard/R$drawable;->mtk_ic_alarm_alert_dismiss_pwroff:I

    if-ne v0, v1, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->powerOff()V

    goto :goto_0

    .line 171
    :cond_1
    sget v1, Lcom/android/keyguard/R$drawable;->mtk_ic_alarm_alert_dismiss_pwron:I

    if-ne v0, v1, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->powerOn()V

    goto :goto_0

    .line 175
    :cond_2
    const-string/jumbo v1, "PowerOffAlarmView"

    const-string/jumbo v2, "Trigger detected on unhandled resource. Skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 121
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 129
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 259
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 255
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method
