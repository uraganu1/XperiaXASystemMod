.class Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransactionTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 3

    .prologue
    .line 358
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 359
    iget-object v0, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p1, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TransactionTimer() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

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
    .line 367
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->fireTimer()V

    .line 395
    :goto_0
    return-void

    .line 373
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;->cancel()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_1
    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPTransaction$LingerTimer;

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-direct {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPTransaction$LingerTimer;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V

    .line 385
    .local v1, "myTimer":Ljava/util/TimerTask;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v2, v2, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v2

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 376
    .end local v1    # "myTimer":Ljava/util/TimerTask;
    :catch_0
    move-exception v0

    .line 375
    .local v0, "ex":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$TransactionTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v2, v2, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    return-void
.end method
