.class public Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;
.super Ljava/lang/Object;
.source "VoiceWakeupManager.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;,
        Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;,
        Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$2;,
        Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$3;,
        Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;,
        Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$5;,
        Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$6;
    }
.end annotation


# static fields
.field private static delayToLightUpScreen:Z

.field private static sInstance:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;


# instance fields
.field private final ACTION_VOICE_WAKEUP_LAUNCH_INSECURECAMERA_ANYONE:Ljava/lang/String;

.field private final ACTION_VOICE_WAKEUP_LAUNCH_INSECURECAMERA_OWNER_ONLY:Ljava/lang/String;

.field private final ACTION_VOICE_WAKEUP_LAUNCH_MMS_ANYONE:Ljava/lang/String;

.field private final ACTION_VOICE_WAKEUP_LAUNCH_MMS_OWNER_ONLY:Ljava/lang/String;

.field private final ACTION_VOICE_WAKEUP_LAUNCH_SECURECAMERA_ANYONE:Ljava/lang/String;

.field private final ACTION_VOICE_WAKEUP_LAUNCH_SECURECAMERA_OWNER_ONLY:Ljava/lang/String;

.field private final COMMAND_ID_LAUNCH_INSECURECAMERA:I

.field private final COMMAND_ID_LAUNCH_MMS:I

.field private final COMMAND_ID_LAUNCH_SECURECAMERA:I

.field private final MSG_VOICE_WAKEUP_LAUNCH_INSECURECAMERA_ANYONE:I

.field private final MSG_VOICE_WAKEUP_LAUNCH_INSECURECAMERA_OWNER_ONLY:I

.field private final MSG_VOICE_WAKEUP_LAUNCH_MMS_ANYONE:I

.field private final MSG_VOICE_WAKEUP_LAUNCH_MMS_OWNER_ONLY:I

.field private final MSG_VOICE_WAKEUP_LAUNCH_SECURECAMERA_ANYONE:I

.field private final MSG_VOICE_WAKEUP_LAUNCH_SECURECAMERA_OWNER_ONLY:I

.field private isRegistered:Z

