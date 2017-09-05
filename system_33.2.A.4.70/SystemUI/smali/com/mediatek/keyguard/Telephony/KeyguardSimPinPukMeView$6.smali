.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;
.super Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;
.source "KeyguardSimPinPukMeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->checkMe(I)V
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
    .line 969
    iput-object p2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-direct {p0, p1, p3, p4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimMeCheckResponse(I)V
    .locals 7
    .param p1, "ret"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 971
    const-string/jumbo v1, "KeyguardSimPinPukMeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkMe onSimChangedResponse, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    if-nez p1, :cond_1

    .line 973
    const-string/jumbo v1, "KeyguardSimPinPukMeView"

    const-string/jumbo v2, "checkMe VERIFY_RESULT_PASS == ret(we had sent runnable before"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 1007
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1, v6}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Z)Z

    .line 970
    return-void

    .line 974
    :cond_1
    if-ne v5, p1, :cond_4

    .line 975
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 976
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap6(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)V

    .line 978
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 979
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 981
    :cond_2
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get12(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 982
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 983
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/content/Context;

    move-result-object v2

    .line 984
    sget v3, Lcom/android/keyguard/R$string;->simlock_slot_locked_message:I

    .line 983
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/CharSequence;Z)V

    .line 985
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v1, v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPinPukMeDismissFlagOfPhoneId(IZ)V

    .line 986
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 993
    :goto_1
    const-string/jumbo v1, "KeyguardSimPinPukMeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkMe() - VERIFY_INCORRECT_PASSWORD == ret, mSecurityMessageDisplay.setMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 994
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get10(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 996
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get7(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    goto/16 :goto_0

    .line 988
    :cond_3
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v1, v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimMeCategoryOfPhoneId(I)I

    move-result v0

    .line 989
    .local v0, "category":I
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_wrong_code_input:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 990
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get1(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->simlock_entersimmelock:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 991
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get13(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap5(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 998
    .end local v0    # "category":I
    :cond_4
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1000
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 1002
    :cond_5
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    const-string/jumbo v2, "*** Exception happen, fail to unlock"

    invoke-static {v1, v2, v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/CharSequence;Z)V

    .line 1003
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v1, v1, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPinPukMeDismissFlagOfPhoneId(IZ)V

    .line 1004
    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$6;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_0
.end method
