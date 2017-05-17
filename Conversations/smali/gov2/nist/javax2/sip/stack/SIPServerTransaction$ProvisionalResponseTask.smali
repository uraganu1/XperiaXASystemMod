.class Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionalResponseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

.field ticks:I

.field ticksLeft:I


# virtual methods
.method protected runTask()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 263
    .local v0, "serverTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    .line 269
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    goto :goto_0

    .line 270
    :cond_2
    # invokes: Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->fireReliableResponseRetransmissionTimer()V
    invoke-static {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->access$000(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 271
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    .line 272
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    iput v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    .line 277
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    const/16 v2, 0x40

    if-lt v1, v2, :cond_0

    .line 278
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    .line 279
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    sget-object v2, Lgov2/nist/javax2/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax2/sip/TransactionState;

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->setState(Ljavax2/sip/TransactionState;)V

    .line 280
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->fireTimeoutTimer()V

    goto :goto_0
.end method
