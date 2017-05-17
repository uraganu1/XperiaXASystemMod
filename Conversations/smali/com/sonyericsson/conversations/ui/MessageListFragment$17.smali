.class Lcom/sonyericsson/conversations/ui/MessageListFragment$17;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1603
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v1

    .line 1604
    .local v1, "isRcsConfigured":Z
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1605
    const-string/jumbo v4, "New IsRcsConfigured: "

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 1606
    const-string/jumbo v5, ", old IsRcsConfigured: "

    .line 1605
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 1606
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get5(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z

    move-result v5

    .line 1605
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 1608
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get5(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z

    move-result v4

    if-eq v1, v4, :cond_1

    .line 1609
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v4, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-set1(Lcom/sonyericsson/conversations/ui/MessageListFragment;Z)Z

    .line 1613
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get4(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 1614
    .local v2, "oldConversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 1616
    .local v0, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->removeConversationFromCache(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 1617
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 1619
    .local v3, "updatedConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1620
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/conversation/Conversation;Z)V

    .line 1623
    .end local v0    # "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    .end local v2    # "oldConversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v3    # "updatedConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->refresh()V

    .line 1602
    return-void
.end method
