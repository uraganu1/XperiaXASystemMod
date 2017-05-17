.class public final Lcom/google/common/util/concurrent/MoreExecutors;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/MoreExecutors$Application;,
        Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;,
        Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;,
        Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    invoke-static {p0}, Lcom/google/common/util/concurrent/MoreExecutors;->useDaemonThreadFactory(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p0, "service"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "terminationTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 126
    return-void
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .param p1, "terminationTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p1, "terminationTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static invokeAnyImpl(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .locals 23
    .param p0, "executorService"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
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
    .line 609
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    .line 611
    .local v13, "ntasks":I
    if-lez v13, :cond_1

    const/16 v19, 0x1

    :goto_0
    invoke-static/range {v19 .. v19}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 612
    invoke-static {v13}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 613
    .local v11, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-static {}, Lcom/google/common/collect/Queues;->newLinkedBlockingQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v10

    .line 624
    .local v10, "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v5, 0x0

    .line 625
    .local v5, "ee":Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 626
    .local v14, "lastTime":J
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 628
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lcom/google/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    add-int/lit8 v13, v13, -0x1

    .line 630
    const/4 v4, 0x1

    .local v4, "active":I
    move-object v6, v5

    .line 633
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v6, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_2
    :try_start_1
    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 634
    .local v8, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v8, :cond_0

    .line 635
    if-lez v13, :cond_3

    .line 636
    add-int/lit8 v13, v13, -0x1

    .line 637
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lcom/google/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 638
    add-int/lit8 v4, v4, 0x1

    .line 653
    :cond_0
    :goto_3
    if-eqz v8, :cond_a

    .line 654
    add-int/lit8 v4, v4, -0x1

    .line 656
    :try_start_2
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v19

    .line 670
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "f$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v8, Ljava/util/concurrent/Future;

    .line 671
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 611
    .end local v4    # "active":I
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v9    # "f$iterator":Ljava/util/Iterator;
    .end local v10    # "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v11    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v14    # "lastTime":J
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 625
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v10    # "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v11    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    :cond_2
    const-wide/16 v14, 0x0

    .restart local v14    # "lastTime":J
    goto :goto_1

    .line 639
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v4    # "active":I
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_3
    if-nez v4, :cond_4

    .line 665
    if-nez v6, :cond_9

    .line 666
    :try_start_3
    new-instance v5, Ljava/util/concurrent/ExecutionException;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 668
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v5, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_5
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 669
    .end local v4    # "active":I
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v14    # "lastTime":J
    :catchall_0
    move-exception v19

    .line 670
    :goto_6
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "f$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 671
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_7

    .line 641
    .end local v9    # "f$iterator":Ljava/util/Iterator;
    .restart local v4    # "active":I
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v14    # "lastTime":J
    :cond_4
    if-eqz p2, :cond_6

    .line 642
    :try_start_5
    sget-object v19, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p3

    move-object/from16 v2, v19

    invoke-interface {v10, v0, v1, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v8, Ljava/util/concurrent/Future;

    .line 643
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v8, :cond_5

    .line 644
    new-instance v19, Ljava/util/concurrent/TimeoutException;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v19

    .line 669
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catchall_1
    move-exception v19

    move-object v5, v6

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_6

    .line 646
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 647
    .local v16, "now":J
    sub-long v20, v16, v14

    sub-long p3, p3, v20

    .line 648
    move-wide/from16 v14, v16

    goto :goto_3

    .line 650
    .end local v16    # "now":J
    :cond_6
    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v8, Ljava/util/concurrent/Future;

    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    goto :goto_3

    .line 656
    .restart local v9    # "f$iterator":Ljava/util/Iterator;
    :cond_7
    return-object v19

    .line 659
    .end local v9    # "f$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v18

    .line 660
    .local v18, "rex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/util/concurrent/ExecutionException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v18    # "rex":Ljava/lang/RuntimeException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    :goto_8
    move-object v6, v5

    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto/16 :goto_2

    .line 657
    :catch_1
    move-exception v7

    .line 658
    .local v7, "eex":Ljava/util/concurrent/ExecutionException;
    move-object v5, v7

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_8

    .line 669
    .end local v4    # "active":I
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v7    # "eex":Ljava/util/concurrent/ExecutionException;
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v14    # "lastTime":J
    .restart local v9    # "f$iterator":Ljava/util/Iterator;
    :cond_8
    throw v19

    .end local v9    # "f$iterator":Ljava/util/Iterator;
    .restart local v4    # "active":I
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v14    # "lastTime":J
    :cond_9
    move-object v5, v6

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_5

    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_a
    move-object v5, v6

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_8
.end method

.method private static isAppEngine()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 720
    const-string/jumbo v5, "com.google.appengine.runtime.environment"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 721
    return v4

    .line 725
    :cond_0
    :try_start_0
    const-string/jumbo v5, "com.google.apphosting.api.ApiProxy"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 726
    const-string/jumbo v6, "getCurrentEnvironment"

    .line 725
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 727
    const/4 v7, 0x0

    .line 725
    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 737
    :catch_0
    move-exception v2

    .line 739
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    return v4

    .line 734
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 736
    .local v1, "e":Ljava/lang/IllegalAccessException;
    return v4

    .line 731
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 733
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    return v4

    .line 728
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return v4
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 1
    .param p0, "delegate"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 415
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_0

    .line 416
    check-cast p0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 415
    .end local p0    # "delegate":Ljava/util/concurrent/ExecutorService;
    :goto_0
    return-object p0

    .line 417
    .restart local p0    # "delegate":Ljava/util/concurrent/ExecutorService;
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 418
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .end local p0    # "delegate":Ljava/util/concurrent/ExecutorService;
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_0

    .line 419
    .restart local p0    # "delegate":Ljava/util/concurrent/ExecutorService;
    :cond_1
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;
    .locals 1
    .param p0, "delegate"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 443
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 444
    check-cast p0, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .line 443
    .end local p0    # "delegate":Ljava/util/concurrent/ScheduledExecutorService;
    :goto_0
    return-object p0

    .line 445
    .restart local p0    # "delegate":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 748
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->platformThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    .line 752
    .local v1, "result":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    return-object v1

    .line 753
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static platformThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 7
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 701
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v4

    if-nez v4, :cond_0

    .line 702
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v4

    return-object v4

    .line 705
    :cond_0
    :try_start_0
    const-string/jumbo v4, "com.google.appengine.api.ThreadManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 706
    const-string/jumbo v5, "currentRequestThreadFactory"

    .line 705
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 707
    const/4 v6, 0x0

    .line 705
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 714
    :catch_0
    move-exception v3

    .line 715
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 712
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 713
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 710
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 708
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static renamingDecorator(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, "nameSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    return-object p0

    .line 781
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$2;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method static renamingDecorator(Ljava/util/concurrent/ExecutorService;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "service"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, "nameSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    return-object p0

    .line 808
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$3;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method static renamingDecorator(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "service"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/ScheduledExecutorService;"
        }
    .end annotation

    .prologue
    .line 832
    .local p1, "nameSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    return-object p0

    .line 838
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$4;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;-><init>(Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;)V

    return-object v0
.end method

.method public static shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p0, "service"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 875
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 879
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long v0, v4, v6

    .line 881
    .local v0, "halfTimeoutNanos":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 883
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 885
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    .end local v0    # "halfTimeoutNanos":J
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    return v3

    .line 887
    :catch_0
    move-exception v2

    .line 889
    .local v2, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 891
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method private static submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0, "executorService"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 683
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    new-instance v1, Lcom/google/common/util/concurrent/MoreExecutors$1;

    invoke-direct {v1, p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors$1;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 687
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 683
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 688
    return-object v0
.end method

.method private static useDaemonThreadFactory(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 228
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    .line 229
    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 227
    return-void
.end method
