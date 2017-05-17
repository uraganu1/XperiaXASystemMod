.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->onUndeliveredImUserMessagesDetected(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

.field final synthetic val$imOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;
    .param p2, "val$imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 4216
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->val$imOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4222
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get12(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/MessageListFragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4224
    :cond_0
    return-void

    .line 4223
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get12(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/MessageListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4227
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 4228
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 4229
    .local v1, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v2, v3, :cond_3

    .line 4230
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->val$imOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .line 4231
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    .line 4230
    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4229
    if-eqz v2, :cond_3

    .line 4232
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getForcedSendingTechnology()Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    if-ne v2, v3, :cond_2

    .line 4233
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 4235
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->updateCapabilities()V

    .line 4236
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V

    .line 4237
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4238
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 4239
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 4218
    :cond_3
    return-void
.end method