.field private limitedApps:[Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;

.field private final mBroadcastReceiverForTest:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDismissAndLaunchApp:Z

.field private mLaunchApp:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPM:Landroid/os/PowerManager;

.field private mPkgName:Ljava/lang/String;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mVoiceCommandHandler:Landroid/os/Handler;

.field private mVoiceCommandHandlerForTest:Landroid/os/Handler;

.field private mVoiceServiceConnection:Landroid/content/ServiceConnection;

.field private securityModel:Lcom/android/keyguard/KeyguardSecurityModel;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->delayToLightUpScreen:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVoiceCommandHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVoiceCommandHandlerForTest:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->delayToLightUpScreen:Z

    return p0
.end method

.method static synthetic -set1(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->isRegistered:Z

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "calledFromTest"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->handleVoiceCommandNotified(Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->lightUpScreen()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->registerVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->sInstance:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    .line 568
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->delayToLightUpScreen:Z

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    .line 57
    iput-boolean v4, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->isRegistered:Z

    .line 60
    new-array v0, v5, [Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;

    .line 61
    new-instance v1, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;

    const-string/jumbo v2, "com.android.gallery3d/com.android.camera.CameraLauncher"

    .line 62
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 61
    invoke-direct {v1, p0, v2, v3}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;-><init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 60
    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->limitedApps:[Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;

    .line 239
    new-instance v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;-><init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVoiceServiceConnection:Landroid/content/ServiceConnection;

    .line 255
    new-instance v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$2;-><init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 273
    new-instance v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$3;-><init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVoiceCommandHandler:Landroid/os/Handler;

    .line 296
    iput-boolean v4, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    .line 569
    new-instance v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;-><init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 655
    const-string/jumbo v0, "com.android.keyguard.VoiceWakeupManager.LAUNCH_SEC_CAMERA_OWNER"

    .line 654
    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->ACTION_VOICE_WAKEUP_LAUNCH_SECURECAMERA_OWNER_ONLY:Ljava/lang/String;

    .line 657
    const-string/jumbo v0, "com.android.keyguard.VoiceWakeupManager.LAUNCH_INSEC_CAMERA_OWNER"

    .line 656
    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->ACTION_VOICE_WAKEUP_LAUNCH_INSECURECAMERA_OWNER_ONLY:Ljava/lang/String;

    .line 659
    const-string/jumbo v0, "com.android.keyguard.VoiceWakeupManager.LAUNCH_SEC_CAMERA_ANYONE"

    .line 658
    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->ACTION_VOICE_WAKEUP_LAUNCH_SECURECAMERA_ANYONE:Ljava/lang/String;

    .line 661
    const-string/jumbo v0, "com.android.keyguard.VoiceWakeupManager.LAUNCH_INSEC_CAMERA_ANYONE"

    .line 660
    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->ACTION_VOICE_WAKEUP_LAUNCH_INSECURECAMERA_ANYONE:Ljava/lang/String;

    .line 663
    const-string/jumbo v0, "com.android.keyguard.VoiceWakeupManager.LAUNCH_MMS_OWNER"

    .line 662
    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->ACTION_VOICE_WAKEUP_LAUNCH_MMS_OWNER_ONLY:Ljava/lang/String;

    .line 665
    const-string/jumbo v0, "com.android.keyguard.VoiceWakeupManager.LAUNCH_MMS_ANYONE"

    .line 664
    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->ACTION_VOICE_WAKEUP_LAUNCH_MMS_ANYONE:Ljava/lang/String;

    .line 666
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->MSG_VOICE_WAKEUP_LAUNCH_SECURECAMERA_OWNER_ONLY:I

    .line 667
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->MSG_VOICE_WAKEUP_LAUNCH_INSECURECAMERA_OWNER_ONLY:I

    .line 668
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->MSG_VOICE_WAKEUP_LAUNCH_SECURECAMERA_ANYONE:I

    .line 669
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->MSG_VOICE_WAKEUP_LAUNCH_INSECURECAMERA_ANYONE:I

    .line 670
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->MSG_VOICE_WAKEUP_LAUNCH_MMS_OWNER_ONLY:I

    .line 671
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->MSG_VOICE_WAKEUP_LAUNCH_MMS_ANYONE:I

    .line 672
    iput v5, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->COMMAND_ID_LAUNCH_SECURECAMERA:I

    .line 673
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->COMMAND_ID_LAUNCH_INSECURECAMERA:I

    .line 674
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->COMMAND_ID_LAUNCH_MMS:I

    .line 687
    new-instance v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$5;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$5;-><init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mBroadcastReceiverForTest:Landroid/content/BroadcastReceiver;

    .line 718
    new-instance v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$6;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$6;-><init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVoiceCommandHandlerForTest:Landroid/os/Handler;

    .line 71
    const-string/jumbo v0, "VoiceWakeupManager"

    const-string/jumbo v1, "constructor is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method private bindVoiceService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    const-string/jumbo v1, "bindVoiceService begin  "

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v0, "mVoiceServiceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string/jumbo v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVoiceServiceConnection:Landroid/content/ServiceConnection;

    .line 236
    const/4 v2, 0x1

    .line 235
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 229
    return-void
.end method

.method private checkIfVowSupport(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "support":Z
    if-eqz p1, :cond_1

    .line 88
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUtils;->isVoiceWakeupSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "MTK_VOW_SUPPORT is enabled in this load."

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 92
    :cond_0
    const-string/jumbo v1, "MTK_VOW_SUPPORT is NOT enabled in this load."

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    const-string/jumbo v1, "checkIfVowSupport() - context is still null, bypass the check..."

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dismissKeyguardOnNextActivity()V
    .locals 3

    .prologue
    .line 497
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceWakeupManager"

    const-string/jumbo v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doLaunchAppAndDismissKeyguard(IZZ)V
    .locals 11
    .param p1, "commandId"    # I
    .param p2, "isUserDependentMode"    # Z
    .param p3, "calledFromTest"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 359
    iput-boolean v9, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    .line 361
    invoke-direct {p0, p1, p3}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->getLaunchAppNameFromSettings(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLaunchApp:Ljava/lang/String;

    .line 362
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLaunchApp:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 367
    const-string/jumbo v6, "VoiceWakeupManager"

    const-string/jumbo v7, "AppName does not exist in Setting DB, give it a default value."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string/jumbo v6, "com.android.contacts/com.android.contacts.activities.PeopleActivity"

    iput-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLaunchApp:Ljava/lang/String;

    .line 372
    :cond_0
    invoke-static {v8, v8, v8}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getInstance(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->isAntiTheftLocked()Z

    move-result v2

    .line 374
    .local v2, "isAntitheftMode":Z
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v6}, Lcom/android/keyguard/ViewMediatorCallback;->isKeyguardExternallyEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    .line 375
    .local v4, "isKeyguardExternallyDisabled":Z
    :goto_0
    if-nez v2, :cond_1

    if-eqz v4, :cond_3

    .line 376
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Give up launching since isAntitheftMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 377
    const-string/jumbo v7, " isKeyguardExternallyDisabled = "

    .line 376
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 378
    return-void

    .line 374
    .end local v4    # "isKeyguardExternallyDisabled":Z
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "isKeyguardExternallyDisabled":Z
    goto :goto_0

    .line 381
    :cond_3
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 382
    const-string/jumbo v6, "Give up launching since screen is on but we do not allow this case."

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 383
    return-void

    .line 386
    :cond_4
    iput-boolean v10, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    .line 390
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 391
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    .line 390
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 391
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 390
    :cond_5
    const/4 v3, 0x0

    .line 393
    .local v3, "isInLaterLocked":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 394
    const-string/jumbo v6, "doLaunchAppAndDismissKeyguard() : call showLocked() due to keyguard isin the later locked status"

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 396
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/ViewMediatorCallback;->showLocked(Landroid/os/Bundle;)V

    .line 405
    :cond_6
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v6}, Lcom/android/keyguard/ViewMediatorCallback;->isShowing()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 417
    :cond_7
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 418
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_a

    .line 419
    const-string/jumbo v6, "doLaunchAppAndDismissKeyguard() : Keyguard is DISABLED, launch full-access mode APP and dismiss keyguard."

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 422
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLaunchApp:Ljava/lang/String;

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 423
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 424
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 425
    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->launchApp(Landroid/content/Intent;)V

    .line 428
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->lightUpScreen()V

    .line 430
    iput-boolean v9, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    .line 358
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 392
    .end local v3    # "isInLaterLocked":Z
    :cond_8
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v6}, Lcom/android/keyguard/ViewMediatorCallback;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v3, 0x0

    .restart local v3    # "isInLaterLocked":Z
    goto :goto_1

    .end local v3    # "isInLaterLocked":Z
    :cond_9
    const/4 v3, 0x1

    .restart local v3    # "isInLaterLocked":Z
    goto :goto_1

    .line 432
    :cond_a
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 433
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_b

    .line 434
    const-string/jumbo v6, "doLaunchAppAndDismissKeyguard() : Keyguard is SLIDE mode, launch full-access mode APP and dismiss keyguard."

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 438
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v6, v10}, Lcom/android/keyguard/ViewMediatorCallback;->dismiss(Z)V

    goto :goto_2

    .line 445
    :cond_b
    const-string/jumbo v6, "doLaunchAppAndDismissKeyguard() : Keyguard is secured."

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 447
    if-eqz p2, :cond_d

    .line 448
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->isSimPinPukMeModeNow()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 449
    const-string/jumbo v6, "doLaunchAppAndDismissKeyguard() : isUserDependentMode = TRUE but SIM PIN/PUK/ME screen shows, light up to request the password."

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->lightUpScreen()V

    goto :goto_2

    .line 455
    :cond_c
    const-string/jumbo v6, "doLaunchAppAndDismissKeyguard() : isUserDependentMode = TRUE, launch full-access mode APP and dismiss keyguard."

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 459
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v6, v10}, Lcom/android/keyguard/ViewMediatorCallback;->dismiss(Z)V

    goto :goto_2

    .line 467
    :cond_d
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLaunchApp:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->getLimtiedModeActionNameOfApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "limitedModeName":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 469
    const-string/jumbo v6, "doLaunchAppAndDismissKeyguard() : isUserDependentMode = FALSE & APP has limited mode, launch limited-access mode APP"

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 471
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 474
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    const/high16 v7, 0x800000

    .line 474
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 476
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->launchApp(Landroid/content/Intent;)V

    .line 479
    sput-boolean v10, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->delayToLightUpScreen:Z

    goto :goto_2

    .line 482
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_e
    const-string/jumbo v6, "doLaunchAppAndDismissKeyguard() : isUserDependentMode = FALSE & APP does not have limited mode, light up to request the password"

    invoke-direct {p0, v6}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->lightUpScreen()V

    .line 489
    iget-object v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v6, v9}, Lcom/android/keyguard/ViewMediatorCallback;->dismiss(Z)V

    goto/16 :goto_2
.end method

.method public static getInstance()Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;
    .locals 2

    .prologue
    .line 75
    const-string/jumbo v0, "VoiceWakeupManager"

    const-string/jumbo v1, "getInstance(...) is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->sInstance:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "VoiceWakeupManager"

    const-string/jumbo v1, "getInstance(...) create one."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-direct {v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->sInstance:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    .line 80
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->sInstance:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    return-object v0
.end method

.method private getLaunchAppNameFromSettings(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "commandId"    # I
    .param p2, "calledFromTest"    # Z

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "appName":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 333
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 334
    const-string/jumbo v0, "com.android.gallery3d/com.android.camera.SecureCameraActivity"

    .line 352
    .end local v0    # "appName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "VoiceWakeupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLaunchAppNameFromSettings() - appName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v0

    .line 336
    .restart local v0    # "appName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 337
    const-string/jumbo v0, "com.android.gallery3d/com.android.camera.CameraLauncher"

    .local v0, "appName":Ljava/lang/String;
    goto :goto_0

    .line 339
    .local v0, "appName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 341
    const-string/jumbo v0, "com.android.dialer/.DialtactsActivity"

    .local v0, "appName":Ljava/lang/String;
    goto :goto_0

    .line 344
    .local v0, "appName":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLaunchAppNameFromSettings() : wrong commandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 349
    sget-object v2, Landroid/provider/Settings$System;->BASE_VOICE_WAKEUP_COMMAND_KEY:Ljava/lang/String;

    .line 348
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getVoiceCommandValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "appName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getLimtiedModeActionNameOfApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 319
    .local v0, "actionName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->limitedApps:[Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->limitedApps:[Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;->normalModeAppName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->limitedApps:[Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$LimitedModeApp;->limtedModeAppName:Ljava/lang/String;

    .line 326
    .end local v0    # "actionName":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 319
    .restart local v0    # "actionName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleVoiceCommandNotified(Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "calledFromTest"    # Z

    .prologue
    .line 280
    const-string/jumbo v2, "Result_Info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, "commandId":I
    const-string/jumbo v2, "Reslut_Info1"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 282
    const/4 v3, 0x2

    .line 281
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 284
    .local v1, "isUserDependentMode":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data.getInt(VoiceCommandListener.ACTION_EXTRA_RESULT_INFO1) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    const-string/jumbo v3, "Reslut_Info1"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleVoiceCommandNotified() commandId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isUserDependentMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, v0, v1, p2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->doLaunchAppAndDismissKeyguard(IZZ)V

    .line 279
    return-void

    .line 281
    .end local v1    # "isUserDependentMode":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isUserDependentMode":Z
    goto :goto_0
.end method

.method private isSimPinPukMeModeNow()Z
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe2:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 561
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe3:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe4:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method private launchApp(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 504
    const-string/jumbo v0, "launchApp() enters."

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->dismissKeyguardOnNextActivity()V

    .line 509
    const/high16 v0, 0x34000000

    .line 508
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$7;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$7;-><init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    return-void
.end method

.method private lightUpScreen()V
    .locals 4

    .prologue
    .line 606
    const-string/jumbo v0, "lightUpScreen() is called."

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 608
    iget-boolean v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    const-string/jumbo v0, "lightUpScreen(), call PowerManager.wakeUp()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 647
    const-string/jumbo v0, "VoiceWakeupManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method private registerBroadcastReceiverForTest()V
    .locals 3

    .prologue
    .line 677
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 678
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.keyguard.VoiceWakeupManager.LAUNCH_SEC_CAMERA_OWNER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string/jumbo v1, "com.android.keyguard.VoiceWakeupManager.LAUNCH_INSEC_CAMERA_OWNER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string/jumbo v1, "com.android.keyguard.VoiceWakeupManager.LAUNCH_SEC_CAMERA_ANYONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string/jumbo v1, "com.android.keyguard.VoiceWakeupManager.LAUNCH_INSEC_CAMERA_ANYONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string/jumbo v1, "com.android.keyguard.VoiceWakeupManager.LAUNCH_MMS_OWNER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string/jumbo v1, "com.android.keyguard.VoiceWakeupManager.LAUNCH_MMS_ANYONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mBroadcastReceiverForTest:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 676
    return-void
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 184
    iget-boolean v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->isRegistered:Z

    if-nez v2, :cond_1

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 187
    .local v1, "errorid":I
    if-nez v1, :cond_0

    .line 188
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->isRegistered:Z

    .line 190
    const-string/jumbo v2, "register voiceCommand successfuly, now send VOICE_WAKEUP_START"

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPkgName:Ljava/lang/String;

    .line 193
    const/4 v3, 0x6

    .line 194
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 192
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "errorid":I
    :goto_0
    const-string/jumbo v2, "register voiceCommand end "

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 183
    return-void

    .line 196
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

    .line 197
    const-string/jumbo v3, " with pkgName="

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 199
    .end local v1    # "errorid":I
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v6, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->isRegistered:Z

    .line 201
    iput-object v7, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 202
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

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v2, "register voiceCommand success "

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mainAction"    # I
    .param p3, "subAction"    # I
    .param p4, "extraData"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-boolean v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->isRegistered:Z

    if-eqz v2, :cond_1

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    .line 168
    .local v1, "errorid":I
    if-eqz v1, :cond_0

    .line 169
    const-string/jumbo v2, "send voice Command fail "

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 163
    .end local v1    # "errorid":I
    :goto_0
    return-void

    .line 171
    .restart local v1    # "errorid":I
    :cond_0
    const-string/jumbo v2, "send voice Command success "

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v1    # "errorid":I
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v3, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->isRegistered:Z

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 176
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

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v2, "didn\'t register , can not send voice Command  "

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .prologue
    .line 102
    const-string/jumbo v0, "init() is called."

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    .line 106
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->checkIfVowSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    iput-object p2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 112
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 113
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPkgName:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mHandler:Landroid/os/Handler;

    .line 116
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPM:Landroid/os/PowerManager;

    .line 118
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 120
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->registerBroadcastReceiverForTest()V

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->start()V

    .line 101
    return-void
.end method

.method public isDismissAndLaunchApp()Z
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isDismissAndLaunchApp() mIsDismissAndLaunchApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    return v0
.end method

.method public notifyKeyguardIsGone()V
    .locals 1

    .prologue
    .line 616
    const-string/jumbo v0, "notifyKeyguardGoneAndLightUpScreen() enters"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->checkIfVowSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    return-void

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->lightUpScreen()V

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    .line 615
    return-void
.end method

.method public notifySecurityModeChange(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2
    .param p1, "currentMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .param p2, "nextMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->checkIfVowSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    return-void

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySecurityModeChange curr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", next = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySecurityModeChange original mIsDismissAndLaunchApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    iget-boolean v1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    if-eqz v0, :cond_2

    .line 637
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AlarmBoot:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p2, v0, :cond_1

    .line 638
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AntiTheft:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p2, v0, :cond_2

    .line 639
    :cond_1
    const-string/jumbo v0, "notifySecurityModeChange(): mIsDismissAndLaunchApp = false"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mIsDismissAndLaunchApp:Z

    .line 627
    :cond_2
    return-void
.end method

.method public onDismiss()Z
    .locals 3

    .prologue
    .line 530
    const-string/jumbo v2, "onDismiss() is called."

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->checkIfVowSupport(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    const/4 v2, 0x0

    return v2

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mLaunchApp:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 537
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 538
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 539
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->launchApp(Landroid/content/Intent;)V

    .line 542
    const/4 v2, 0x1

    return v2
.end method

.method public start()V
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "start()"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->checkIfVowSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    const-string/jumbo v0, "register to service"

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->log(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->bindVoiceService(Landroid/content/Context;)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->registerVoiceCommand(Ljava/lang/String;)V

    goto :goto_0
.end method
