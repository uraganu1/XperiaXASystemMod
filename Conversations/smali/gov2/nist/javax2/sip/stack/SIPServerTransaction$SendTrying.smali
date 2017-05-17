.class Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendTrying"
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;


# direct methods
.method protected constructor <init>(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 3

    .prologue
    .line 325
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 326
    iget-object v0, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduled timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 333
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 335
    .local v2, "serverTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    # invokes: Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;
    invoke-static {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->access$100(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Ljavax2/sip/TransactionState;

    move-result-object v1

    .line 337
    .local v1, "realState":Ljavax2/sip/TransactionState;
    if-nez v1, :cond_2

    .line 338
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 342
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov2/nist/javax2/sip/message/SIPRequest;

    move-result-object v3

    const/16 v4, 0x64

    const-string/jumbo v5, "Trying"

    invoke-virtual {v3, v4, v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 344
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_4

    .line 353
    :cond_1
    :goto_1
    return-void

    .line 337
    :cond_2
    sget-object v3, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    if-eq v3, v1, :cond_0

    goto :goto_1

    .line 339
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " sending Trying current state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;
    invoke-static {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->access$100(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Ljavax2/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_4
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " trying sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getRealState()Ljavax2/sip/TransactionState;
    invoke-static {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->access$100(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)Ljavax2/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 350
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$SendTrying;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v3, v3, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v3

    const-string/jumbo v4, "IO error sending  TRYING"

    invoke-interface {v3, v4}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_1
.end method
