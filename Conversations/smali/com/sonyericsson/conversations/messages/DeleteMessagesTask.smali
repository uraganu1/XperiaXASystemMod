.class public Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;
.super Landroid/os/AsyncTask;
.source "DeleteMessagesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final sDeleteTaskExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private final mDeleteMessagesListener:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;

.field private final mMessageKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->sDeleteTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p4, "messageDeleteListener"    # Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "messageKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 58
    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mMessageKeys:Ljava/util/List;

    .line 59
    iput-object p4, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mDeleteMessagesListener:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;

    .line 55
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v7, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mMessageKeys:Ljava/util/List;

    .line 71
    invoke-static {v5, v6, v7}, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController;->removeMessages(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;

    move-result-object v2

    .line 75
    .local v2, "information":Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;
    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v6}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    .line 74
    invoke-static {v5, v6, v7}, Lcom/sonyericsson/conversations/model/MessageUtil;->getNumberOfXmsMessages(Landroid/content/Context;J)I

    move-result v3

    .line 77
    .local v3, "numberOfXmsMessagesAfterDelete":I
    if-nez v3, :cond_1

    .line 78
    iget v5, v2, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;->mNumberOfXmsRemoved:I

    if-lez v5, :cond_0

    const/4 v4, 0x1

    .line 80
    .local v4, "removedAllXmsInConversation":Z
    :goto_0
    new-instance v5, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 78
    .end local v4    # "removedAllXmsInConversation":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "removedAllXmsInConversation":Z
    goto :goto_0

    .line 77
    .end local v4    # "removedAllXmsInConversation":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "removedAllXmsInConversation":Z
    goto :goto_0

    .line 83
    .end local v2    # "information":Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;
    .end local v3    # "numberOfXmsMessagesAfterDelete":I
    .end local v4    # "removedAllXmsInConversation":Z
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v5, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v5, v0}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v5

    .line 81
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v5, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v5, v1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "result":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mDeleteMessagesListener:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;->onMessagesDeleteCancelled()V

    .line 89
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->onCancelled(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V

    return-void
.end method

.method protected onPostExecute(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "result":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mDeleteMessagesListener:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;->onMessagesDeleteFailure(Ljava/lang/Exception;)V

    .line 94
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mDeleteMessagesListener:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mMessageKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;->onMessagesDeleted(IZ)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->onPostExecute(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->mDeleteMessagesListener:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;->preMessagesDelete()V

    .line 63
    return-void
.end method
