.class public Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardVoiceUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;
    }
.end annotation


# instance fields
.field private mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mEcaView:Landroid/view/View;

.field private mIsBouncerVisibleToUser:Z

.field private final mIsBouncerVisibleToUserLock:Ljava/lang/Object;

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVoiceUnlockAreaView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->handleBouncerUserVisibilityChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUser:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUserLock:Ljava/lang/Object;

    .line 222
    new-instance v0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;-><init>(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 43
    return-void
.end method

.method private handleBouncerUserVisibilityChanged()V
    .locals 3

    .prologue
    .line 201
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUserLock:Ljava/lang/Object;

    monitor-enter v2

    .line 202
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUser:Z

    .line 203
    .local v0, "wasBouncerVisibleToUser":Z
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->isBouncerVisibleToUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wasBouncerVisibleToUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const-string/jumbo v2, " , mIsBouncerVisibleToUser = "

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    iget-boolean v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUser:Z

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    if-eqz v1, :cond_1

    .line 210
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUser:Z

    if-eqz v1, :cond_2

    .line 214
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUser:Z

    if-eqz v1, :cond_1

    .line 215
    const-string/jumbo v1, "handleBouncerUserVisibilityChanged() - !wasBouncerVisibleToUser && mIsBouncerVisibleToUser"

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->maybeStartBiometricUnlock()V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 201
    .end local v0    # "wasBouncerVisibleToUser":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 211
    .restart local v0    # "wasBouncerVisibleToUser":Z
    :cond_2
    const-string/jumbo v1, "handleBouncerUserVisibilityChanged() - wasBouncerVisibleToUser && !mIsBouncerVisibleToUser"

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->stop()Z

    goto :goto_0
.end method

.method private initializeBiometricUnlockView()V
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "initializeBiometricUnlockView()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 123
    sget v0, Lcom/android/keyguard/R$id;->voice_unlock_view:I

    invoke-virtual {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mVoiceUnlockAreaView:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mVoiceUnlockAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    .line 126
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mVoiceUnlockAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    .line 120
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string/jumbo v0, "Couldn\'t find biometric unlock view"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBouncerVisibleToUser()Z
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 192
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    .line 192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string/jumbo v0, "KeyguardVoiceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyguardVoiceUnlockView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method private maybeStartBiometricUnlock()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 138
    const-string/jumbo v4, "maybeStartBiometricUnlock() is called."

    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    if-eqz v4, :cond_5

    .line 140
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 142
    .local v3, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    .line 141
    if-lt v4, v6, :cond_0

    const/4 v0, 0x1

    .line 144
    .local v0, "backupIsTimedOut":Z
    :goto_0
    const/4 v4, 0x3

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 145
    invoke-static {v6, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    .line 148
    :goto_1
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUserLock:Ljava/lang/Object;

    monitor-enter v4

    .line 149
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "isBouncerVisibleToUser":Z
    monitor-exit v4

    .line 154
    if-nez v1, :cond_3

    .line 155
    if-eqz v2, :cond_2

    .line 156
    const-string/jumbo v4, "maybeStartBiometricUnlock() - isBouncerVisibleToUser is false && mediaPlaying is true, call mBiometricUnlock.stopAndShowBackup()"

    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 164
    :goto_2
    return-void

    .line 141
    .end local v0    # "backupIsTimedOut":Z
    .end local v1    # "isBouncerVisibleToUser":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "backupIsTimedOut":Z
    goto :goto_0

    .line 144
    :cond_1
    const/4 v2, 0x1

    .local v2, "mediaPlaying":Z
    goto :goto_1

    .line 148
    .end local v2    # "mediaPlaying":Z
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 160
    .restart local v1    # "isBouncerVisibleToUser":Z
    :cond_2
    const-string/jumbo v4, "maybeStartBiometricUnlock() - isBouncerVisibleToUser is false, call mBiometricUnlock.stop()"

    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->stop()Z

    goto :goto_2

    .line 174
    :cond_3
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-nez v4, :cond_4

    .line 175
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    .line 174
    if-eqz v4, :cond_4

    .line 176
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 181
    :cond_4
    const-string/jumbo v4, "maybeStartBiometricUnlock() - call stopAndShowBackup()"

    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 137
    .end local v0    # "backupIsTimedOut":Z
    .end local v1    # "isBouncerVisibleToUser":Z
    .end local v3    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_5
    :goto_3
    return-void

    .line 177
    .restart local v0    # "backupIsTimedOut":Z
    .restart local v1    # "isBouncerVisibleToUser":Z
    .restart local v3    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_6
    if-nez v0, :cond_4

    .line 178
    if-nez v2, :cond_4

    .line 179
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->start()Z

    goto :goto_3
.end method


# virtual methods
.method public needsInput()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "onDetachedFromWindow()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->stop()Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 80
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 51
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->initializeBiometricUnlockView()V

    .line 53
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 55
    sget v1, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mEcaView:Landroid/view/View;

    .line 56
    sget v1, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 48
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 90
    const-string/jumbo v0, "onPause()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->stop()Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, " "

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 95
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 89
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 100
    const-string/jumbo v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->isBouncerVisibleToUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mIsBouncerVisibleToUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 104
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->maybeStartBiometricUnlock()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 99
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 66
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    check-cast v0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-virtual {v0, p1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 63
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 70
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 305
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 294
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method
