.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;
.super Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;
.source "KeyguardSimPinPukMeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->checkPuk(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
    .param p2, "this$0_1"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
    .param p3, "$anonymous0"    # Ljava/lang/String;
    .param p4, "$anonymous1"    # Ljava/lang/String;
    .param p5, "$anonymous2"    # I

    .prologue
    .line 918
    iput-object p2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(II)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 920
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap7(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)V

    .line 921
    if-nez p1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z

    .line 923
    const-string/jumbo v1, "KeyguardSimPinPukMeView"

    const-string/jumbo v2, "checkPuk onSimCheckResponse, success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/16 v0, 0x1f6

    .line 925
    .local v0, "verify_type":I
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get4(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1f6

    invoke-interface {v1, v2, v3}, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;->showToastWhenUnlockPinPuk(Landroid/content/Context;I)V

    .line 954
    .end local v0    # "verify_type":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 955
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z

    .line 919
    return-void

    .line 927
    :cond_0
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z

    .line 928
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 929
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 931
    :cond_1
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set4(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)I

    .line 933
    if-ne p1, v4, :cond_3

    .line 934
    const/4 v1, 0x2

    if-gt p2, v1, :cond_2

    .line 936
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, p2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 938
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get10(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    .line 939
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2, p2, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap4(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;IZ)Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 949
    :goto_1
    const-string/jumbo v1, "KeyguardSimPinPukMeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    :cond_2
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get10(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    .line 943
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2, p2, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap4(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;IZ)Ljava/lang/String;

    move-result-object v2

    .line 942
    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 946
    :cond_3
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get10(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$5;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-virtual {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 947
    sget v3, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    .line 946
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method
