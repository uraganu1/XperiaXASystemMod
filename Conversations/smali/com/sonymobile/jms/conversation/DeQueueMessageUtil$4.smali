.class Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;
.super Ljava/lang/Object;
.source "DeQueueMessageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToDeQueueFileMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

.field final synthetic val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationManager;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iput-object p2, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 228
    :try_start_0
    iget-object v12, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v12}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImMessageQueueLock()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string/jumbo v12, "Executing."

    .line 229
    invoke-static {v12}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 230
    iget-object v12, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v12}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveQueuedFileMessages()Ljava/util/List;

    move-result-object v11

    .line 232
    .local v11, "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "nrOfQueuedMsgs":I
    const/4 v12, 0x1

    .line 233
    if-lt v9, v12, :cond_0

    const-string/jumbo v12, "Found "

    .line 237
    invoke-static {v12}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v12

    const-string/jumbo v14, " queued file messages."

    invoke-virtual {v12, v14}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 239
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 276
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "nrOfQueuedMsgs":I
    .end local v11    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :goto_1
    const-string/jumbo v12, "Done."

    .line 280
    invoke-static {v12}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 281
    return-void

    .restart local v9    # "nrOfQueuedMsgs":I
    .restart local v11    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_0
    :try_start_2
    const-string/jumbo v12, "No queued file messages found - Done."

    .line 234
    invoke-static {v12}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 235
    monitor-exit v13

    return-void

    .line 239
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 240
    .local v10, "queuedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;"
    iget-object v7, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 241
    .local v7, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    iget-object v8, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/sonymobile/jms/message/ImFileMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .local v8, "msg":Lcom/sonymobile/jms/message/ImFileMessage;
    :try_start_3
    iget-object v12, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v12, v7, v8}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :try_start_4
    monitor-exit v13

    return-void

    .end local v1    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :catch_1
    move-exception v5

    .line 250
    .local v5, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    goto :goto_0

    .line 274
    .end local v5    # "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    :catch_2
    move-exception v0

    .line 255
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_0

    .line 274
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_3
    move-exception v3

    .line 266
    .local v3, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    iget-object v12, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    # invokes: Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToMarkImUserMessageAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    invoke-static {v12, v7, v8}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->access$000(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V

    goto :goto_0

    .line 276
    .end local v3    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v8    # "msg":Lcom/sonymobile/jms/message/ImFileMessage;
    .end local v9    # "nrOfQueuedMsgs":I
    .end local v10    # "queuedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;"
    .end local v11    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v12
    :try_end_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_5 .. :try_end_5} :catch_4

    .line 279
    :catch_4
    move-exception v4

    .local v4, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v12, "Unable to retreive queued file-messages!"

    .line 278
    invoke-static {v12, v4}, Lcom/sonymobile/jms/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 274
    .end local v4    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .restart local v8    # "msg":Lcom/sonymobile/jms/message/ImFileMessage;
    .restart local v9    # "nrOfQueuedMsgs":I
    .restart local v10    # "queuedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;"
    .restart local v11    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :catch_5
    move-exception v2

    .line 272
    .local v2, "e":Lcom/sonymobile/jms/file/FileTooBigException;
    :try_start_6
    iget-object v12, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    # invokes: Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToMarkImUserMessageAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    invoke-static {v12, v7, v8}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->access$000(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method
