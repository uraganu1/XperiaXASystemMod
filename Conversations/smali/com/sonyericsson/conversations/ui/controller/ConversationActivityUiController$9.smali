.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/messages/MessageSenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 4427
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageSent(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/Message;)V
    .locals 9
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4436
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/Composer;->setMessagePriority(I)V

    .line 4437
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6, v8}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-set3(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 4439
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 4443
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStrictPhonenumberComparisonPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4445
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4446
    .local v3, "nonStrictParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    .line 4448
    .local v4, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->removeStrictPhoneNumberPrefixFromParticipant(Lcom/sonyericsson/conversations/model/Participant;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v6

    .line 4447
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4450
    .end local v4    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    invoke-virtual {p1, v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->setParticipants(Ljava/util/List;)V

    .line 4453
    .end local v3    # "nonStrictParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v5    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v1

    .line 4456
    .local v1, "draftsApi":Lcom/sonyericsson/conversations/draft/DraftsApi;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->getDraft()Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v6

    if-nez v6, :cond_4

    .line 4457
    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/draft/DraftsApi;->getLatestDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v2

    .line 4462
    .local v2, "loadedDraft":Lcom/sonyericsson/conversations/draft/Draft;
    :goto_1
    if-eqz v2, :cond_2

    .line 4464
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/sonyericsson/conversations/draft/DraftsApi;->deleteDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 4466
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6, v7}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap35(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 4468
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4469
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 4470
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6, v7, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap22(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;ZLcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 4474
    :goto_2
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4475
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setLastMessage(Lcom/sonyericsson/conversations/model/Message;)V

    .line 4478
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6, v7}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap21(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 4435
    return-void

    .line 4459
    .end local v2    # "loadedDraft":Lcom/sonyericsson/conversations/draft/Draft;
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->getDraft()Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v2

    .restart local v2    # "loadedDraft":Lcom/sonyericsson/conversations/draft/Draft;
    goto :goto_1

    .line 4472
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6, v8, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap22(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;ZLcom/sonyericsson/conversations/conversation/Conversation;)V

    goto :goto_2
.end method

.method public onMessagesSendFailure(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    .line 4483
    const-string/jumbo v0, "Sending on Conversation "

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, " failed!"

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 4485
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-set3(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 4486
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4487
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 4488
    const-string/jumbo v0, " Failed to send message "

    invoke-static {v0, p2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4491
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap21(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 4482
    return-void
.end method

.method public preMessageSend(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 4431
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-set3(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 4430
    return-void
.end method
