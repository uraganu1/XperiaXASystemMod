.class public Lcom/android/incallui/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/AccelerometerListener$OrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

.field private final mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mDialpadVisible:Z

.field private mIsHardKeyboardOpen:Z

.field private mIsPhoneOffhook:Z

.field private mIsSmartCoverClose:Z

.field private mIsVideoCallActive:Z

.field private mOrientation:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioModeProvider"    # Lcom/android/incallui/AudioModeProvider;

    .prologue
    const/16 v2, 0x20

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 52
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsSmartCoverClose:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsVideoCallActive:Z

    .line 64
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    .line 67
    sget-object v1, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 72
    :goto_0
    new-instance v0, Lcom/android/incallui/AccelerometerListener;

    invoke-direct {v0, p1, p0}, Lcom/android/incallui/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/incallui/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    .line 73
    iput-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 74
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 63
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Device does not support proximity wake lock."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private isSensorOnAllowed()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsVideoCallActive:Z

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private turnOffProximitySensor(Z)V
    .locals 2
    .param p1, "screenOnImmediately"    # Z

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const-string/jumbo v1, "Releasing proximity wake lock"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 187
    .local v0, "flags":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 181
    .end local v0    # "flags":I
    :cond_0
    :goto_1
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "flags":I
    goto :goto_0

    .line 189
    .end local v0    # "flags":I
    :cond_2
    const-string/jumbo v1, "Proximity wake lock already released"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private turnOnProximitySensor()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const-string/jumbo v0, "Acquiring proximity wake lock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string/jumbo v0, "Proximity wake lock already acquired"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized updateProximitySensorMode()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 220
    .local v0, "audioMode":I
    const/4 v3, 0x4

    if-eq v3, v0, :cond_0

    .line 221
    const/16 v3, 0x8

    if-ne v3, v0, :cond_3

    .line 220
    :cond_0
    const/4 v2, 0x1

    .line 229
    :goto_0
    iget v3, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    if-ne v3, v6, :cond_4

    const/4 v1, 0x1

    .line 230
    .local v1, "horizontal":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v3, :cond_5

    move v3, v1

    :goto_2
    or-int/2addr v2, v3

    .line 236
    .local v2, "screenOnImmediately":Z
    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v3, :cond_6

    move v3, v1

    :goto_3
    or-int/2addr v2, v3

    .line 238
    const-string/jumbo v3, "screenonImmediately: "

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p0, v3, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    .line 241
    const-string/jumbo v7, "keybrd"

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v3, :cond_7

    move v3, v5

    .line 240
    :goto_4
    invoke-virtual {v6, v7, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    .line 242
    const-string/jumbo v7, "dpad"

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v3, :cond_8

    move v3, v5

    .line 240
    :goto_5
    invoke-virtual {v6, v7, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    .line 243
    const-string/jumbo v7, "offhook"

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v3, :cond_9

    move v3, v5

    .line 240
    :goto_6
    invoke-virtual {v6, v7, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    .line 244
    const-string/jumbo v7, "hor"

    if-eqz v1, :cond_a

    move v3, v5

    .line 240
    :goto_7
    invoke-virtual {v6, v7, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v3

    .line 245
    const-string/jumbo v6, "ui"

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-eqz v7, :cond_1

    move v4, v5

    .line 240
    :cond_1
    invoke-virtual {v3, v6, v4}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v3

    .line 246
    const-string/jumbo v4, "aud"

    invoke-static {v0}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {v3, v4, v5}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_b

    .line 256
    :cond_2
    const-string/jumbo v3, "Turning off proximity sensor"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, v2}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    monitor-exit p0

    .line 214
    return-void

    .line 222
    .end local v1    # "horizontal":Z
    .end local v2    # "screenOnImmediately":Z
    :cond_3
    if-eq v6, v0, :cond_0

    .line 223
    :try_start_1
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    .restart local v2    # "screenOnImmediately":Z
    goto :goto_0

    .line 229
    .end local v2    # "screenOnImmediately":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "horizontal":Z
    goto :goto_1

    :cond_5
    move v3, v4

    .line 230
    goto :goto_2

    .restart local v2    # "screenOnImmediately":Z
    :cond_6
    move v3, v4

    .line 236
    goto :goto_3

    :cond_7
    move v3, v4

    .line 241
    goto :goto_4

    :cond_8
    move v3, v4

    .line 242
    goto :goto_5

    :cond_9
    move v3, v4

    .line 243
    goto :goto_6

    :cond_a
    move v3, v4

    .line 244
    goto :goto_7

    .line 249
    :cond_b
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->isSensorOnAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsSmartCoverClose:Z

    if-nez v3, :cond_2

    .line 251
    const-string/jumbo v3, "Turning on proximity sensor"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->turnOnProximitySensor()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .end local v0    # "audioMode":I
    .end local v1    # "horizontal":Z
    .end local v2    # "screenOnImmediately":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public isScreenReallyOff()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 127
    return-void
.end method

.method public onDialpadVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    .line 133
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 131
    return-void
.end method

.method public onInCallShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 150
    if-eqz p1, :cond_1

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 158
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 149
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 102
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, p2, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    .line 103
    :goto_0
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, p2, :cond_2

    move v1, v0

    .line 105
    :goto_1
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eq v1, v2, :cond_0

    .line 106
    iput-boolean v1, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 108
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 109
    iget-object v2, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    invoke-virtual {v2, v3}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 111
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 98
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    .local v0, "hasOngoingCall":Z
    goto :goto_0

    .line 103
    .end local v0    # "hasOngoingCall":Z
    :cond_2
    const/4 v1, 0x1

    .local v1, "isOffhook":Z
    goto :goto_1
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onVideoCallChanged(Z)V
    .locals 1
    .param p1, "isVideoCallActive"    # Z

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsVideoCallActive:Z

    if-eq p1, v0, :cond_0

    .line 289
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mIsVideoCallActive:Z

    .line 290
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 287
    :cond_0
    return-void
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 91
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 89
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V

    .line 77
    return-void
.end method
