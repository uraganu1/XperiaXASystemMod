.class Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;
.super Ljava/lang/Object;
.source "DeQueueMessageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToDeQueueTextMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

.field final synthetic val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field final synthetic val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationManager;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iput-object p2, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iput-object p3, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 167
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v8}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImMessageQueueLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string/jumbo v8, "ImConversation \'"

    .line 168
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    iget-object v10, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, "\' - Executing."

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 170
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iget-object v10, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveQueuedTextMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/util/List;

    move-result-object v7

    .line 172
    .local v7, "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessage;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "nrOfQueuedMsgs":I
    const/4 v8, 0x1

    .line 173
    if-lt v6, v8, :cond_0

    const-string/jumbo v8, "Found "

    .line 179
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, " queued text messages found belonging to im-conversation \'"

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    iget-object v10, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, "\'."

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 182
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 203
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "nrOfQueuedMsgs":I
    .end local v7    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessage;>;"
    :goto_1
    const-string/jumbo v8, "ImConversation \'"

    .line 212
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v9, "\' - Done."

    invoke-virtual {v8, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 214
    return-void

    .restart local v6    # "nrOfQueuedMsgs":I
    .restart local v7    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessage;>;"
    :cond_0
    :try_start_2
    const-string/jumbo v8, "No queued text messages found belonging to im-conversation \'"

    .line 174
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    iget-object v10, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    const-string/jumbo v10, "\' - Done."

    invoke-virtual {v8, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 177
    monitor-exit v9

    return-void

    .line 182
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/jms/message/ImTextMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .local v5, "msg":Lcom/sonymobile/jms/message/ImTextMessage;
    :try_start_3
    iget-object v8, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    iget-object v10, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v8, v10, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :try_start_4
    monitor-exit v9

    return-void

    .end local v1    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :catch_1
    move-exception v3

    .line 195
    .local v3, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    monitor-exit v9

    return-void

    .end local v3    # "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    :catch_2
    move-exception v0

    .line 200
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    monitor-exit v9

    return-void

    .line 203
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "msg":Lcom/sonymobile/jms/message/ImTextMessage;
    .end local v6    # "nrOfQueuedMsgs":I
    .end local v7    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessage;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_5 .. :try_end_5} :catch_3

    .line 211
    :catch_3
    move-exception v2

    .line 205
    .local v2, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ImConversation \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' - Unable to retreive queued text messages inside this ImConversation!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
