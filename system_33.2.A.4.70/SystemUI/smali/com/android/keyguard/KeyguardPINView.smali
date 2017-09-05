.class public Lcom/android/keyguard/KeyguardPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardPINView.java"


# instance fields
.field private final mAppearAnimation:Landroid/view/animation/Animation;

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mAutoConfirmHelper:Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mDisappearAnimation:Landroid/view/animation/Animation;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mDivider:Landroid/view/View;

.field private mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;

.field private mViews:[[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 76
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    .line 77
    const v2, 0x10c000e

    .line 76
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 75
    const-wide/16 v2, 0xdc

    move-object v1, p1

    move v5, v4

    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 78
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 79
    const-wide/16 v2, 0x7d

    .line 81
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    const v4, 0x10c000f

    .line 80
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 79
    const v4, 0x3f19999a    # 0.6f

    .line 80
    const v5, 0x3ee66666    # 0.45f

    move-object v1, p1

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 82
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    .line 86
    const v0, 0x10a0034

    .line 85
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimation:Landroid/view/animation/Animation;

    .line 88
    sget v0, Lcom/android/keyguard/R$anim;->somc_keyguard_bouncer_exit:I

    .line 87
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimation:Landroid/view/animation/Animation;

    .line 72
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 116
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 118
    sget v1, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    .line 119
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setDefaultMessage(I)V

    .line 120
    sget v1, Lcom/android/keyguard/R$id;->row0:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    .line 121
    sget v1, Lcom/android/keyguard/R$id;->row1:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    .line 122
    sget v1, Lcom/android/keyguard/R$id;->row2:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    .line 123
    sget v1, Lcom/android/keyguard/R$id;->row3:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    .line 124
    sget v1, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDivider:Landroid/view/View;

    .line 125
    const/4 v1, 0x6

    new-array v1, v1, [[Landroid/view/View;

    .line 126
    new-array v2, v6, [Landroid/view/View;

    .line 127
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    aput-object v3, v2, v11

    aput-object v7, v2, v4

    aput-object v7, v2, v5

    .line 126
    aput-object v2, v1, v11

    .line 129
    new-array v2, v6, [Landroid/view/View;

    .line 130
    sget v3, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    .line 131
    sget v3, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    .line 129
    aput-object v2, v1, v4

    .line 133
    new-array v2, v6, [Landroid/view/View;

    .line 134
    sget v3, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    .line 135
    sget v3, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    .line 133
    aput-object v2, v1, v5

    .line 137
    new-array v2, v6, [Landroid/view/View;

    .line 138
    sget v3, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    .line 139
    sget v3, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    .line 137
    aput-object v2, v1, v6

    .line 141
    new-array v2, v6, [Landroid/view/View;

    .line 142
    aput-object v7, v2, v11

    sget v3, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    .line 141
    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 144
    new-array v2, v6, [Landroid/view/View;

    .line 145
    aput-object v7, v2, v11

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPINView;->mEcaView:Landroid/view/View;

    aput-object v3, v2, v4

    aput-object v7, v2, v5

    .line 144
    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 125
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 147
    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 149
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 150
    .local v10, "context":Landroid/content/Context;
    new-instance v0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;

    .line 151
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;

    .line 152
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 151
    invoke-direct {v2, v3}, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;-><init>(Landroid/content/ContentResolver;)V

    .line 152
    invoke-static {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 153
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    const-string/jumbo v5, "vibrator"

    invoke-virtual {v10, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 155
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 156
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 157
    iget-object v9, p0, Lcom/android/keyguard/KeyguardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    invoke-direct/range {v0 .. v9}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;-><init>(Landroid/view/View;Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/os/Vibrator;Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/SecurityMessageDisplay;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 158
    .local v0, "autoConfirmHelper":Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAutoConfirmHelper:Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;

    .line 159
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/PasswordTextView;->setPinEntryListener(Lcom/sonymobile/keyguard/pin/PasswordEntryListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v11}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    .line 161
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mPinUnlockListener:Lcom/sonymobile/keyguard/pin/PinUnlockListener;

    .line 115
    return-void
.end method

.method public onResume(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onResume(I)V

    .line 224
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 226
    .local v0, "mediaPlaying":Z
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->voice_unlock_media_playing:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 222
    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->voiceunlock_multiple_failures:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAutoConfirmHelper:Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAutoConfirmHelper:Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;->disableAutoUnlockIfAppropriate()V

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAutoConfirmHelper:Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;->updateEnterKeyVisibility()V

    goto :goto_0
.end method

.method public startAppearAnimation()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/keyguard/KeyguardPINView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardPINView$1;-><init>(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    const/4 v0, 0x1

    return v0
.end method
