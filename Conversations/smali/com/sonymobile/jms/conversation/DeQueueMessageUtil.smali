.class Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;
.super Ljava/lang/Object;
.source "DeQueueMessageUtil.java"


# static fields
.field private static final mProcessQueuedMessagesExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->mProcessQueuedMessagesExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p1, "x1"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "x2"    # Lcom/sonymobile/jms/message/ImUserMessage;

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->tryToMarkImUserMessageAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V

    return-void
.end method

.method static tryToDeQueueFileMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;)V
    .locals 2
    .param p0, "imConversationActionManager"    # Lcom/sonymobile/jms/conversation/ImConversationManager;
    .param p1, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .prologue
    const-string/jumbo v0, "Wait."

    .line 224
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 225
    sget-object v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->mProcessQueuedMessagesExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;

    invoke-direct {v1, p1, p0}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$4;-><init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 283
    return-void
.end method

.method static tryToDeQueueMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 2
    .param p0, "imConversationActionManager"    # Lcom/sonymobile/jms/conversation/ImConversationManager;
    .param p1, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 80
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' - Wait."

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 81
    sget-object v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->mProcessQueuedMessagesExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$2;-><init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method static tryToDeQueueOne2OneMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;)V
    .locals 2
    .param p0, "imConversationActionManager"    # Lcom/sonymobile/jms/conversation/ImConversationManager;
    .param p1, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .prologue
    const-string/jumbo v0, "Wait."

    .line 292
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 293
    sget-object v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->mProcessQueuedMessagesExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;

    invoke-direct {v1, p1, p0}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$5;-><init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method static tryToDeQueueTextMessages(Lcom/sonymobile/jms/conversation/ImConversationManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 2
    .param p0, "imConversationActionManager"    # Lcom/sonymobile/jms/conversation/ImConversationManager;
    .param p1, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 163
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' - Wait."

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 164
    sget-object v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->mProcessQueuedMessagesExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;

    invoke-direct {v1, p1, p2, p0}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$3;-><init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method private static tryToMarkImUserMessageAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    .locals 3
    .param p0, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImUserMessage;

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsFailed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not mark file message \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' as failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static tryToMarkQueuedImUserMessagesAsFailed(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 2
    .param p0, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 45
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\' - Wait."

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 46
    sget-object v0, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil;->mProcessQueuedMessagesExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/jms/conversation/DeQueueMessageUtil$1;-><init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationId;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
