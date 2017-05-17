.class public Lgov2/nist/core/ThreadAuditor$ThreadHandle;
.super Ljava/lang/Object;
.source "ThreadAuditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/core/ThreadAuditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadHandle"
.end annotation


# instance fields
.field private isThreadActive:Z

.field final synthetic this$0:Lgov2/nist/core/ThreadAuditor;

.field private thread:Ljava/lang/Thread;

.field private threadAuditor:Lgov2/nist/core/ThreadAuditor;


# direct methods
.method public constructor <init>(Lgov2/nist/core/ThreadAuditor;Lgov2/nist/core/ThreadAuditor;)V
    .locals 1
    .param p2, "aThreadAuditor"    # Lgov2/nist/core/ThreadAuditor;

    .prologue
    .line 41
    iput-object p1, p0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->this$0:Lgov2/nist/core/ThreadAuditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    .line 44
    iput-object p2, p0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov2/nist/core/ThreadAuditor;

    .line 45
    return-void
.end method


# virtual methods
.method public getPingIntervalInMillisecs()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov2/nist/core/ThreadAuditor;

    invoke-virtual {v0}, Lgov2/nist/core/ThreadAuditor;->getPingIntervalInMillisecs()J

    move-result-wide v0

    return-wide v0
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->threadAuditor:Lgov2/nist/core/ThreadAuditor;

    invoke-virtual {v0, p0}, Lgov2/nist/core/ThreadAuditor;->ping(Lgov2/nist/core/ThreadAuditor$ThreadHandle;)V

    .line 65
    return-void
.end method

.method protected setThreadActive(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive:Z

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Thread Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", Alive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 81
    .local v0, "toString":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
