.class public Lgov2/nist/javax2/sip/stack/SIPClientTransaction$TransactionTimer;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPClientTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransactionTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 214
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 10

    .prologue
    .line 219
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 220
    .local v0, "clientTransaction":Lgov2/nist/javax2/sip/stack/SIPClientTransaction;
    iget-object v4, v0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 223
    .local v4, "sipStack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isTerminated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 270
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->fireTimer()V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 231
    :goto_1
    invoke-virtual {v4, v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction$TransactionTimer;->cancel()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_2
    iget-boolean v6, v4, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-eqz v6, :cond_5

    .line 259
    :cond_3
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v6

    iget v5, v6, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    .line 261
    .local v5, "useCount":I
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Client Use Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v5    # "useCount":I
    :cond_4
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removing  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isReliable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :catch_0
    move-exception v1

    .line 237
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isAlive()Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 244
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_5
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 246
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v6

    iget v7, v6, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v3, v7, -0x1

    iput v3, v6, Lgov2/nist/javax2/sip/stack/MessageChannel;->useCount:I

    .line 247
    .local v3, "newUseCount":I
    if-gtz v3, :cond_0

    .line 250
    new-instance v2, Lgov2/nist/javax2/sip/stack/SIPTransaction$LingerTimer;

    iget-object v6, p0, Lgov2/nist/javax2/sip/stack/SIPClientTransaction$TransactionTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-direct {v2, v6}, Lgov2/nist/javax2/sip/stack/SIPTransaction$LingerTimer;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 251
    .local v2, "myTimer":Ljava/util/TimerTask;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v6

    const-wide/16 v8, 0x1f40

    invoke-virtual {v6, v2, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0
.end method
