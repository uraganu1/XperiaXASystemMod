.class Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;
.super Ljava/lang/Object;
.source "DisplayUserMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getMsisdnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

.field final synthetic val$internationalCode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    iput-object p2, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->val$internationalCode:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 591
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->val$internationalCode:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "countryCodeEntered":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mMsisdnEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$900(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "msisdnValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 594
    .local v1, "currentMsisdn":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-static {v4}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$100(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setMsisdnNotificationStatus(Z)V

    .line 595
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/utils/PhoneUtils;->initialize(Landroid/content/Context;)V

    .line 605
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCurrentMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setCurrentMsisdn(Ljava/lang/String;)V

    .line 614
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/sonymobile/rcs/permission/PermissionUtil;->redirectToPermissionInfoIfNeeded(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 624
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->msisdnDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$1000(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 625
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->finish()V

    .line 626
    return-void

    .line 596
    :cond_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 599
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 610
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 616
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 618
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    const v5, 0x7f05003b

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCurrentMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "first"

    .line 620
    invoke-static {}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isFirstLaunch()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 622
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$10;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-virtual {v4, v2}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2
.end method
