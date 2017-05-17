.class Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPTransactionStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

.field threadHandle:Lgov2/nist/core/ThreadAuditor$ThreadHandle;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/core/ThreadAuditor$ThreadHandle;)V
    .locals 0
    .param p2, "a_oThreadHandle"    # Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    .prologue
    .line 388
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 389
    iput-object p2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    .line 390
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    if-eqz v0, :cond_1

    .line 403
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    invoke-virtual {v0}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 406
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    iget-object v3, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    invoke-direct {v1, v2, v3}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;-><init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/core/ThreadAuditor$ThreadHandle;)V

    iget-object v2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    invoke-virtual {v2}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov2/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/core/ThreadAuditor;->addCurrentThread()Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$PingTimer;->threadHandle:Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    goto :goto_1
.end method
