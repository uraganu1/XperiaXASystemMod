.class public Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;
.super Ljava/lang/Object;
.source "AntiTheftManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;,
        Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$2;,
        Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$3;
    }
.end annotation


# static fields
.field private static synthetic -com_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues:[I

.field private static mAntiTheftAutoTestNotShowUI:Z

.field private static mAntiTheftLockEnabled:I

.field private static mContext:Landroid/content/Context;

.field private static mDismissable:I

.field private static mIPplManager:Lcom/mediatek/common/ppl/IPplManager;

.field private static mKeypadNeeded:I

.field private static sInstance:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;


# instance fields
.field private final MSG_ARG_LOCK:I

.field private final MSG_ARG_UNLOCK:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field protected mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPplServiceConnection:Landroid/content/ServiceConnection;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method private static synthetic -getcom_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-com_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-com_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AlarmBoot:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AntiTheft:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe2:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe3:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe4:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Voice:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-com_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -set0(Lcom/mediatek/common/ppl/IPplManager;)Lcom/mediatek/common/ppl/IPplManager;
    .locals 0

    sput-object p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mIPplManager:Lcom/mediatek/common/ppl/IPplManager;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;IZ)V
    .locals 0
    .param p1, "antiTheftLockType"    # I
    .param p2, "lock"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->handleAntiTheftViewUpdate(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;II)V
    .locals 0
    .param p1, "antiTheftLockType"    # I
    .param p2, "lock"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->sendAntiTheftUpdateMsg(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftLockEnabled:I

    .line 63
    sput v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mKeypadNeeded:I

    .line 66
    sput v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mDismissable:I

    .line 69
    sput-boolean v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftAutoTestNotShowUI:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput v5, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->MSG_ARG_LOCK:I

    .line 338
    iput v4, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->MSG_ARG_UNLOCK:I

    .line 339
    new-instance v1, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;-><init>(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    new-instance v1, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$2;-><init>(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mHandler:Landroid/os/Handler;

    .line 496
    new-instance v1, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$3;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$3;-><init>(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mPplServiceConnection:Landroid/content/ServiceConnection;

    .line 78
    const-string/jumbo v1, "AntiTheftManager"

    const-string/jumbo v2, "AntiTheftManager() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput-object p1, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 82
    iput-object p3, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 83
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityModel;

    sget-object v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {v4, v5}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setKeypadNeeded(IZ)V

    .line 89
    invoke-static {v4, v5}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setDismissable(IZ)V

    .line 90
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isPrivacyProtectionLockSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string/jumbo v1, "AntiTheftManager"

    const-string/jumbo v2, "MTK_PRIVACY_PROTECTION_LOCK is enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {v6, v4}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setKeypadNeeded(IZ)V

    .line 97
    invoke-static {v6, v4}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setDismissable(IZ)V

    .line 98
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    :cond_0
    const-string/jumbo v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method private bindPplService()V
    .locals 5

    .prologue
    .line 515
    const-string/jumbo v2, "AntiTheftManager"

    const-string/jumbo v3, "binPplService() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    sget-object v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mIPplManager:Lcom/mediatek/common/ppl/IPplManager;

    if-nez v2, :cond_0

    .line 519
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.ppl.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.mediatek.ppl"

    const-string/jumbo v3, "com.mediatek.ppl.PplService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    sget-object v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mPplServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "AntiTheftManager"

    const-string/jumbo v3, "bindPplService() - error in bind ppl service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string/jumbo v2, "AntiTheftManager"

    const-string/jumbo v3, "bindPplService() -- the ppl service is already bound."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doDmLockCheck()V
    .locals 7

    .prologue
    .line 457
    :try_start_0
    const-string/jumbo v4, "DmAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 458
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 459
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 460
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v3

    .line 461
    .local v3, "flag":Z
    const-string/jumbo v4, "AntiTheftManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dmCheckLocked, the lock flag is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v4, 0x1

    invoke-direct {p0, v4, v3}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setAntiTheftLocked(IZ)V

    .line 454
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "flag":Z
    :goto_0
    return-void

    .line 464
    .restart local v1    # "binder":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v4, "AntiTheftManager"

    const-string/jumbo v5, "dmCheckLocked, DmAgent doesn\'t exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    .end local v1    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "AntiTheftManager"

    const-string/jumbo v5, "doDmLockCheck() - error in get DMAgent service."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doPplCheckPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pw"    # Ljava/lang/String;

    .prologue
    .line 532
    const/4 v1, 0x0

    .line 534
    .local v1, "unlockSuccess":Z
    sget-object v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mIPplManager:Lcom/mediatek/common/ppl/IPplManager;

    if-eqz v2, :cond_1

    .line 536
    :try_start_0
    sget-object v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mIPplManager:Lcom/mediatek/common/ppl/IPplManager;

    invoke-interface {v2, p1}, Lcom/mediatek/common/ppl/IPplManager;->unlock(Ljava/lang/String;)Z

    move-result v1

    .line 537
    .local v1, "unlockSuccess":Z
    const-string/jumbo v2, "AntiTheftManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doPplCheckPassword, unlockSuccess is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-eqz v1, :cond_0

    .line 541
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setAntiTheftLocked(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1    # "unlockSuccess":Z
    :cond_0
    :goto_0
    return v1

    .line 550
    .local v1, "unlockSuccess":Z
    :cond_1
    const-string/jumbo v2, "AntiTheftManager"

    const-string/jumbo v3, "doPplCheckPassword() mIPplManager == null !!??"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    .end local v1    # "unlockSuccess":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private doPplLockCheck()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 474
    :try_start_0
    const-string/jumbo v4, "PPLAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 475
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 476
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ppl/IPplAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ppl/IPplAgent;

    move-result-object v0

    .line 477
    .local v0, "agent":Lcom/mediatek/internal/telephony/ppl/IPplAgent;
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ppl/IPplAgent;->needLock()I

    move-result v4

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 478
    .local v3, "flag":Z
    :goto_0
    const-string/jumbo v4, "AntiTheftManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PplCheckLocked, the lock flag is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eqz v3, :cond_0

    .line 480
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setAntiTheftLocked(IZ)V

    .line 472
    .end local v0    # "agent":Lcom/mediatek/internal/telephony/ppl/IPplAgent;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "flag":Z
    :cond_0
    :goto_1
    return-void

    .line 477
    .restart local v0    # "agent":Lcom/mediatek/internal/telephony/ppl/IPplAgent;
    .restart local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "flag":Z
    goto :goto_0

    .line 483
    .end local v0    # "agent":Lcom/mediatek/internal/telephony/ppl/IPplAgent;
    .end local v3    # "flag":Z
    :cond_2
    const-string/jumbo v4, "AntiTheftManager"

    const-string/jumbo v5, "PplCheckLocked, PPLAgent doesn\'t exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 485
    .end local v1    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 486
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "AntiTheftManager"

    const-string/jumbo v5, "doPplLockCheck() - error in get PPLAgent service."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getAntiTheftLayoutId()I
    .locals 1

    .prologue
    .line 282
    sget v0, Lcom/android/keyguard/R$layout;->mtk_keyguard_anti_theft_lock_view:I

    return v0
.end method

.method public static getAntiTheftMessageAreaText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "seperator"    # Ljava/lang/CharSequence;

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v0, "b":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 301
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AntiTheft Noneed Print Text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getPrompt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 302
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getAntiTheftModeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 122
    packed-switch p0, :pswitch_data_0

    .line 131
    const-string/jumbo v0, "AntiTheftMode.None"

    return-object v0

    .line 124
    :pswitch_0
    const-string/jumbo v0, "AntiTheftMode.None"

    return-object v0

    .line 126
    :pswitch_1
    const-string/jumbo v0, "AntiTheftMode.DmLock"

    return-object v0

    .line 128
    :pswitch_2
    const-string/jumbo v0, "AntiTheftMode.PplLock"

    return-object v0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getAntiTheftViewId()I
    .locals 1

    .prologue
    .line 278
    sget v0, Lcom/android/keyguard/R$id;->keyguard_antitheft_lock_view:I

    return v0
.end method

.method public static getCurrentAntiTheftMode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, "shift":I
    const-string/jumbo v2, "AntiTheftManager"

    const-string/jumbo v3, "getCurrentAntiTheftMode() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->isAntiTheftLocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    return v4

    .line 149
    .local v0, "mode":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 144
    .end local v0    # "mode":I
    :cond_1
    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 145
    sget v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftLockEnabled:I

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int v0, v2, v3

    .line 146
    .restart local v0    # "mode":I
    if-eqz v0, :cond_0

    .line 147
    return v0

    .line 152
    .end local v0    # "mode":I
    :cond_2
    return v4
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 113
    const-string/jumbo v0, "AntiTheftManager"

    const-string/jumbo v1, "getInstance(...) is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->sInstance:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    if-nez v0, :cond_0

    .line 115
    const-string/jumbo v0, "AntiTheftManager"

    const-string/jumbo v1, "getInstance(...) create one."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    sput-object v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->sInstance:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    .line 118
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->sInstance:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    return-object v0
.end method

.method public static getPrompt()I
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getCurrentAntiTheftMode()I

    move-result v0

    .line 288
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 289
    sget v1, Lcom/android/keyguard/R$string;->dm_prompt:I

    return v1

    .line 292
    :cond_0
    sget v1, Lcom/android/keyguard/R$string;->ppl_prompt:I

    return v1
.end method

.method private handleAntiTheftViewUpdate(IZ)V
    .locals 6
    .param p1, "antiTheftLockType"    # I
    .param p2, "lock"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 392
    invoke-static {p1, p2}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->isNeedUpdate(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setAntiTheftLocked(IZ)V

    .line 395
    if-eqz p2, :cond_5

    .line 396
    const-string/jumbo v2, "AntiTheftManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAntiTheftViewUpdate() - locked, !isShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 397
    iget-object v4, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/keyguard/ViewMediatorCallback;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    .line 396
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    const-string/jumbo v3, " isKeyguardDoneOnGoing = "

    .line 396
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    iget-object v3, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->isKeyguardDoneOnGoing()Z

    move-result v3

    .line 396
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->isKeyguardDoneOnGoing()Z

    move-result v1

    .line 402
    if-eqz v1, :cond_3

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v5}, Lcom/android/keyguard/ViewMediatorCallback;->showLocked(Landroid/os/Bundle;)V

    .line 430
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->adjustStatusBarLocked()V

    .line 391
    :cond_2
    return-void

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 407
    invoke-static {v1}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->isAntiTheftPriorToSecMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    .line 409
    .local v0, "needToRest":Z
    if-eqz v0, :cond_4

    .line 410
    const-string/jumbo v1, "AntiTheftManager"

    const-string/jumbo v2, "handleAntiTheftViewUpdate() - call resetStateLocked()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->resetStateLocked()V

    goto :goto_0

    .line 416
    :cond_4
    const-string/jumbo v1, "AntiTheftManager"

    const-string/jumbo v2, "No need to reset the security view to show AntiTheft,since current view should show above antitheft view."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    .end local v0    # "needToRest":Z
    :cond_5
    iget-object v2, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v2, :cond_6

    .line 424
    iget-object v2, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 426
    :cond_6
    const-string/jumbo v1, "AntiTheftManager"

    const-string/jumbo v2, "mKeyguardSecurityCallback is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAntiTheftLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    sget v1, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftLockEnabled:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAntiTheftPriorToSecMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 4
    .param p0, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 245
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getCurrentAntiTheftMode()I

    move-result v0

    .line 246
    .local v0, "currentAntiTheftType":I
    const/4 v1, 0x0

    .line 253
    .local v1, "isAntiTheftHasHigherPriority":Z
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->isAntiTheftLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 256
    const/4 v1, 0x1

    .line 273
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 259
    :cond_1
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-getcom_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 267
    const/4 v1, 0x1

    .line 268
    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isDismissable()Z
    .locals 3

    .prologue
    .line 209
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getCurrentAntiTheftMode()I

    move-result v1

    .line 210
    .local v1, "mode":I
    const/4 v0, 0x0

    .line 212
    .local v0, "dismissAble":Z
    if-nez v1, :cond_1

    .line 213
    const/4 v0, 0x1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    sget v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mDismissable:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 217
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isKeypadNeeded()Z
    .locals 5

    .prologue
    .line 156
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getCurrentAntiTheftMode()I

    move-result v0

    .line 157
    .local v0, "mode":I
    const-string/jumbo v2, "AntiTheftManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentAntiTheftMode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getAntiTheftModeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mKeypadNeeded:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 160
    .local v1, "needKeypad":Z
    :goto_0
    const-string/jumbo v2, "AntiTheftManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKeypadNeeded() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v1

    .line 159
    .end local v1    # "needKeypad":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "needKeypad":Z
    goto :goto_0
.end method

.method private static isNeedUpdate(IZ)Z
    .locals 4
    .param p0, "lockMode"    # I
    .param p1, "enable"    # Z

    .prologue
    .line 182
    const/4 v0, 0x1

    .line 184
    .local v0, "needToUpdate":Z
    if-eqz p1, :cond_1

    sget v1, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftLockEnabled:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 185
    const-string/jumbo v1, "AntiTheftManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNeedUpdate() - lockMode( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    const-string/jumbo v3, " ) is already enabled, no need update"

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    if-nez p1, :cond_0

    sget v1, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftLockEnabled:I

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    .line 190
    const-string/jumbo v1, "AntiTheftManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNeedUpdate() - lockMode( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    const-string/jumbo v3, " ) is already disabled, no need update"

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendAntiTheftUpdateMsg(II)V
    .locals 3
    .param p1, "antiTheftLockType"    # I
    .param p2, "lock"    # I

    .prologue
    .line 374
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 375
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 376
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 377
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void
.end method

.method private setAntiTheftLocked(IZ)V
    .locals 2
    .param p1, "lockMode"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 199
    if-eqz p2, :cond_0

    .line 200
    sget v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftLockEnabled:I

    or-int/2addr v0, p1

    sput v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftLockEnabled:I

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->updateAntiTheftLocked()V

    .line 198
    return-void

    .line 203
    :cond_0
    sget v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftLockEnabled:I

    not-int v1, p1

    and-int/2addr v0, v1

    sput v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mAntiTheftLockEnabled:I

    goto :goto_0
.end method

.method public static setDismissable(IZ)V
    .locals 3
    .param p0, "lockMode"    # I
    .param p1, "canBeDismissed"    # Z

    .prologue
    .line 229
    const-string/jumbo v0, "AntiTheftManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDismissable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mDismissable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " before"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-eqz p1, :cond_0

    .line 231
    sget v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mDismissable:I

    or-int/2addr v0, p0

    sput v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mDismissable:I

    .line 237
    :goto_0
    const-string/jumbo v0, "AntiTheftManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDismissable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mDismissable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 234
    :cond_0
    sget v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mDismissable:I

    not-int v1, p0

    and-int/2addr v0, v1

    sput v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mDismissable:I

    goto :goto_0
.end method

.method public static setKeypadNeeded(IZ)V
    .locals 2
    .param p0, "lockMode"    # I
    .param p1, "need"    # Z

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    sget v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mKeypadNeeded:I

    or-int/2addr v0, p0

    sput v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mKeypadNeeded:I

    .line 165
    :goto_0
    return-void

    .line 170
    :cond_0
    sget v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mKeypadNeeded:I

    not-int v1, p0

    and-int/2addr v0, v1

    sput v0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mKeypadNeeded:I

    goto :goto_0
.end method


# virtual methods
.method public adjustStatusBarLocked()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->adjustStatusBarLocked()V

    .line 556
    return-void
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pw"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "unlockSuccess":Z
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getCurrentAntiTheftMode()I

    move-result v0

    .line 322
    .local v0, "mode":I
    const-string/jumbo v2, "AntiTheftManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkPassword, mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getAntiTheftModeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    packed-switch v0, :pswitch_data_0

    .line 332
    .end local v1    # "unlockSuccess":Z
    :goto_0
    const-string/jumbo v2, "AntiTheftManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkPassword, unlockSuccess is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v1

    .line 326
    .restart local v1    # "unlockSuccess":Z
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->doPplCheckPassword(Ljava/lang/String;)Z

    move-result v1

    .local v1, "unlockSuccess":Z
    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public doAntiTheftLockCheck()V
    .locals 3

    .prologue
    .line 443
    const-string/jumbo v1, "ro.crypto.state"

    const-string/jumbo v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "unencrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->doPplLockCheck()V

    .line 446
    invoke-direct {p0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->doDmLockCheck()V

    .line 442
    :cond_0
    return-void
.end method

.method public doBindAntiThftLockServices()V
    .locals 2

    .prologue
    .line 435
    const-string/jumbo v0, "AntiTheftManager"

    const-string/jumbo v1, "doBindAntiThftLockServices() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isPrivacyProtectionLockSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->bindPplService()V

    .line 434
    :cond_0
    return-void
.end method

.method public setSecurityViewCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 566
    const-string/jumbo v0, "AntiTheftManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecurityViewCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iput-object p1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 565
    return-void
.end method
