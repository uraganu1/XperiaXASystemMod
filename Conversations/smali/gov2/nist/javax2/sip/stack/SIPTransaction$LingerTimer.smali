.class Lgov2/nist/javax2/sip/stack/SIPTransaction$LingerTimer;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LingerTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPTransaction;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    .locals 3
    .param p1, "sipTransaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    .line 274
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 276
    iget-object v0, p1, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p1, Lgov2/nist/javax2/sip/stack/SIPTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LingerTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected runTask()V
    .locals 6

    .prologue
    .line 284
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 286
    .local v1, "transaction":Lgov2/nist/javax2/sip/stack/SIPTransaction;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    .line 288
    .local v0, "sipStack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    :goto_0
    instance-of v3, v1, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    if-nez v3, :cond_2

    .line 296
    instance-of v3, v1, Ljavax2/sip/ServerTransaction;

    if-nez v3, :cond_3

    .line 314
    :cond_0
    :goto_1
    return-void

    .line 289
    :cond_1
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LingerTimer: run() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/SIPTransaction$LingerTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 294
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->close()V

    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 300
    :goto_2
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 301
    iget-boolean v3, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-eqz v3, :cond_6

    .line 306
    :cond_4
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->isReliable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    # getter for: Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;
    invoke-static {v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->access$000(Lgov2/nist/javax2/sip/stack/SIPTransaction;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v3

    iget v2, v3, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    .line 309
    .local v2, "useCount":I
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Use Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 299
    .end local v2    # "useCount":I
    :cond_5
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 301
    :cond_6
    # getter for: Lgov2/nist/javax2/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov2/nist/javax2/sip/stack/MessageChannel;
    invoke-static {v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->access$000(Lgov2/nist/javax2/sip/stack/SIPTransaction;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v3

    iget v4, v3, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    if-gtz v4, :cond_4

    .line 304
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransaction;->close()V

    goto/16 :goto_1
.end method
