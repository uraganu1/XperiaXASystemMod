.class public Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "MonitorableThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ThreadPoolExecutor;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mTasks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<TK;",
            "Lcom/sonyericsson/conversations/util/ConditionRunnable",
            "<TK;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    .line 25
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 148
    instance-of v1, p1, Lcom/sonyericsson/conversations/util/ConditionRunnable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 149
    check-cast v0, Lcom/sonyericsson/conversations/util/ConditionRunnable;

    .line 150
    .local v0, "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ConditionRunnable;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ConditionRunnable;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    .end local v0    # "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;
    :cond_0
    return-void

    .line 154
    .restart local v0    # "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;
    :catchall_0
    move-exception v1

    .line 155
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    throw v1
.end method

.method public await(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p2, "timeOut"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    .line 132
    .local v1, "done":Z
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ConditionRunnable;

    .line 135
    .local v0, "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p2, p3, p4}, Lcom/sonyericsson/conversations/util/ConditionRunnable;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 139
    .end local v1    # "done":Z
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 141
    return v1

    .line 138
    .end local v0    # "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    .restart local v1    # "done":Z
    :catchall_0
    move-exception v2

    .line 139
    iget-object v3, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 138
    throw v2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public execute(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TK;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p2, "taskKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 58
    :try_start_0
    new-instance v0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor$1;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor$1;-><init>(Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;Ljava/util/concurrent/locks/Lock;Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 64
    .local v0, "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void

    .line 65
    .end local v0    # "cr":Lcom/sonyericsson/conversations/util/ConditionRunnable;, "Lcom/sonyericsson/conversations/util/ConditionRunnable<TK;>;"
    :catchall_0
    move-exception v1

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    throw v1
.end method

.method public isTaskExecuting(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 80
    .local v0, "isExecuting":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mTasks:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 84
    .local v0, "isExecuting":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    return v0

    .line 83
    .local v0, "isExecuting":Z
    :catchall_0
    move-exception v1

    .line 84
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    throw v1
.end method
