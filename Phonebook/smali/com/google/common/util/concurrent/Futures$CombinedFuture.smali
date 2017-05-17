.class Lcom/google/common/util/concurrent/Futures$CombinedFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TC;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field final allMustSucceed:Z

.field combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner",
            "<TV;TC;>;"
        }
    .end annotation
.end field

.field futures:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final seenExceptionsLock:Ljava/lang/Object;

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Optional",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/google/common/util/concurrent/Futures$CombinedFuture;ILjava/util/concurrent/Future;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "future"    # Ljava/util/concurrent/Future;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1522
    const-class v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 1521
    sput-object v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->logger:Ljava/util/logging/Logger;

    .line 1520
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/Futures$FutureCombiner;)V
    .locals 2
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner",
            "<TV;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 1532
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinedFuture;, "Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    .local p1, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    .local p4, "combiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 1529
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptionsLock:Ljava/lang/Object;

    .line 1536
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 1537
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    .line 1538
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1539
    iput-object p4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1540
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1541
    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->init(Ljava/util/concurrent/Executor;)V

    .line 1535
    return-void
.end method

.method private setExceptionAndMaybeLog(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1611
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinedFuture;, "Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    const/4 v1, 0x0

    .line 1612
    .local v1, "visibleFromOutputFuture":Z
    const/4 v0, 0x1

    .line 1613
    .local v0, "firstTimeSeeingThisException":Z
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v2, :cond_1

    .line 1616
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v1

    .line 1618
    .local v1, "visibleFromOutputFuture":Z
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1619
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptions:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 1620
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptions:Ljava/util/Set;

    .line 1622
    :cond_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "firstTimeSeeingThisException":Z
    monitor-exit v3

    .line 1626
    .end local v0    # "firstTimeSeeingThisException":Z
    .end local v1    # "visibleFromOutputFuture":Z
    :cond_1
    instance-of v2, p1, Ljava/lang/Error;

    if-nez v2, :cond_4

    .line 1627
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    .line 1610
    :cond_2
    :goto_0
    return-void

    .line 1618
    .local v0, "firstTimeSeeingThisException":Z
    .restart local v1    # "visibleFromOutputFuture":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1626
    .end local v0    # "firstTimeSeeingThisException":Z
    .end local v1    # "visibleFromOutputFuture":Z
    :cond_3
    if-eqz v0, :cond_2

    .line 1628
    :cond_4
    sget-object v2, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v4, "input future failed."

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setOneValue(ILjava/util/concurrent/Future;)V
    .locals 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinedFuture;, "Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TV;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1636
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1644
    .local v3, "localValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/Optional<TV;>;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v3, :cond_1

    .line 1649
    :cond_0
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isCancelled()Z

    move-result v7

    .line 1650
    :goto_0
    const-string/jumbo v10, "Future was done before all dependencies completed"

    .line 1649
    invoke-static {v7, v10}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1654
    :cond_1
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v7

    .line 1655
    const-string/jumbo v10, "Tried to set value from future which is not done"

    .line 1654
    invoke-static {v7, v10}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1656
    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    .line 1657
    .local v5, "returnValue":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_2

    .line 1658
    invoke-static {v5}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v7

    invoke-interface {v3, p1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    :cond_2
    iget-object v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 1672
    .local v4, "newRemaining":I
    if-ltz v4, :cond_5

    :goto_1
    const-string/jumbo v7, "Less than 0 remaining futures"

    invoke-static {v8, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1673
    if-nez v4, :cond_3

    .line 1674
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1675
    .local v2, "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 1676
    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    .line 1635
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v5    # "returnValue":Ljava/lang/Object;, "TV;"
    :cond_3
    :goto_2
    return-void

    .end local v4    # "newRemaining":I
    :cond_4
    move v7, v8

    .line 1649
    goto :goto_0

    .restart local v4    # "newRemaining":I
    .restart local v5    # "returnValue":Ljava/lang/Object;, "TV;"
    :cond_5
    move v8, v9

    .line 1672
    goto :goto_1

    .line 1678
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_2

    .line 1668
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v4    # "newRemaining":I
    .end local v5    # "returnValue":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v6

    .line 1669
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0, v6}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setExceptionAndMaybeLog(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    iget-object v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 1672
    .restart local v4    # "newRemaining":I
    if-ltz v4, :cond_7

    :goto_3
    const-string/jumbo v7, "Less than 0 remaining futures"

    invoke-static {v8, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1673
    if-nez v4, :cond_3

    .line 1674
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1675
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 1676
    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_7
    move v8, v9

    .line 1672
    goto :goto_3

    .line 1678
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_2

    .line 1666
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v4    # "newRemaining":I
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1667
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setExceptionAndMaybeLog(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1671
    iget-object v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 1672
    .restart local v4    # "newRemaining":I
    if-ltz v4, :cond_9

    :goto_4
    const-string/jumbo v7, "Less than 0 remaining futures"

    invoke-static {v8, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1673
    if-nez v4, :cond_3

    .line 1674
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1675
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 1676
    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_9
    move v8, v9

    .line 1672
    goto :goto_4

    .line 1678
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_a
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_2

    .line 1660
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v4    # "newRemaining":I
    :catch_2
    move-exception v0

    .line 1661
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    :try_start_3
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v7, :cond_b

    .line 1664
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1671
    :cond_b
    iget-object v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 1672
    .restart local v4    # "newRemaining":I
    if-ltz v4, :cond_c

    :goto_5
    const-string/jumbo v7, "Less than 0 remaining futures"

    invoke-static {v8, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1673
    if-nez v4, :cond_3

    .line 1674
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1675
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    .line 1676
    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_c
    move v8, v9

    .line 1672
    goto :goto_5

    .line 1678
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_d
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_2

    .line 1670
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v4    # "newRemaining":I
    :catchall_0
    move-exception v7

    .line 1671
    iget-object v10, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 1672
    .restart local v4    # "newRemaining":I
    if-ltz v4, :cond_f

    :goto_6
    const-string/jumbo v9, "Less than 0 remaining futures"

    invoke-static {v8, v9}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1673
    if-nez v4, :cond_e

    .line 1674
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1675
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_10

    if-eqz v3, :cond_10

    .line 1676
    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    .line 1670
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_e
    :goto_7
    throw v7

    :cond_f
    move v8, v9

    .line 1672
    goto :goto_6

    .line 1678
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_10
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v8

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_7
.end method


# virtual methods
.method protected init(Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1, "listenerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1549
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinedFuture;, "Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    new-instance v4, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;

    invoke-direct {v4, p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$CombinedFuture;)V

    .line 1569
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v5

    .line 1549
    invoke-virtual {p0, v4, v5}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1574
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1575
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    .line 1576
    return-void

    .line 1580
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1581
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1592
    :cond_1
    const/4 v0, 0x0

    .line 1593
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listenable$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1594
    .local v2, "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    move v1, v0

    .local v1, "index":I
    add-int/lit8 v0, v0, 0x1

    .line 1595
    new-instance v4, Lcom/google/common/util/concurrent/Futures$CombinedFuture$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/common/util/concurrent/Futures$CombinedFuture$2;-><init>(Lcom/google/common/util/concurrent/Futures$CombinedFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v2, v4, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 1547
    .end local v1    # "index":I
    .end local v2    # "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    :cond_2
    return-void
.end method
