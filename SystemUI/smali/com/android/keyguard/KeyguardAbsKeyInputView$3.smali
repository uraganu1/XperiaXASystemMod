.class Lcom/android/keyguard/KeyguardAbsKeyInputView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    .line 236
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    .line 230
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 231
    .local v0, "secondsRemaining":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 232
    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    .line 231
    new-array v3, v6, [Ljava/lang/Object;

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 231
    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 229
    return-void
.end method
