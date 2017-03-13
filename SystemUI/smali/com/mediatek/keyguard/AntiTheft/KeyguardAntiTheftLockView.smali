.class public Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardAntiTheftLockView.java"


# static fields
.field private static mReportUnlockAttemptTimeout:I


# instance fields
.field private mAntiTheftManager:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

.field private mBouncerFrameView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x7530

    sput v0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mReportUnlockAttemptTimeout:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-static {v0, v0, v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getInstance(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mAntiTheftManager:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    .line 60
    return-void
.end method

.method private updateKeypadVisibility()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->isKeypadNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mBouncerFrameView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 211
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mBouncerFrameView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/android/keyguard/R$id;->antiTheftPinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 161
    invoke-static {v0, v0, v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getInstance(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->doBindAntiThftLockServices()V

    .line 155
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 166
    const-string/jumbo v0, "KeyguardAntiTheftLockView"

    const-string/jumbo v1, "onDetachedFromWindow() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 168
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mAntiTheftManager:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setSecurityViewCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 165
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 123
    const-string/jumbo v0, "KeyguardAntiTheftLockView"

    const-string/jumbo v1, "onFinishInflate() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mBouncerFrameView:Landroid/view/ViewGroup;

    .line 126
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 130
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->isKeypadNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string/jumbo v0, "KeyguardAntiTheftLockView"

    const-string/jumbo v1, "onFinishInflate, not need keypad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mBouncerFrameView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 138
    :cond_0
    invoke-static {v2, v2, v2}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getInstance(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->doBindAntiThftLockServices()V

    .line 140
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 120
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 173
    const-string/jumbo v0, "KeyguardAntiTheftLockView"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public onResume(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onResume(I)V

    .line 183
    const-string/jumbo v0, "KeyguardAntiTheftLockView"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, "AntiTheft Noneed Print Text"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 189
    invoke-static {v3, v3, v3}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getInstance(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->doBindAntiThftLockServices()V

    .line 190
    iget-object v0, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mAntiTheftManager:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->setSecurityViewCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 191
    invoke-direct {p0}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->updateKeypadVisibility()V

    .line 178
    return-void
.end method

.method protected resetState()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 68
    invoke-direct {p0}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->updateKeypadVisibility()V

    .line 65
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->getPasswordText()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "entry":Ljava/lang/String;
    const/4 v3, 0x0

    .line 82
    .local v3, "isLockOut":Z
    const-string/jumbo v4, "KeyguardAntiTheftLockView"

    const-string/jumbo v5, "verifyPasswordAndUnlock is called."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v6, v6, v6}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getInstance(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->checkPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    iget-object v4, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget v5, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mReportUnlockAttemptTimeout:I

    invoke-interface {v4, v7, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 86
    iget-object v4, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 92
    invoke-static {v6, v6, v6}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->getInstance(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->adjustStatusBarLocked()V

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->setPasswordEntryEnabled(Z)V

    .line 110
    invoke-virtual {p0, v7}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->resetPasswordText(Z)V

    .line 113
    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {p0, v8}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->setPasswordEntryEnabled(Z)V

    .line 77
    :cond_1
    return-void

    .line 93
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 94
    const-string/jumbo v4, "KeyguardAntiTheftLockView"

    const-string/jumbo v5, "verifyPasswordAndUnlock fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v4, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget v5, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mReportUnlockAttemptTimeout:I

    invoke-interface {v4, v8, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 99
    iget-object v4, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_3

    .line 101
    iget-object v4, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 102
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    sget v6, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mReportUnlockAttemptTimeout:I

    .line 101
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 103
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->handleAttemptLockout(J)V

    .line 104
    const/4 v3, 0x1

    .line 106
    .end local v0    # "deadline":J
    :cond_3
    iget-object v4, p0, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/mediatek/keyguard/AntiTheft/KeyguardAntiTheftLockView;->getWrongPasswordStringId()I

    move-result v5

    invoke-interface {v4, v5, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method
