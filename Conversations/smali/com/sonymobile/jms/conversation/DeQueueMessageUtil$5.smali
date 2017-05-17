.class Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;
.super Ljava/lang/Object;
.source "DeQueueMessageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToDeQueueOne2OneMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;)V
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
    .line 293
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    iput-object p2, p0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 296
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v13}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImMessageQueueLock()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string/jumbo v13, "Executing."

    .line 297
    invoke-static {v13}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v13}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveQueuedOne2OneMessages()Ljava/util/List;

    move-result-object v12

    .line 300
    .local v12, "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "nrOfQueuedMsgs":I
    const/4 v13, 0x1

    .line 301
    if-lt v10, v13, :cond_1

    const-string/jumbo v13, "Found "

    .line 306
    invoke-static {v13}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    const-string/jumbo v15, " queued one2one messages."

    invoke-virtual {v13, v15}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 308
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 351
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "nrOfQueuedMsgs":I
    .end local v12    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :goto_1
    const-string/jumbo v13, "Done."

    .line 355
    invoke-static {v13}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 356
    return-void

    .restart local v10    # "nrOfQueuedMsgs":I
    .restart local v12    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_1
    :try_start_2
    const-string/jumbo v13, "No queued one2one messages found - Done."

    .line 302
    invoke-static {v13}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 304
    monitor-exit v14

    return-void

    .line 308
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 309
    .local v11, "queuedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;"
    iget-object v8, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .line 310
    .local v8, "imConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    iget-object v9, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/sonymobile/jms/message/ImUserMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    .local v9, "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    :try_start_3
    instance-of v13, v9, Lcom/sonymobile/jms/message/ImTextMessage;

    if-nez v13, :cond_3

    .line 315
    instance-of v13, v9, Lcom/sonymobile/jms/message/ImFileMessage;

    if-eqz v13, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    move-object v0, v9

    check-cast v0, Lcom/sonymobile/jms/message/ImFileMessage;

    move-object v13, v0

    invoke-virtual {v15, v8, v13}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    goto :goto_0

    .line 313
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;->val$imConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    move-object v0, v9

    check-cast v0, Lcom/sonymobile/jms/message/ImTextMessage;

    move-object v13, v0

    invoke-virtual {v15, v8, v13}, Lcom/sonymobile/jms/conversation/ImConversationManager;->sendQueuedMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    :try_end_3
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 349
    :catch_1
    move-exception v1

    .line 327
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    goto :goto_0

    .line 349
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_2
    move-exception v6

    .line 332
    .local v6, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    goto :goto_0

    .line 349
    .end local v6    # "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    :catch_3
    move-exception v4

    .line 341
    .local v4, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    # invokes: Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToMarkImUserMessageAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    invoke-static {v13, v8, v9}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->access$000(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V

    goto :goto_0

    .line 351
    .end local v4    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "imConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .end local v9    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v10    # "nrOfQueuedMsgs":I
    .end local v11    # "queuedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;"
    .end local v12    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v13
    :try_end_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_5 .. :try_end_5} :catch_4

    .line 354
    :catch_4
    move-exception v5

    .local v5, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v13, "Unable to retreive queued one2one-messages!"

    .line 353
    invoke-static {v13, v5}, Lcom/sonymobile/jms/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 349
    .end local v5    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "imConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .restart local v9    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    .restart local v10    # "nrOfQueuedMsgs":I
    .restart local v11    # "queuedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;"
    .restart local v12    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :catch_5
    move-exception v3

    .line 347
    .local v3, "e":Lcom/sonymobile/jms/file/FileTooBigException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;->val$imMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    # invokes: Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToMarkImUserMessageAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    invoke-static {v13, v8, v9}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->access$000(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method
