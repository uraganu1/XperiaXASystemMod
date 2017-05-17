.class Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListenerExecutionMaxTimer"
.end annotation


# instance fields
.field serverTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;


# direct methods
.method constructor <init>(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V
    .locals 1

    .prologue
    .line 300
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 298
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 301
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 4

    .prologue
    .line 305
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getState()Ljavax2/sip/TransactionState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->terminate()V

    .line 307
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v1

    .line 308
    .local v1, "sipStack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;)V

    .line 309
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->serverTransaction:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeTransaction(Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v1    # "sipStack":Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    :catch_0
    move-exception v0

    .line 313
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v2, v2, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    iget-object v2, v2, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v2

    const-string/jumbo v3, "unexpected exception"

    invoke-interface {v2, v3, v0}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
