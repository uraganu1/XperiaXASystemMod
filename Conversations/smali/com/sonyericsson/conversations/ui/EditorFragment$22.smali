.class Lcom/sonyericsson/conversations/ui/EditorFragment$22;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initSendButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1882
    invoke-static {}, Lcom/sonymobile/conversations/util/LogUtil;->isTestLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1883
    const-string/jumbo v3, "Performance - Send button is clicked"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1885
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v2

    .line 1887
    .local v2, "subscriptionId":I
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1889
    instance-of v3, p1, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    if-eqz v3, :cond_5

    .line 1890
    check-cast p1, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->getSubscriptionId()I

    move-result v2

    .line 1905
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1906
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1915
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1916
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->messageWasSent()V

    .line 1918
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isSending()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1919
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onClickSendMessage(I)V

    .line 1881
    :cond_4
    return-void

    .line 1892
    .restart local p1    # "view":Landroid/view/View;
    :cond_5
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v0

    .line 1895
    .local v0, "activeSubIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1896
    return-void

    .line 1900
    :cond_6
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1907
    .end local v0    # "activeSubIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p1    # "view":Landroid/view/View;
    :cond_7
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v3

    .line 1908
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1907
    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1909
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1910
    const v4, 0xbada

    .line 1909
    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1911
    return-void
.end method
