.class public Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPinPukMeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;,
        Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;,
        Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;,
        Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$1;,
        Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;
    }
.end annotation


# instance fields
.field private mDismissSimPinPukRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

.field private mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

.field private mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

.field private mLastSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mNewPinText:Ljava/lang/String;

.field private mNextRepollStatePhoneId:I

.field private mPhoneId:I

.field private mPinRetryCount:I

.field private mPukRetryCount:I

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mSb:Ljava/lang/StringBuffer;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mShowDefaultPinMessage:Z

.field private mShowDefaultPukMessage:Z

.field private mSimCardDialog:Landroid/app/AlertDialog;

.field private volatile mSimCheckInProgress:Z

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubId:I

.field private mUnlockEnterState:I

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private strLockName:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic -get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get12(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    return v0
.end method

.method static synthetic -get13(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->strLockName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mLastSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNextRepollStatePhoneId:I

    return v0
.end method

.method static synthetic -get7(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/PasswordTextView;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    return v0
.end method

.method static synthetic -get9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mLastSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPinMessage:Z

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPukMessage:Z

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCheckInProgress:Z

    return p1
.end method

.method static synthetic -set4(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)Landroid/app/Dialog;
    .locals 1
    .param p1, "remaining"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)Landroid/app/Dialog;
    .locals 1
    .param p1, "remaining"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryMeCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;IZ)Ljava/lang/String;
    .locals 1
    .param p1, "attemptsRemaining"    # I
    .param p2, "isDefault"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;IZ)Ljava/lang/String;
    .locals 1
    .param p1, "attemptsRemaining"    # I
    .param p2, "isDefault"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryMeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->minusRetryMeCount(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->resetPasswordText(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "shouldDisplay"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->simStateReadyProcess()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-object v5, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 84
    iput-object v5, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 90
    iput-boolean v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPinMessage:Z

    .line 91
    iput-boolean v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPukMessage:Z

    .line 95
    iput-object v5, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNextRepollStatePhoneId:I

    .line 104
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mLastSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 122
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, " [NP]"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, " [NSP]"

    aput-object v2, v1, v4

    const-string/jumbo v2, " [SP]"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, " [CP]"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, " [SIMP]"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->strLockName:[Ljava/lang/String;

    .line 132
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v5, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$1;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$1;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 226
    new-instance v1, Lcom/android/keyguard/KeyguardUtils;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    .line 227
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 229
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 233
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->getKeyguardUtilExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 234
    invoke-static {p1}, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->getOperatorSIMString(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mIOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkMe(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 967
    iget-boolean v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCheckInProgress:Z

    .line 969
    new-instance v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->start()V

    .line 965
    :cond_0
    return-void
.end method

.method private checkPin(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 859
    iget-boolean v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCheckInProgress:Z

    .line 861
    new-instance v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->start()V

    .line 857
    :cond_0
    return-void
.end method

.method private checkPuk(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->updatePinEnterScreen()V

    .line 912
    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 913
    return-void

    .line 915
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 916
    iget-boolean v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCheckInProgress:Z

    if-nez v0, :cond_1

    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCheckInProgress:Z

    .line 918
    new-instance v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;

    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPukText:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNewPinText:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->start()V

    .line 910
    :cond_1
    return-void
.end method

.method private dealWithPinOrPukUnlock()V
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 837
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick, check PIN, mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->checkPin(I)V

    .line 835
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 840
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 839
    if-ne v0, v1, :cond_1

    .line 841
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick, check PUK, mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->checkPuk(I)V

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 844
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 843
    if-ne v0, v1, :cond_2

    .line 845
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isMediatekSimMeLockSupport()Z

    move-result v0

    .line 843
    if-eqz v0, :cond_2

    .line 846
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick, check ME, mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->checkMe(I)V

    goto :goto_0

    .line 849
    :cond_2
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong status, mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNextRepollStatePhoneId()I
    .locals 4

    .prologue
    .line 1106
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mLastSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 1107
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isMediatekSimMeLockSupport()Z

    move-result v2

    .line 1106
    if-eqz v2, :cond_1

    .line 1108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getNumOfPhone()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1109
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->isPinPukOrMeRequiredOfPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    :cond_0
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 1114
    .local v1, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 1115
    return v0

    .line 1121
    .end local v0    # "i":I
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getPinPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I
    .param p2, "isDefault"    # Z

    .prologue
    const/4 v5, 0x0

    .line 381
    if-nez p1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_pukked:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "KeyguardSimPinPukMeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " displayMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-object v0

    .line 383
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_2

    .line 384
    if-eqz p2, :cond_1

    sget v1, Lcom/android/keyguard/R$plurals;->kg_password_default_pin_message:I

    .line 385
    .local v1, "msgId":I
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 384
    .end local v0    # "displayMessage":Ljava/lang/String;
    .end local v1    # "msgId":I
    :cond_1
    sget v1, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code:I

    .restart local v1    # "msgId":I
    goto :goto_1

    .line 387
    .end local v1    # "msgId":I
    :cond_2
    if-eqz p2, :cond_3

    sget v1, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    .line 388
    .restart local v1    # "msgId":I
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 387
    .end local v0    # "displayMessage":Ljava/lang/String;
    .end local v1    # "msgId":I
    :cond_3
    sget v1, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    .restart local v1    # "msgId":I
    goto :goto_2
.end method

.method private getPukPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I
    .param p2, "isDefault"    # Z

    .prologue
    const/4 v5, 0x0

    .line 397
    if-nez p1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "KeyguardSimPinPukMeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " displayMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v0

    .line 399
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_2

    .line 400
    if-eqz p2, :cond_1

    sget v1, Lcom/android/keyguard/R$plurals;->kg_password_default_puk_message:I

    .line 401
    .local v1, "msgId":I
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 400
    .end local v0    # "displayMessage":Ljava/lang/String;
    .end local v1    # "msgId":I
    :cond_1
    sget v1, Lcom/android/keyguard/R$plurals;->kg_password_wrong_puk_code:I

    .restart local v1    # "msgId":I
    goto :goto_1

    .line 403
    .end local v1    # "msgId":I
    :cond_2
    if-eqz p2, :cond_3

    sget v1, Lcom/android/keyguard/R$string;->kg_puk_enter_puk_hint:I

    .line 404
    .restart local v1    # "msgId":I
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 403
    .end local v0    # "displayMessage":Ljava/lang/String;
    .end local v1    # "msgId":I
    :cond_3
    sget v1, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    .restart local v1    # "msgId":I
    goto :goto_2
.end method

.method private getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "remaining"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1030
    invoke-direct {p0, p1, v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 1032
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1033
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1034
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1035
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1036
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 1037
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1038
    const/16 v3, 0x7d9

    .line 1037
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1042
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 1040
    :cond_0
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getRetryMeCount(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimMeLeftRetryCountOfPhoneId(I)I

    move-result v0

    return v0
.end method

.method private getRetryMeString(I)Ljava/lang/String;
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryMeCount(I)I

    move-result v0

    .line 537
    .local v0, "meRetryCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->retries_left:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRetryPinCount(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, -0x1

    .line 567
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 568
    const-string/jumbo v0, "gsm.sim.retry.pin1.4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 569
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 570
    const-string/jumbo v0, "gsm.sim.retry.pin1.3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 571
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 572
    const-string/jumbo v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 574
    :cond_2
    const-string/jumbo v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getRetryPinString(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryPinCount(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPinRetryCount:I

    .line 558
    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPinRetryCount:I

    packed-switch v0, :pswitch_data_0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->retries_left:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPinRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 560
    :pswitch_0
    const-string/jumbo v0, " "

    return-object v0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryPuk(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 548
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRetryPukCountOfPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPukRetryCount:I

    .line 549
    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPukRetryCount:I

    packed-switch v0, :pswitch_data_0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->retries_left:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPukRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 551
    :pswitch_0
    const-string/jumbo v0, " "

    return-object v0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "remaining"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1014
    invoke-direct {p0, p1, v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 1016
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1017
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1018
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1019
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1020
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 1021
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1022
    const/16 v3, 0x7d9

    .line 1021
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1026
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 1024
    :cond_0
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 786
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 787
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 789
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mIOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    sget-object v3, Lcom/mediatek/keyguard/ext/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/keyguard/ext/IOperatorSIMString$SIMChangedTag;

    .line 791
    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    .line 790
    invoke-interface {v1, v0, v2, v3, v4}, Lcom/mediatek/keyguard/ext/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/keyguard/ext/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 795
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 796
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 798
    const/16 v2, 0x7d9

    .line 797
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 801
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method

.method private minusRetryMeCount(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 545
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->minusSimMeLeftRetryCountOfPhoneId(I)V

    .line 544
    return-void
.end method

.method private setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "shouldDisplay"    # Z

    .prologue
    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 518
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 519
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 521
    const v3, 0x104000a

    const/4 v4, 0x0

    .line 519
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 522
    const/4 v3, 0x1

    .line 519
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 525
    .local v0, "newDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 526
    const/16 v3, 0x7d9

    .line 525
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 527
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 528
    const/4 v3, 0x2

    .line 527
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 515
    .end local v0    # "newDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$Toast;->show()V

    goto :goto_0
.end method

.method private setTextForForText(Landroid/widget/TextView;)V
    .locals 10
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "displayName":Ljava/lang/String;
    iget v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 352
    .local v3, "subId":I
    const/4 v2, 0x0

    .line 354
    .local v2, "nameSource":I
    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 355
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v2

    .line 359
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "KeyguardSimPinPukMeView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSubInfoChange, mSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    const-string/jumbo v6, ", displayName="

    .line 359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 364
    if-nez v2, :cond_2

    .line 366
    :cond_1
    const-string/jumbo v4, "KeyguardSimPinPukMeView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSubId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": New Card Inserted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->somc_dsds_sim_number_format:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :goto_0
    return-void

    .line 370
    :cond_2
    const-string/jumbo v4, "KeyguardSimPinPukMeView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSubInfoChange, refresh Sub Info for mSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    .line 372
    sget v5, Lcom/android/keyguard/R$string;->somc_dsds_sim_number_colon_name_format:I

    .line 371
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 373
    iget v7, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    .line 371
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private simStateReadyProcess()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1083
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getNextRepollStatePhoneId()I

    move-result v2

    iput v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNextRepollStatePhoneId:I

    .line 1084
    const-string/jumbo v2, "KeyguardSimPinPukMeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simStateReadyProcess mNextRepollStatePhoneId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNextRepollStatePhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNextRepollStatePhoneId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1087
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1088
    const-string/jumbo v2, "KeyguardSimPinPukMeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "repollIccStateForNetworkLock phoneId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNextRepollStatePhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNextRepollStatePhoneId:I

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 1093
    .local v1, "subId":I
    const-string/jumbo v2, "phoneEx"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 1094
    const/4 v3, 0x1

    .line 1093
    invoke-interface {v2, v1, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->repollIccStateForNetworkLock(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v1    # "subId":I
    :goto_0
    return-void

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyguardSimPinPukMeView"

    const-string/jumbo v3, "repollIccStateForNetworkLock exception caught"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1099
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0
.end method

.method private updatePinEnterScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 595
    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    packed-switch v0, :pswitch_data_0

    .line 648
    :goto_0
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    .line 649
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 593
    return-void

    .line 597
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPukText:Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPukText:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->validatePin(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iput v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    .line 600
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 601
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_password_enter_new_pin_code:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 602
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePinEnterScreen() - STATE_ENTER_PUK, validatePin = true ,mSecurityMessageDisplay.setMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 603
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 606
    :cond_0
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    const-string/jumbo v1, "updatePinEnterScreen() - STATE_ENTER_PUK, validatePin = false ,mSecurityMessageDisplay.setMessage = R.string.invalidPuk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_invalid_sim_puk_hint:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 613
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNewPinText:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNewPinText:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->validatePin(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    .line 616
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 617
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_password_Confirm_pin_code:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 618
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePinEnterScreen() - STATE_ENTER_NEW, validatePin = true ,mSecurityMessageDisplay.setMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 619
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 622
    :cond_1
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    const-string/jumbo v1, "updatePinEnterScreen() - STATE_ENTER_NEW, validatePin = false ,mSecurityMessageDisplay.setMessage = R.string.keyguard_code_length_prompt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->keyguard_code_length_prompt:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_0

    .line 629
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mNewPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 630
    iput v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    .line 631
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 632
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_code_donnot_mismatch:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 633
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_password_enter_new_pin_code:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 634
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePinEnterScreen() - STATE_REENTER_NEW, true ,mSecurityMessageDisplay.setMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 635
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 638
    :cond_2
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    const-string/jumbo v1, "updatePinEnterScreen() - STATE_REENTER_NEW, false ,mSecurityMessageDisplay.setMessage = empty string."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    .line 641
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "isPUK"    # Z

    .prologue
    .line 580
    if-eqz p2, :cond_1

    const/16 v0, 0x8

    .line 582
    .local v0, "pinMinimum":I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 584
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 580
    .end local v0    # "pinMinimum":I
    :cond_1
    const/4 v0, 0x4

    .restart local v0    # "pinMinimum":I
    goto :goto_0

    .line 583
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 586
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 418
    sget v0, Lcom/android/keyguard/R$id;->simPinPukMeEntry:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 473
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 474
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 472
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 480
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 481
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 483
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 479
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 423
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 424
    iput-boolean v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPinMessage:Z

    .line 425
    iput-boolean v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPukMessage:Z

    .line 427
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    .line 440
    sget v2, Lcom/android/keyguard/R$id;->key_dismiss:I

    invoke-virtual {p0, v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 441
    .local v1, "dismissButton":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 442
    new-instance v2, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$3;

    invoke-direct {v2, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$3;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    :cond_0
    sget v2, Lcom/android/keyguard/R$string;->dismiss:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 458
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 460
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mEcaView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mEcaView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 464
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mEcaView:Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 465
    .local v0, "ctView":Landroid/view/View;
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "ctView":Landroid/view/View;
    invoke-interface {v2, v0}, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;->customizeCarrierTextGravity(Landroid/widget/TextView;)V

    .line 468
    :cond_1
    sget v2, Lcom/android/keyguard/R$id;->keyguard_sim:I

    invoke-virtual {p0, v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimImageView:Landroid/widget/ImageView;

    .line 422
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 509
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 511
    iput-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 508
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 494
    iput-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    .line 499
    const-string/jumbo v2, "input_method"

    .line 498
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 500
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    const-string/jumbo v1, "KeyguardSimPinPukMeView"

    const-string/jumbo v2, "IME is showing, we should hide it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 491
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1298
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged(hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    if-eqz p1, :cond_0

    .line 1301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->resetPasswordText(Z)V

    .line 1302
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->requestImeStatusRefresh(Landroid/content/Context;)V

    .line 1297
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->resetState(Z)V

    .line 261
    return-void
.end method

.method public resetState(Z)V
    .locals 14
    .param p1, "forceReload"    # Z

    .prologue
    .line 270
    const-string/jumbo v10, "KeyguardSimPinPukMeView"

    const-string/jumbo v11, "Resetting state"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 273
    sget v10, Lcom/android/keyguard/R$id;->slot_num_text:I

    invoke-virtual {p0, v10}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 274
    .local v4, "forText":Landroid/widget/TextView;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 275
    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->setTextForForText(Landroid/widget/TextView;)V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 280
    .local v7, "rez":Landroid/content/res/Resources;
    const-string/jumbo v6, ""

    .line 281
    .local v6, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getNumOfPhone()I

    move-result v2

    .line 282
    .local v2, "count":I
    const/4 v1, -0x1

    .line 284
    .local v1, "color":I
    iget-object v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v10, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    .line 285
    .local v8, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v10, 0x2

    if-ge v2, v10, :cond_4

    .line 286
    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v10, :cond_2

    .line 287
    iget v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-direct {p0, v10}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryPinString(I)Ljava/lang/String;

    .line 288
    iget v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPinRetryCount:I

    iget-boolean v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPinMessage:Z

    invoke-direct {p0, v10, v11}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v6

    .line 290
    const/4 v10, 0x0

    iput v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    .line 337
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    iget v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    iget-object v12, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimImageView:Landroid/widget/ImageView;

    invoke-interface {v10, v11, v12, v4}, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;->customizePinPukLockView(ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 341
    iget-object v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mIOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    iget v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    sget-object v12, Lcom/mediatek/keyguard/ext/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/keyguard/ext/IOperatorSIMString$SIMChangedTag;

    .line 342
    iget-object v13, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mContext:Landroid/content/Context;

    .line 341
    invoke-interface {v10, v6, v11, v12, v13}, Lcom/mediatek/keyguard/ext/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/keyguard/ext/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 343
    const-string/jumbo v10, "KeyguardSimPinPukMeView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resetState() - mSecurityMessageDisplay.setMessage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v11, 0x1

    invoke-interface {v10, v6, v11}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 269
    return-void

    .line 291
    :cond_2
    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v10, :cond_3

    .line 292
    iget v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-direct {p0, v10}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryPuk(I)Ljava/lang/String;

    .line 293
    iget v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPukRetryCount:I

    iget-boolean v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPukMessage:Z

    invoke-direct {p0, v10, v11}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v6

    .line 295
    const/4 v10, 0x1

    iput v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    goto :goto_0

    .line 296
    :cond_3
    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v8, :cond_1

    .line 297
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isMediatekSimMeLockSupport()Z

    move-result v10

    .line 296
    if-eqz v10, :cond_1

    .line 298
    iget-object v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v10, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimMeCategoryOfPhoneId(I)I

    move-result v0

    .line 299
    .local v0, "category":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/android/keyguard/R$string;->simlock_entersimmelock:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 300
    iget-object v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->strLockName:[Ljava/lang/String;

    aget-object v11, v11, v0

    .line 299
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 301
    iget v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-direct {p0, v11}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryMeString(I)Ljava/lang/String;

    move-result-object v11

    .line 299
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    const/4 v10, 0x5

    iput v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    goto/16 :goto_0

    .line 305
    .end local v0    # "category":I
    :cond_4
    iget v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-static {v10}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v9

    .line 309
    .local v9, "subId":I
    iget-object v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10, v9, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(IZ)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 310
    .local v5, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 312
    .local v3, "displayName":Ljava/lang/CharSequence;
    :goto_1
    const-string/jumbo v10, "KeyguardSimPinPukMeView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resetState() - subId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", displayName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v10, :cond_7

    .line 315
    iget v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-direct {p0, v10}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryPinString(I)Ljava/lang/String;

    .line 316
    iget v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPinRetryCount:I

    iget-boolean v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPinMessage:Z

    invoke-direct {p0, v10, v11}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v6

    .line 318
    const/4 v10, 0x0

    iput v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    .line 332
    :cond_5
    :goto_2
    if-eqz v5, :cond_1

    .line 333
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v1

    goto/16 :goto_0

    .line 310
    .end local v3    # "displayName":Ljava/lang/CharSequence;
    :cond_6
    const-string/jumbo v3, ""

    .restart local v3    # "displayName":Ljava/lang/CharSequence;
    goto :goto_1

    .line 319
    :cond_7
    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v10, :cond_8

    .line 320
    iget v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-direct {p0, v10}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryPuk(I)Ljava/lang/String;

    .line 321
    iget v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPukRetryCount:I

    iget-boolean v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mShowDefaultPukMessage:Z

    invoke-direct {p0, v10, v11}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v6

    .line 323
    const/4 v10, 0x1

    iput v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    goto :goto_2

    .line 324
    :cond_8
    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v10, v8, :cond_5

    .line 325
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isMediatekSimMeLockSupport()Z

    move-result v10

    .line 324
    if-eqz v10, :cond_5

    .line 326
    iget-object v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v10, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimMeCategoryOfPhoneId(I)I

    move-result v0

    .line 327
    .restart local v0    # "category":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/android/keyguard/R$string;->simlock_entersimmelock:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 328
    iget-object v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->strLockName:[Ljava/lang/String;

    aget-object v11, v11, v0

    .line 327
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 329
    iget v11, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-direct {p0, v11}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getRetryMeString(I)Ljava/lang/String;

    move-result-object v11

    .line 327
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 330
    const/4 v10, 0x5

    iput v10, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUnlockEnterState:I

    goto :goto_2
.end method

.method public setPhoneId(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 246
    iput p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    .line 247
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->resetState()V

    .line 253
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 257
    :cond_0
    iput-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSimCardDialog:Landroid/app/AlertDialog;

    .line 244
    :cond_1
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 1308
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1314
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 808
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "entry":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 812
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    .line 813
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 814
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isMediatekSimMeLockSupport()Z

    move-result v1

    .line 811
    if-eqz v1, :cond_2

    .line 817
    :cond_0
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 818
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 817
    if-ne v1, v2, :cond_1

    .line 819
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 825
    :goto_0
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    .line 826
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    .line 827
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 829
    return-void

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_code_length_prompt:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 831
    :cond_2
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    .line 832
    invoke-direct {p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->dealWithPinOrPukUnlock()V

    .line 807
    return-void
.end method
