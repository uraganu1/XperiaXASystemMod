.class Lcom/sonyericsson/conversations/ui/EditorFragment$16;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initTextInput()V
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
    .line 1709
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1711
    const/16 v1, 0xa

    if-ne p2, v1, :cond_3

    .line 1714
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setKeyboardState(Z)V

    .line 1716
    return v2

    .line 1718
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1719
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->messageWasSent()V

    .line 1721
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isSending()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1722
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 1723
    .local v0, "subscriptionId":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onClickSendMessage(I)V

    .line 1727
    .end local v0    # "subscriptionId":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap2(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1728
    return v3

    .line 1725
    :cond_2
    const-string/jumbo v1, "Message send blocked, we are currently sending."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1730
    :cond_3
    return v2
.end method
