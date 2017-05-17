.class public Lgov2/nist/core/ThreadAuditor;
.super Ljava/lang/Object;
.source "ThreadAuditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    }
.end annotation


# instance fields
.field private pingIntervalInMillisecs:J

.field private threadHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Lgov2/nist/core/ThreadAuditor$ThreadHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lgov2/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized addCurrentThread()Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    .locals 3

    .prologue
    monitor-enter p0

    .line 105
    :try_start_0
    new-instance v0, Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    invoke-direct {v0, p0, p0}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;-><init>(Lgov2/nist/core/ThreadAuditor;Lgov2/nist/core/ThreadAuditor;)V

    .line 106
    .local v0, "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    invoke-virtual {p0}, Lgov2/nist/core/ThreadAuditor;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    .line 109
    return-object v0

    .line 107
    :cond_0
    :try_start_1
    iget-object v1, p0, Lgov2/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getPingIntervalInMillisecs()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lgov2/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    iget-wide v2, p0, Lgov2/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized ping(Lgov2/nist/core/ThreadAuditor$ThreadHandle;)V
    .locals 1
    .param p1, "threadHandle"    # Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    .prologue
    monitor-enter p0

    .line 119
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->setThreadActive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 120
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "Thread Auditor - List of monitored threads:\n"

    .line 192
    .local v2, "toString":Ljava/lang/String;
    iget-object v3, p0, Lgov2/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 193
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/core/ThreadAuditor$ThreadHandle;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit p0

    .line 197
    return-object v2

    .line 194
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/core/ThreadAuditor$ThreadHandle;

    .line 195
    .local v1, "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lgov2/nist/core/ThreadAuditor$ThreadHandle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/core/ThreadAuditor$ThreadHandle;>;"
    .end local v1    # "threadHandle":Lgov2/nist/core/ThreadAuditor$ThreadHandle;
    .end local v2    # "toString":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
