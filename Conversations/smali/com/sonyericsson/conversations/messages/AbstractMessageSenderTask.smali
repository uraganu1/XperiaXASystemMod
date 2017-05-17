.class public abstract Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;
.super Landroid/os/AsyncTask;
.source "AbstractMessageSenderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
        "<",
        "Lcom/sonyericsson/conversations/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private final mOldDraftThreadConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private final mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "sendMessageListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .param p3, "oldDraftThreadConversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 39
    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mOldDraftThreadConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    .line 37
    return-void
.end method


# virtual methods
.method protected getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Lcom/sonyericsson/conversations/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "result":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<Lcom/sonyericsson/conversations/model/Message;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mOldDraftThreadConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    if-eqz v3, :cond_0

    .line 62
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v0

    .line 63
    .local v0, "draftsApi":Lcom/sonyericsson/conversations/draft/DraftsApi;
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mOldDraftThreadConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v0, v3}, Lcom/sonyericsson/conversations/draft/DraftsApi;->deleteDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 66
    .end local v0    # "draftsApi":Lcom/sonyericsson/conversations/draft/DraftsApi;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 67
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/model/Participant;->setIsInputNumber(Z)V

    goto :goto_0

    .line 69
    .end local v1    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-nez v3, :cond_2

    .line 70
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Message;

    invoke-interface {v4, v5, v3}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->onMessageSent(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/Message;)V

    .line 74
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 60
    return-void

    .line 72
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->onMessagesSendFailure(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->onPostExecute(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 49
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-interface {v2, v3}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->preMessageSend(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 54
    .local v0, "participant":Lcom/sonyericsson/conversations/model/Participant;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/model/Participant;->setIsInputNumber(Z)V

    goto :goto_0

    .line 56
    .end local v0    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 48
    return-void
.end method
