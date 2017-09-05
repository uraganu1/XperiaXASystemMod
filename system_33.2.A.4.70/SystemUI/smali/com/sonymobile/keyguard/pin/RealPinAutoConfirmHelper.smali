.class public Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;
.super Ljava/lang/Object;
.source "RealPinAutoConfirmHelper.java"

# interfaces
.implements Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;
.implements Lcom/sonymobile/keyguard/pin/PasswordEntryListener;
.implements Lcom/sonymobile/keyguard/pin/PinUnlockListener;


# instance fields
.field private final mConfirmButtonView:Landroid/view/View;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mFeatureEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

.field private final mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

.field private final mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/os/Vibrator;Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/SecurityMessageDisplay;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "confirmButtonView"    # Landroid/view/View;
    .param p2, "pinAutoUnlockSettingsSecureWrapper"    # Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;
    .param p3, "keyguardUpdateMonitor"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "vibrator"    # Landroid/os/Vibrator;
    .param p6, "passwordTextView"    # Lcom/android/keyguard/PasswordTextView;
    .param p7, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p8, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p9, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    .line 143
    iput-object p2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    .line 144
    iput-object p3, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 145
    iput-object p4, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mHandler:Landroid/os/Handler;

    .line 146
    iput-object p5, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mVibrator:Landroid/os/Vibrator;

    .line 147
    iput-object p6, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 148
    iput-object p7, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 149
    iput-object p8, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 150
    iput-object p9, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    .line 141
    return-void
.end method

.method private isAutoUnlockEnabled()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;->isAutoUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnabledForPinLength(I)Z
    .locals 1
    .param p1, "pinLength"    # I

    .prologue
    .line 175
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableAutoUnlockIfAppropriate()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 184
    .local v0, "failedAttempts":I
    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 186
    iget-object v3, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 185
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->isRecoveryPasswordSaved(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    .line 182
    return-void

    .line 185
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPasswordLengthIncreased(I)V
    .locals 4
    .param p1, "newLength"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isEnabledForPinLength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;->isAutoUnlockEnabled()Z

    move-result v0

    .line 194
    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;-><init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)V

    .line 205
    const-wide/16 v2, 0x64

    .line 199
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_0
    return-void
.end method

.method public onUnlockFailed()V
    .locals 6

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isAutoUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2}, Lcom/android/keyguard/SecurityMessageDisplay;->getTimeout()J

    move-result-wide v0

    .line 230
    .local v0, "previousTimeout":J
    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    .line 231
    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v3, 0x3e8

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 232
    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 234
    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;-><init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;J)V

    .line 243
    const-wide/16 v4, 0x3e8

    .line 234
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    .end local v0    # "previousTimeout":J
    :cond_0
    return-void
.end method

.method public onUnlockSucceded(I)V
    .locals 2
    .param p1, "pinLength"    # I

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isEnabledForPinLength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isAutoUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;->enableAutoUnlock()V

    .line 218
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    goto :goto_0
.end method

.method public updateEnterKeyVisibility()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isAutoUnlockEnabled()Z

    move-result v0

    .line 160
    .local v0, "autoUnlockEnabled":Z
    iget-object v4, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v4, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 158
    return-void

    :cond_0
    move v1, v2

    .line 160
    goto :goto_0

    :cond_1
    move v1, v3

    .line 161
    goto :goto_1

    :cond_2
    move v2, v3

    .line 162
    goto :goto_2
.end method
