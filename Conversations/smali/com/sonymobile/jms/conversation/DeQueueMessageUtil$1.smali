.class Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;
.super Ljava/lang/Object;
.source "DeQueueMessageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToMarkQueuedImUserMessagesAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field final synthetic val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iput-object p2, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 49
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImMessageQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v4, "ImConversation \'"

    .line 50
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    iget-object v6, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v6, "\' - Executing."

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 52
    iget-object v4, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iget-object v6, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v4, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveQueuedMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/util/List;

    move-result-object v2

    .line 54
    .local v2, "imUserMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imUserMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :goto_1
    const-string/jumbo v4, "ImConversation \'"

    .line 67
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' - Done."

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    .line 68
    return-void

    .line 54
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "imUserMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :cond_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/jms/message/ImUserMessage;

    .line 55
    .local v3, "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    iget-object v4, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iget-object v6, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v4, v6, v3}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsFailed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V

    goto :goto_0

    .line 58
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imUserMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    .end local v3    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_3 .. :try_end_3} :catch_0

    .line 66
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ImConversation \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' - Could not mark all queued file messages as failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
