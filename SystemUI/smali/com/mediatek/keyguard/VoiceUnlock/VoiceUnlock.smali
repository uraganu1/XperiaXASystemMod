.class public Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$1;,
        Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$2;,
        Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;
    }
.end annotation


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final TIMEOUT_AFTER_UNLOCK_FAIL:J

.field private mCancel:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideHandler:Landroid/os/Handler;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mIntensityHandler:Landroid/os/Handler;

.field private mIntensityRunnable:Ljava/lang/Runnable;

.field private mIsRegistered:Z

.field private volatile mIsRunning:Z

.field mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLaunchApp:Ljava/lang/String;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPkgName:Ljava/lang/String;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUnlockView:Landroid/view/View;

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mVoiceCommandHandler:Landroid/os/Handler;

.field private mVoiceSerConnection:Landroid/content/ServiceConnection;

.field private mVoiceUnlockView:Landroid/view/View;

.field private mWave:Landroid/widget/ImageView;

.field private mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceCommandHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "mainAction"    # I
    .param p2, "subAction"    # I
    .param p3, "extraData"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->handleVoiceCommandNotified(IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->registerVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mainAction"    # I
    .param p3, "subAction"    # I
    .param p4, "extraData"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->startRecognize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unlockView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/16 v0, 0x1388

    iput v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 78
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->TIMEOUT_AFTER_UNLOCK_FAIL:J

    .line 85
    iput-boolean v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRunning:Z

    .line 93
    iput-boolean v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z

    .line 101
    new-instance v0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$1;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$1;-><init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 113
    new-instance v0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$2;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$2;-><init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceCommandHandler:Landroid/os/Handler;

    .line 571
    new-instance v0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;-><init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    .line 173
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 175
    iput-object p2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mUnlockView:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mPkgName:Ljava/lang/String;

    .line 177
    if-eqz p2, :cond_0

    .line 178
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 181
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    .line 184
    new-instance v0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$4;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$4;-><init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$5;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$5;-><init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    .line 171
    return-void
.end method

.method private bindVoiceService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 558
    const-string/jumbo v1, "bindVoiceService() enters."

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 559
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 560
    .local v0, "mVoiceServiceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string/jumbo v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string/jumbo v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    .line 567
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 566
    const/4 v3, 0x1

    .line 563
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 568
    const-string/jumbo v1, "bindVoiceService() leaves."

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method private handleCancel()V
    .locals 2

    .prologue
    .line 309
    const-string/jumbo v0, "handleCancel()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity()V

    .line 315
    invoke-virtual {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->stop()Z

    .line 316
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 308
    return-void
.end method

.method private handleUpdateIntensity(I)V
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIntensity intensity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 291
    add-int/lit16 p1, p1, -0xc8

    .line 292
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const/16 v0, 0x100

    if-ge p1, v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 296
    :cond_2
    const/16 v0, 0x200

    if-ge p1, v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 298
    :cond_3
    const/16 v0, 0x400

    if-ge p1, v0, :cond_4

    .line 299
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 300
    :cond_4
    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method

.method private handleVoiceCommandFail(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 267
    packed-switch p1, :pswitch_data_0

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    return-void

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->voice_unlock_service_error:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->voice_unlock_password_wrong:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 273
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->voice_unlock_noisy:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 277
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    .line 280
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->voice_unlock_weak:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 281
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 9
    .param p1, "mainAction"    # I
    .param p2, "subAction"    # I
    .param p3, "extraData"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    const-string/jumbo v4, "Result"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 121
    .local v2, "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotified result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 122
    const-string/jumbo v5, " mainAction = "

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 123
    const-string/jumbo v5, " subAction = "

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 124
    if-ne v2, v7, :cond_2

    .line 125
    packed-switch p2, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    const-string/jumbo v4, "onNotified RECOGNIZE_START"

    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 132
    :pswitch_1
    const-string/jumbo v4, "Result_Info"

    .line 131
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 133
    .local v3, "verifyResult":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotified RECOGNIZE_NOTIFY verifyResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 134
    if-ne v3, v7, :cond_1

    .line 136
    const-string/jumbo v4, "Reslut_Info1"

    .line 135
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "commandId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotified RECOGNIZE_NOTIFY commandId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 140
    .end local v0    # "commandId":I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 144
    .end local v3    # "verifyResult":I
    :pswitch_2
    const-string/jumbo v4, "Result_Info"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 145
    .local v1, "intensity":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotified RECOGNIZE_INTENSITY intensity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 152
    .end local v1    # "intensity":I
    :cond_2
    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleVoiceCommandPass(I)V
    .locals 4
    .param p1, "commandId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->stop()Z

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    .line 242
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleVoiceCommandPass commandId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " appName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->hasOnDismissAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const-string/jumbo v0, "onDismissAction is null, set voice unlock dismiss action"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 251
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 252
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->pokeWakelock(I)V

    .line 223
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "voice_unlock_and_launch1"

    .line 227
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "voice_unlock_and_launch2"

    .line 231
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "voice_unlock_and_launch3"

    .line 235
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleVoiceServiceReady()V
    .locals 6

    .prologue
    .line 209
    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->pokeWakelock(I)V

    .line 211
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 212
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "durationTime":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string/jumbo v0, "VoiceUnlock"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 493
    const-string/jumbo v2, "registerVoiceCommand() is called."

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 494
    iget-boolean v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z

    if-nez v2, :cond_1

    .line 496
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 497
    .local v1, "errorid":I
    if-nez v1, :cond_0

    .line 498
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z

    .line 499
    const-string/jumbo v2, "registerVoiceCommand() - register command successfuly."

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v1    # "errorid":I
    :goto_0
    const-string/jumbo v2, "registerVoiceCommand() ends."

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 492
    return-void

    .line 501
    .restart local v1    # "errorid":I
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register voiceCommand fail errorid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 502
    const-string/jumbo v3, " with pkgName="

    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 504
    .end local v1    # "errorid":I
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z

    .line 506
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register voiceCommand RemoteException =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v2, "registerVoiceCommand() - commands have been already registered."

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportFailedBiometricUnlockAttempt()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 256
    const-string/jumbo v0, "handleReportFailedAttempt()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 263
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return-void
.end method

.method private sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mainAction"    # I
    .param p3, "subAction"    # I
    .param p4, "extraData"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-boolean v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z

    if-eqz v2, :cond_1

    .line 537
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    .line 542
    .local v1, "errorid":I
    if-eqz v1, :cond_0

    .line 543
    const-string/jumbo v2, "send voice Command fail "

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 534
    .end local v1    # "errorid":I
    :goto_0
    return-void

    .line 545
    .restart local v1    # "errorid":I
    :cond_0
    const-string/jumbo v2, "send voice Command success "

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    .end local v1    # "errorid":I
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z

    .line 549
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send voice Command RemoteException =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v2, "didn\'t register , can not send voice Command  "

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startRecognize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v0, :cond_0

    .line 590
    const-string/jumbo v0, "sendCommand RECOGNIZE_START"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mPkgName:Ljava/lang/String;

    .line 592
    const/4 v1, 0x4

    .line 593
    const/4 v2, 0x1

    .line 591
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 588
    :cond_0
    return-void
.end method

.method private unregisterVoicecommand(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 516
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v2, :cond_1

    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 519
    .local v1, "errorid":I
    if-nez v1, :cond_0

    .line 520
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v1    # "errorid":I
    :cond_0
    :goto_0
    const-string/jumbo v2, "unregisteVoiceCmd end "

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 529
    iput-object v5, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 530
    iput-boolean v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z

    .line 515
    :cond_1
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisteVoiceCmd voiceCommand RemoteException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 524
    iput-boolean v4, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRegistered:Z

    .line 525
    iput-object v5, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 354
    const-string/jumbo v0, "Unhandled message"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 355
    return v1

    .line 323
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->handleVoiceServiceReady()V

    .line 357
    :goto_0
    return v2

    .line 326
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->handleVoiceCommandPass(I)V

    goto :goto_0

    .line 329
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 332
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_0

    .line 335
    :sswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_0

    .line 338
    :sswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_0

    .line 345
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_0

    .line 348
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->handleUpdateIntensity(I)V

    goto :goto_0

    .line 351
    :pswitch_5
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->handleCancel()V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 329
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .param p1, "voiceUnlockView"    # Landroid/view/View;

    .prologue
    .line 364
    const-string/jumbo v0, "initializeView()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 365
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    .line 366
    sget v0, Lcom/android/keyguard/R$id;->voiceLockWave:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    .line 367
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->mtk_voice_wave_anim:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 368
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->mtk_voice_wave:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 370
    sget v0, Lcom/android/keyguard/R$id;->voiceLockCancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mCancel:Landroid/widget/ImageView;

    .line 371
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$6;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$6;-><init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    return-void
.end method

.method public onDismiss()Z
    .locals 5

    .prologue
    .line 457
    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 458
    const/4 v3, 0x0

    return v3

    .line 460
    :cond_0
    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 461
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDismiss cn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 462
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 463
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 464
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const/high16 v3, 0x34000000

    .line 465
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 470
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;

    invoke-direct {v4, p0, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;-><init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    const/4 v3, 0x1

    return v3

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "can\'t dismiss keyguard on launch"

    invoke-direct {p0, v3}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pokeWakelock(I)V
    .locals 3
    .param p1, "millis"    # I

    .prologue
    .line 634
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 635
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 633
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "keyguardScreenCallback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 625
    return-void
.end method

.method public start()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 395
    const-string/jumbo v0, "start()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 397
    const-string/jumbo v0, "start() called off of the UI thread"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 400
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 401
    const-string/jumbo v0, "start() called when already running"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    invoke-virtual {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->startUi()V

    .line 407
    const-string/jumbo v0, "register to service"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->bindVoiceService(Landroid/content/Context;)V

    .line 414
    :goto_0
    const-string/jumbo v0, "start() mIsRunning = true"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 415
    iput-boolean v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRunning:Z

    .line 416
    return v2

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->registerVoiceCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startUi()V
    .locals 2

    .prologue
    .line 603
    const-string/jumbo v0, "startUi()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 605
    const-string/jumbo v0, "startUi() called off of the UI thread"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    :cond_1
    return-void
.end method

.method public stop()Z
    .locals 3

    .prologue
    .line 421
    const-string/jumbo v1, "stop()"

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 423
    const-string/jumbo v1, "stop() called off of the UI thread"

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    iget-boolean v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRunning:Z

    .line 431
    .local v0, "mWasRunning":Z
    invoke-virtual {p0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->stopUi()V

    .line 433
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v1, :cond_1

    .line 434
    const-string/jumbo v1, "unregister to service"

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->unregisterVoicecommand(Ljava/lang/String;)V

    .line 438
    :cond_1
    const-string/jumbo v1, "stop() mIsRunning  = false"

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 439
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mIsRunning:Z

    .line 440
    return v0
.end method

.method public stopAndShowBackup()V
    .locals 2

    .prologue
    .line 389
    const-string/jumbo v0, "stopAndShowBackup()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 388
    return-void
.end method

.method public stopUi()V
    .locals 2

    .prologue
    .line 617
    const-string/jumbo v0, "stopUi()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    :goto_0
    return-void

    .line 621
    :cond_0
    const-string/jumbo v0, "mVoiceUnlockView is null in stopUi()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
