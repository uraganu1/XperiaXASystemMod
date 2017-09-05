.class public Lcom/sonymobile/enterprise/otplock/OneTimePassLock;
.super Ljava/lang/Object;
.source "OneTimePassLock.java"


# static fields
.field private static final ONE_TIME_PASS_LOCK:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/ComponentName;

    .line 38
    const-string/jumbo v1, "com.sonymobile.lockscreen.otp"

    .line 39
    const-string/jumbo v2, "com.sonymobile.lockscreen.otp.OTPLockscreenActivity"

    .line 37
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->ONE_TIME_PASS_LOCK:Landroid/content/ComponentName;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    return-void
.end method

.method private getComponentName()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mContext:Landroid/content/Context;

    .line 80
    const v3, 0x1040054

    .line 79
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "otpConfig":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 82
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 85
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    if-nez v0, :cond_1

    .line 86
    sget-object v0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->ONE_TIME_PASS_LOCK:Landroid/content/ComponentName;

    .line 89
    :cond_1
    return-object v0
.end method


# virtual methods
.method public launchIfLockActive()Z
    .locals 6

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "retAppStarted":Z
    iget-object v3, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 64
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOtpLockActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    iget-object v3, p0, Lcom/sonymobile/enterprise/otplock/OneTimePassLock;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    .line 70
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 69
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 71
    const/4 v2, 0x1

    .line 74
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return v2
.end method
