.class Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;
.super Lcom/google/common/util/concurrent/AbstractListeningExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SameThreadExecutorService"
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private runningTasks:I

.field private shutdown:Z

.field private final termination:Ljava/util/concurrent/locks/Condition;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;-><init>()V

    .line 278
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    .line 281
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->termination:Ljava/util/concurrent/locks/Condition;

    .line 290
    iput v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->runningTasks:I

    .line 291
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->shutdown:Z

    .line 272
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;-><init>()V

    return-void
.end method

.method private endTask()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 385
    :try_start_0
    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->runningTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->runningTasks:I

    .line 386
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    return-void

    .line 389
    :catchall_0
    move-exception v0

    .line 390
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 389
    throw v0
.end method

.method private startTask()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v1, "Executor already shutdown"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :catchall_0
    move-exception v0

    .line 375
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 374
    throw v0

    .line 373
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->runningTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->runningTasks:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 367
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 344
    .local v0, "nanos":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 347
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const/4 v2, 0x1

    .line 356
    iget-object v3, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 348
    return v2

    .line 349
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 350
    const/4 v2, 0x0

    .line 356
    iget-object v3, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 350
    return v2

    .line 352
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v2

    .line 356
    iget-object v3, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 355
    throw v2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->startTask()V

    .line 297
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->endTask()V

    .line 294
    return-void

    .line 298
    :catchall_0
    move-exception v0

    .line 299
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->endTask()V

    .line 298
    throw v0
.end method

.method public isShutdown()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 307
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 307
    return v0

    .line 308
    :catchall_0
    move-exception v0

    .line 309
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 308
    throw v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 334
    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->shutdown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->runningTasks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 334
    return v0

    .line 335
    :catchall_0
    move-exception v0

    .line 336
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 335
    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 317
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 314
    return-void

    .line 318
    :catchall_0
    move-exception v0

    .line 319
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 318
    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;->shutdown()V

    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
