.class public final Lcom/google/common/collect/Queues;
.super Ljava/lang/Object;
.source "Queues.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drain(Ljava/util/concurrent/BlockingQueue;Ljava/util/Collection;IJLjava/util/concurrent/TimeUnit;)I
    .locals 9
    .param p2, "numElements"    # I
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;",
            "Ljava/util/Collection",
            "<-TE;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    .local p1, "buffer":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 203
    .local v2, "deadline":J
    const/4 v0, 0x0

    .line 204
    .local v0, "added":I
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    .line 207
    sub-int v4, p2, v0

    invoke-interface {p0, p1, v4}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v4

    add-int/2addr v0, v4

    .line 208
    if-ge v0, p2, :cond_0

    .line 209
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_2

    .line 217
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return v0

    .line 213
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static drainUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/util/Collection;IJLjava/util/concurrent/TimeUnit;)I
    .locals 15
    .param p2, "numElements"    # I
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;",
            "Ljava/util/Collection",
            "<-TE;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")I"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    .local p1, "buffer":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    add-long v6, v10, v12

    .line 238
    .local v6, "deadline":J
    const/4 v4, 0x0

    .line 239
    .local v4, "added":I
    const/4 v9, 0x0

    .line 241
    .local v9, "interrupted":Z
    :cond_0
    :goto_0
    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    .line 244
    sub-int v10, p2, v4

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {p0, v0, v10}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    add-int/2addr v4, v10

    .line 245
    move/from16 v0, p2

    if-ge v4, v0, :cond_0

    .line 249
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v10, v6, v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v10, v11, v12}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 255
    .local v5, "e":Ljava/lang/Object;, "TE;"
    if-nez v5, :cond_3

    .line 263
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    if-eqz v9, :cond_2

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 267
    :cond_2
    return v4

    .line 251
    :catch_0
    move-exception v8

    .line 252
    .local v8, "ex":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    goto :goto_1

    .line 258
    .end local v8    # "ex":Ljava/lang/InterruptedException;
    .restart local v5    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v10

    .line 263
    if-eqz v9, :cond_4

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    .line 262
    :cond_4
    throw v10
.end method

.method public static newArrayBlockingQueue(I)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    return-object v0
.end method

.method public static newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method public static newConcurrentLinkedQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 69
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 70
    .local v0, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 71
    return-object v0
.end method

.method public static newLinkedBlockingQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    return-object v0
.end method

.method public static newLinkedBlockingQueue(I)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedBlockingQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 104
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 105
    .local v0, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 106
    return-object v0
.end method

.method public static newPriorityBlockingQueue()Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    return-object v0
.end method

.method public static newPriorityBlockingQueue(Ljava/lang/Iterable;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 136
    :cond_0
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 137
    .local v0, "queue":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 138
    return-object v0
.end method

.method public static newPriorityQueue()Ljava/util/PriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    return-object v0
.end method

.method public static newPriorityQueue(Ljava/lang/Iterable;)Ljava/util/PriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 166
    :cond_0
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 167
    .local v0, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 168
    return-object v0
.end method

.method public static newSynchronousQueue()Ljava/util/concurrent/SynchronousQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/SynchronousQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    return-object v0
.end method

.method public static synchronizedQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue",
            "<TE;>;)",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->queue(Ljava/util/Queue;Ljava/lang/Object;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
