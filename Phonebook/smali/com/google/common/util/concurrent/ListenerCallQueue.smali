.class final Lcom/google/common/util/concurrent/ListenerCallQueue;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private isThreadScheduled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final waitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<T",
            "L;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    .line 38
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->waitQueue:Ljava/util/Queue;

    .line 66
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listener:Ljava/lang/Object;

    .line 67
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->executor:Ljava/util/concurrent/Executor;

    .line 65
    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    .local p1, "callback":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->waitQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 71
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method execute()V
    .locals 6

    .prologue
    .line 77
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    const/4 v1, 0x0

    .line 78
    .local v1, "scheduleTaskRunner":Z
    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z

    if-nez v2, :cond_0

    .line 80
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    .line 84
    if-eqz v1, :cond_1

    .line 86
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :cond_1
    return-void

    .line 78
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 90
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 93
    sget-object v2, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while running callbacks for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    throw v0

    .line 89
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public run()V
    .locals 7

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    const/4 v2, 0x1

    .line 106
    .local v2, "stillRunning":Z
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 108
    iget-object v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->waitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    .line 109
    .local v1, "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    if-nez v1, :cond_1

    .line 110
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    const/4 v2, 0x0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    if-eqz v2, :cond_0

    .line 131
    monitor-enter p0

    .line 132
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    .line 101
    :cond_0
    return-void

    :cond_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    :try_start_5
    iget-object v3, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->call(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_6
    sget-object v3, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception while executing callback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->-get0(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    :catchall_0
    move-exception v3

    .line 127
    if-eqz v2, :cond_2

    .line 131
    monitor-enter p0

    .line 132
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->isThreadScheduled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    .line 126
    :cond_2
    throw v3

    .line 106
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit p0

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 131
    .restart local v1    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    :catchall_2
    move-exception v3

    monitor-exit p0

    throw v3

    .end local v1    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback<TL;>;"
    :catchall_3
    move-exception v3

    monitor-exit p0

    throw v3
.end method
