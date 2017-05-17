.class public abstract Lcom/google/common/util/concurrent/AbstractListeningExecutorService;
.super Ljava/lang/Object;
.source "AbstractListeningExecutorService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListeningExecutorService;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v11, 0x1

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 90
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v4, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 93
    .local v0, "done":Z
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Callable;

    .line 94
    .local v7, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {v7}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v1

    .line 95
    .local v1, "f":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    .end local v1    # "f":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    .end local v7    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v8    # "t$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    .line 108
    if-nez v0, :cond_5

    .line 109
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "f$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 110
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v2, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 98
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v3    # "f$iterator":Ljava/util/Iterator;
    .restart local v8    # "t$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "f$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 99
    .restart local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    .line 101
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v5

    .local v5, "ignore":Ljava/util/concurrent/CancellationException;
    goto :goto_2

    .end local v5    # "ignore":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v6

    .local v6, "ignore":Ljava/util/concurrent/ExecutionException;
    goto :goto_2

    .line 105
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v6    # "ignore":Ljava/util/concurrent/ExecutionException;
    :cond_3
    const/4 v0, 0x1

    .line 108
    if-nez v0, :cond_4

    .line 109
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 110
    .restart local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v2, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    .line 106
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_4
    return-object v4

    .line 107
    .end local v3    # "f$iterator":Ljava/util/Iterator;
    .end local v8    # "t$iterator":Ljava/util/Iterator;
    :cond_5
    throw v9
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 22
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 120
    :cond_0
    new-instance v20, Ljava/lang/NullPointerException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    throw v20

    .line 122
    :cond_1
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    .line 123
    .local v14, "nanos":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v7, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v4, 0x0

    .line 126
    .local v4, "done":Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/Callable;

    .line 127
    .local v11, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {v11}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    .end local v11    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v18    # "t$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v20

    .line 163
    if-nez v4, :cond_c

    .line 164
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "f$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 165
    .local v5, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 130
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v6    # "f$iterator":Ljava/util/Iterator;
    .restart local v18    # "t$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 134
    .local v12, "lastTime":J
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 135
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 136
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 137
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .line 138
    .local v16, "now":J
    sub-long v20, v16, v12

    sub-long v14, v14, v20

    .line 139
    move-wide/from16 v12, v16

    .line 140
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-gtz v20, :cond_3

    .line 163
    if-nez v4, :cond_4

    .line 164
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "f$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 165
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    .line 141
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v6    # "f$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v7

    .line 145
    .end local v16    # "now":J
    :cond_5
    :try_start_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "f$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 146
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v20

    if-nez v20, :cond_6

    .line 147
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-gtz v20, :cond_8

    .line 163
    if-nez v4, :cond_7

    .line 164
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v5, Ljava/util/concurrent/Future;

    .line 165
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 148
    :cond_7
    return-object v7

    .line 151
    :cond_8
    :try_start_3
    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v20

    invoke-interface {v5, v14, v15, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :goto_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v16

    .line 156
    .restart local v16    # "now":J
    sub-long v20, v16, v12

    sub-long v14, v14, v20

    .line 157
    move-wide/from16 v12, v16

    goto :goto_3

    .line 152
    .end local v16    # "now":J
    :catch_0
    move-exception v19

    .line 163
    .local v19, "toe":Ljava/util/concurrent/TimeoutException;
    if-nez v4, :cond_9

    .line 164
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v5, Ljava/util/concurrent/Future;

    .line 165
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    .line 153
    :cond_9
    return-object v7

    .line 160
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v19    # "toe":Ljava/util/concurrent/TimeoutException;
    :cond_a
    const/4 v4, 0x1

    .line 163
    if-nez v4, :cond_b

    .line 164
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 165
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_7

    .line 161
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_b
    return-object v7

    .line 162
    .end local v6    # "f$iterator":Ljava/util/Iterator;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v12    # "lastTime":J
    .end local v18    # "t$iterator":Ljava/util/Iterator;
    :cond_c
    throw v20

    .line 152
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v6    # "f$iterator":Ljava/util/Iterator;
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v12    # "lastTime":J
    .restart local v18    # "t$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v8

    .local v8, "ignore":Ljava/util/concurrent/CancellationException;
    goto :goto_5

    .end local v8    # "ignore":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v9

    .local v9, "ignore":Ljava/util/concurrent/ExecutionException;
    goto :goto_5
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2, v3}, Lcom/google/common/util/concurrent/MoreExecutors;->invokeAnyImpl(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "cannotHappen":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->invokeAnyImpl(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 50
    .local v0, "ftask":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 57
    .local v0, "ftask":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 64
    .local v0, "ftask":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
