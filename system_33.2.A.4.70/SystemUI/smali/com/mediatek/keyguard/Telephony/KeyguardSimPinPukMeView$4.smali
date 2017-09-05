.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;
.super Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;
.source "KeyguardSimPinPukMeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->checkPin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
    .param p2, "this$0_1"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
    .param p3, "$anonymous0"    # Ljava/lang/String;
    .param p4, "$anonymous1"    # I

    .prologue
    .line 861
    iput-object p2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-direct {p0, p1, p3, p4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;I)V

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

    .line 863
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap7(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)V

    .line 864
    if-nez p1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z

    .line 866
    const/16 v0, 0x1f5

    .line 867
    .local v0, "verify_type":I
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get4(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1f5

    invoke-interface {v1, v2, v3}, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;->showToastWhenUnlockPinPuk(Landroid/content/Context;I)V

    .line 868
    const-string/jumbo v1, "KeyguardSimPinPukMeView"

    const-string/jumbo v2, "checkPin() success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    .end local v0    # "verify_type":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 900
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z

    .line 862
    return-void

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z

    .line 872
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 875
    :cond_1
    if-ne p1, v4, :cond_3

    .line 876
    const/4 v1, 0x2

    if-gt p2, v1, :cond_2

    .line 878
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, p2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 880
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get10(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    .line 881
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2, p2, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;IZ)Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 893
    :goto_1
    const-string/jumbo v1, "KeyguardSimPinPukMeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 895
    const-string/jumbo v3, " attemptsRemaining="

    .line 893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap7(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)V

    goto :goto_0

    .line 884
    :cond_2
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get10(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    .line 885
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2, p2, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;IZ)Ljava/lang/String;

    move-result-object v2

    .line 884
    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 890
    :cond_3
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get10(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$4;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-virtual {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 891
    sget v3, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    .line 890
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method
