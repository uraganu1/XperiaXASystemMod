.class Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;
.super Ljava/lang/Object;
.source "DeQueueMessageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToDeQueueMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V
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
    .line 81
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iput-object p2, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iput-object p3, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 84
    :try_start_0
    iget-object v11, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImMessageQueueLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string/jumbo v11, "ImConversation \'"

    .line 85
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    iget-object v13, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v11, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v13, "\' - Executing."

    invoke-virtual {v11, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 87
    iget-object v11, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iget-object v13, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v11, v13}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveQueuedMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/util/List;

    move-result-object v10

    .line 89
    .local v10, "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "nrOfQueuedMsgs":I
    const/4 v11, 0x1

    .line 90
    if-lt v9, v11, :cond_1

    const-string/jumbo v11, "Found "

    .line 95
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v13, " queued messages found belonging to im-conversation \'"

    invoke-virtual {v11, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    iget-object v13, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v11, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v13, "\'."

    invoke-virtual {v11, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 98
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 140
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "nrOfQueuedMsgs":I
    .end local v10    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :goto_1
    const-string/jumbo v11, "ImConversation \'"

    .line 149
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v12, "\' - Done."

    invoke-virtual {v11, v12}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 151
    return-void

    .restart local v9    # "nrOfQueuedMsgs":I
    .restart local v10    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :cond_1
    :try_start_2
    const-string/jumbo v11, "No queued messages found belonging to im-conversation \'"

    .line 91
    invoke-static {v11}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    iget-object v13, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v11, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    const-string/jumbo v13, "\' - Done."

    invoke-virtual {v11, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 93
    monitor-exit v12

    return-void

    .line 98
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/jms/message/ImUserMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .local v8, "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    :try_start_3
    instance-of v11, v8, Lcom/sonymobile/jms/message/ImTextMessage;

    if-nez v11, :cond_3

    .line 103
    instance-of v11, v8, Lcom/sonymobile/jms/message/ImFileMessage;

    if-eqz v11, :cond_0

    .line 104
    iget-object v13, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    iget-object v14, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    move-object v0, v8

    check-cast v0, Lcom/sonymobile/jms/message/ImFileMessage;

    move-object v11, v0

    invoke-virtual {v13, v14, v11}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    goto :goto_0

    .line 101
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :cond_3
    iget-object v13, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    iget-object v14, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    move-object v0, v8

    check-cast v0, Lcom/sonymobile/jms/message/ImTextMessage;

    move-object v11, v0

    invoke-virtual {v13, v14, v11}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 138
    :catch_1
    move-exception v6

    .line 115
    .local v6, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    goto :goto_0

    .line 138
    .end local v6    # "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    :catch_2
    move-exception v1

    .line 120
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_0

    .line 138
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_3
    move-exception v4

    .line 130
    .local v4, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    :try_start_4
    iget-object v11, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iget-object v13, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    # invokes: Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToMarkImUserMessageAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    invoke-static {v11, v13, v8}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->access$000(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V

    goto :goto_0

    .line 140
    .end local v4    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v9    # "nrOfQueuedMsgs":I
    .end local v10    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v11
    :try_end_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_5 .. :try_end_5} :catch_4

    .line 148
    :catch_4
    move-exception v5

    .line 142
    .local v5, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ImConversation \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' - Unable to retreive queued messages inside this ImConversation!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 138
    .end local v5    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    .restart local v9    # "nrOfQueuedMsgs":I
    .restart local v10    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :catch_5
    move-exception v3

    .line 136
    .local v3, "e":Lcom/sonymobile/jms/file/FileTooBigException;
    :try_start_6
    iget-object v11, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iget-object v13, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    # invokes: Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToMarkImUserMessageAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    invoke-static {v11, v13, v8}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->access$000(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method
