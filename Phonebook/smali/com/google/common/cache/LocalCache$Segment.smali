.class Lcom/google/common/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final accessQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile count:I

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final map:Lcom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentWeight:J

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field threshold:I

.field totalWeight:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final writeQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 3
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentWeight"    # J
    .param p5, "statsCounter"    # Lcom/google/common/cache/AbstractCache$StatsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>;IJ",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "map":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 2087
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2068
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2089
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    .line 2090
    iput-wide p3, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    .line 2091
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 2092
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2094
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2095
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 2094
    :goto_0
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2097
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2098
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 2097
    :cond_0
    iput-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2100
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2101
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 2100
    :goto_1
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2104
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2105
    new-instance v0, Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$WriteQueue;-><init>()V

    .line 2104
    :goto_2
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    .line 2108
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2109
    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$AccessQueue;-><init>()V

    .line 2108
    :goto_3
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    .line 2088
    return-void

    :cond_1
    move-object v0, v1

    .line 2095
    goto :goto_0

    .line 2102
    :cond_2
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2106
    :cond_3
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2110
    :cond_4
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method cleanUp()V
    .locals 3

    .prologue
    .line 3437
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3438
    .local v0, "now":J
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3439
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3436
    return-void
.end method

.method clear()V
    .locals 5

    .prologue
    .line 3214
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    iget v3, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v3, :cond_4

    .line 3215
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3217
    :try_start_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3218
    .local v2, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3219
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 3221
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3222
    sget-object v3, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v3}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V

    .line 3219
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 3218
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3226
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3227
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3226
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3229
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearReferenceQueues()V

    .line 3230
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 3231
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 3232
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3234
    iget v3, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3235
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3237
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3238
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3213
    .end local v1    # "i":I
    .end local v2    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    :cond_4
    return-void

    .line 3236
    :catchall_0
    move-exception v3

    .line 3237
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3238
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3236
    throw v3
.end method

.method clearKeyReferenceQueue()V
    .locals 1

    .prologue
    .line 2522
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2521
    return-void
.end method

.method clearReferenceQueues()V
    .locals 1

    .prologue
    .line 2513
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2514
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearKeyReferenceQueue()V

    .line 2516
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2517
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearValueReferenceQueue()V

    .line 2512
    :cond_1
    return-void
.end method

.method clearValueReferenceQueue()V
    .locals 1

    .prologue
    .line 2526
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2525
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2775
    :try_start_0
    iget v4, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v4, :cond_2

    .line 2776
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2777
    .local v2, "now":J
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2778
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2786
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2779
    return v1

    .line 2781
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 2786
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2781
    return v1

    .line 2786
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v2    # "now":J
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2784
    return v1

    .line 2785
    :catchall_0
    move-exception v1

    .line 2786
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2785
    throw v1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    const/4 v8, 0x0

    .line 2797
    :try_start_0
    iget v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_3

    .line 2798
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v7}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 2799
    .local v4, "now":J
    iget-object v6, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2800
    .local v6, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    .line 2801
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2802
    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 2803
    invoke-virtual {p0, v0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v1

    .line 2804
    .local v1, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 2802
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2807
    :cond_1
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v7, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 2808
    const/4 v7, 0x1

    .line 2816
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2808
    return v7

    .line 2801
    .end local v1    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2816
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "now":J
    .end local v6    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2814
    return v8

    .line 2815
    :catchall_0
    move-exception v7

    .line 2816
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2815
    throw v7
.end method

.method copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "original":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "newNext":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v4, 0x0

    .line 2137
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2139
    return-object v4

    .line 2142
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    .line 2143
    .local v2, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2144
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2146
    return-object v4

    .line 2149
    :cond_1
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v3, p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2150
    .local v0, "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v2, v3, v1, v0}, Lcom/google/common/cache/LocalCache$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2151
    return-object v0
.end method

.method drainKeyReferenceQueue()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2484
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2485
    .local v1, "i":I
    :cond_0
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TK;>;"
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 2487
    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2488
    .local v0, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, v0}, Lcom/google/common/cache/LocalCache;->reclaimKey(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 2489
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    .line 2482
    .end local v0    # "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_1
    return-void
.end method

.method drainRecencyQueue()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2589
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 2594
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2595
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2587
    :cond_1
    return-void
.end method

.method drainReferenceQueues()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2473
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2474
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainKeyReferenceQueue()V

    .line 2476
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2477
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainValueReferenceQueue()V

    .line 2472
    :cond_1
    return-void
.end method

.method drainValueReferenceQueue()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2498
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    const/4 v0, 0x0

    .line 2499
    .local v0, "i":I
    :cond_0
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TV;>;"
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 2501
    check-cast v2, Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2502
    .local v2, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, v2}, Lcom/google/common/cache/LocalCache;->reclaimValue(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2503
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 2496
    .end local v2    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    return-void
.end method

.method enqueueNotification(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V
    .locals 3
    .param p2, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2637
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 2636
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "hash"    # I
    .param p4, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2643
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    .line 2644
    invoke-virtual {p4}, Lcom/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2645
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordEviction()V

    .line 2647
    :cond_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v3, Lcom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v2, v3, :cond_1

    .line 2648
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2649
    .local v1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/cache/RemovalNotification;

    invoke-direct {v0, p1, v1, p4}, Lcom/google/common/cache/RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2650
    .local v0, "notification":Lcom/google/common/cache/RemovalNotification;, "Lcom/google/common/cache/RemovalNotification<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2642
    .end local v0    # "notification":Lcom/google/common/cache/RemovalNotification;, "Lcom/google/common/cache/RemovalNotification<TK;TV;>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    return-void
.end method

.method evictEntries()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2660
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2661
    return-void

    .line 2664
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2665
    :cond_1
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 2666
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->getNextEvictable()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2667
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2668
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2659
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_2
    return-void
.end method

.method expand()V
    .locals 18
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2897
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2898
    .local v14, "oldTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    .line 2899
    .local v12, "oldCapacity":I
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-lt v12, v0, :cond_0

    .line 2900
    return-void

    .line 2913
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2914
    .local v5, "newCount":I
    shl-int/lit8 v17, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    .line 2915
    .local v10, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v17

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2916
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .line 2917
    .local v8, "newMask":I
    const/4 v13, 0x0

    .local v13, "oldIndex":I
    :goto_0
    if-ge v13, v12, :cond_6

    .line 2920
    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2922
    .local v3, "head":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 2923
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v11

    .line 2924
    .local v11, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v17

    and-int v4, v17, v8

    .line 2927
    .local v4, "headIndex":I
    if-nez v11, :cond_2

    .line 2928
    invoke-virtual {v10, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2917
    .end local v4    # "headIndex":I
    .end local v11    # "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2933
    .restart local v4    # "headIndex":I
    .restart local v11    # "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_2
    move-object v15, v3

    .line 2934
    .local v15, "tail":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move/from16 v16, v4

    .line 2935
    .local v16, "tailIndex":I
    move-object v2, v11

    .local v2, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v2, :cond_4

    .line 2936
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v17

    and-int v7, v17, v8

    .line 2937
    .local v7, "newIndex":I
    move/from16 v0, v16

    if-eq v7, v0, :cond_3

    .line 2939
    move/from16 v16, v7

    .line 2940
    move-object v15, v2

    .line 2935
    :cond_3
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    goto :goto_1

    .line 2943
    .end local v7    # "newIndex":I
    :cond_4
    move/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2946
    move-object v2, v3

    :goto_2
    if-eq v2, v15, :cond_1

    .line 2947
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v17

    and-int v7, v17, v8

    .line 2948
    .restart local v7    # "newIndex":I
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2949
    .local v9, "newNext":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6

    .line 2950
    .local v6, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v6, :cond_5

    .line 2951
    invoke-virtual {v10, v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2946
    :goto_3
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    goto :goto_2

    .line 2953
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 2954
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 2960
    .end local v2    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v3    # "head":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v4    # "headIndex":I
    .end local v6    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v7    # "newIndex":I
    .end local v9    # "newNext":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v11    # "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v15    # "tail":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v16    # "tailIndex":I
    :cond_6
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2961
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2896
    return-void
.end method

.method expireEntries(J)V
    .locals 3
    .param p1, "now"    # J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2618
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2621
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2622
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2623
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2626
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .restart local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2627
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2628
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2617
    :cond_2
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2753
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_2

    .line 2754
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2755
    .local v6, "now":J
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2756
    .local v2, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-nez v2, :cond_0

    .line 2769
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2757
    return-object v1

    .line 2760
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2761
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_1

    .line 2762
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2763
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2769
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2763
    return-object v0

    .line 2765
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2769
    .end local v2    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "now":J
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2767
    return-object v1

    .line 2768
    :catchall_0
    move-exception v0

    .line 2769
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2768
    throw v0
.end method

.method get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 11
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 2173
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2176
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_1

    .line 2178
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    .line 2179
    .local v2, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v2, :cond_1

    .line 2180
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2181
    .local v6, "now":J
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v5

    .line 2182
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_0

    .line 2183
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2184
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    .line 2185
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2205
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2185
    return-object v1

    .line 2187
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v10

    .line 2188
    .local v10, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2189
    invoke-virtual {p0, v2, p1, v10}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2205
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2189
    return-object v1

    .line 2195
    .end local v2    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "now":J
    .end local v10    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 2205
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2195
    return-object v1

    .line 2196
    :catch_0
    move-exception v9

    .line 2197
    .local v9, "ee":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v9}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2198
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 2199
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2204
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v1

    .line 2205
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2204
    throw v1

    .line 2200
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_2
    :try_start_4
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    .line 2201
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2203
    :cond_3
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 2344
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "newValue":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    const/4 v0, 0x0

    .line 2346
    .local v0, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 2347
    if-nez v0, :cond_1

    .line 2348
    new-instance v1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CacheLoader returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2353
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    .line 2354
    if-nez v0, :cond_0

    .line 2355
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2356
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    .line 2353
    :cond_0
    throw v1

    .line 2350
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 2351
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2354
    if-nez v0, :cond_2

    .line 2355
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2356
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    .line 2352
    :cond_2
    return-object v0
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    const/4 v3, 0x0

    .line 2697
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->getFirst(I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2698
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 2697
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2702
    :cond_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2703
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_2

    .line 2704
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    goto :goto_1

    .line 2708
    :cond_2
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2709
    return-object v0

    .line 2713
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    return-object v3
.end method

.method getFirst(I)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2689
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2690
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v1
.end method

.method getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    const/4 v2, 0x0

    .line 2718
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2719
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2720
    return-object v2

    .line 2721
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p3, p4}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2722
    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    .line 2723
    return-object v2

    .line 2725
    :cond_1
    return-object v0
.end method

.method getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;
    .locals 4
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v2, 0x0

    .line 2733
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2734
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2735
    return-object v2

    .line 2737
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2738
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .line 2739
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2740
    return-object v2

    .line 2743
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2744
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    .line 2745
    return-object v2

    .line 2747
    :cond_2
    return-object v0
.end method

.method getNextEvictable()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2675
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2676
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v2

    .line 2677
    .local v2, "weight":I
    if-lez v2, :cond_0

    .line 2678
    return-object v0

    .line 2681
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v2    # "weight":I
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2118
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2119
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->customWeigher()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2121
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2123
    :cond_0
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2117
    return-void
.end method

.method insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;
    .locals 18
    .param p2, "hash"    # I
    .param p3, "checkTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2405
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 2406
    .local v4, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2408
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v13, v13, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v13}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v10

    .line 2409
    .local v10, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2411
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2412
    .local v9, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    and-int v7, p2, v13

    .line 2413
    .local v7, "index":I
    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2416
    .local v6, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v4, v6

    .local v4, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 2417
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2418
    .local v5, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v13

    move/from16 v0, p2

    if-ne v13, v0, :cond_2

    if-eqz v5, :cond_2

    .line 2419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v13, v13, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 2418
    if-eqz v13, :cond_2

    .line 2422
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v12

    .line 2423
    .local v12, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v12}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2424
    if-eqz p3, :cond_1

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v14

    sub-long v14, v10, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v0, v13, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    move-wide/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v13, v14, v16

    if-gez v13, :cond_1

    .line 2428
    :cond_0
    const/4 v13, 0x0

    .line 2447
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2448
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2428
    return-object v13

    .line 2432
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2434
    new-instance v8, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v8, v12}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2435
    .local v8, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-interface {v4, v8}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2447
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2448
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2436
    return-object v8

    .line 2416
    .end local v8    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .end local v12    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4

    goto :goto_0

    .line 2440
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2441
    new-instance v8, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v8}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V

    .line 2442
    .restart local v8    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4

    .line 2443
    invoke-interface {v4, v8}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2444
    invoke-virtual {v9, v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2447
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2448
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2445
    return-object v8

    .line 2446
    .end local v4    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v7    # "index":I
    .end local v8    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .end local v9    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v10    # "now":J
    :catchall_0
    move-exception v13

    .line 2447
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2448
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2446
    throw v13
.end method

.method loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2323
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 2325
    .local v5, "loadingFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    new-instance v0, Lcom/google/common/cache/LocalCache$Segment$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment$1;-><init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 2335
    sget-object v1, Lcom/google/common/cache/LocalCache;->sameThreadExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 2324
    invoke-interface {v5, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2336
    return-object v5
.end method

.method loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 2317
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2318
    .local v0, "loadingFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 20
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 2212
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    const/16 v16, 0x0

    .line 2213
    .local v16, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    const/4 v9, 0x0

    .line 2214
    .local v9, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v4, 0x1

    .line 2216
    .local v4, "createNewEntry":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2219
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v12

    .line 2220
    .local v12, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 2223
    .local v11, "newCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2224
    .local v14, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    and-int v8, p2, v17

    .line 2225
    .local v8, "index":I
    invoke-virtual {v14, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2227
    .local v7, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v5, v7

    .local v5, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v5, :cond_0

    .line 2228
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2229
    .local v6, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_5

    if-eqz v6, :cond_5

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    .line 2229
    if-eqz v17, :cond_5

    .line 2231
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v16

    .line 2232
    .local v16, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2233
    const/4 v4, 0x0

    .line 2258
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v16    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 2259
    new-instance v10, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v10}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    .local v10, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    if-nez v5, :cond_6

    .line 2262
    .end local v9    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v5

    .line 2263
    invoke-interface {v5, v10}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2264
    invoke-virtual {v14, v8, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v9, v10

    .line 2270
    .end local v10    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2274
    if-eqz v4, :cond_7

    .line 2279
    :try_start_2
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2280
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/google/common/cache/LocalCache$Segment;->loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v17

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2280
    return-object v17

    .line 2235
    .restart local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v9    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .restart local v16    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_5
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v15

    .line 2236
    .local v15, "value":Ljava/lang/Object;, "TV;"
    if-nez v15, :cond_3

    .line 2237
    sget-object v17, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 2250
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2252
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2269
    .end local v5    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v8    # "index":I
    .end local v11    # "newCount":I
    .end local v12    # "now":J
    .end local v14    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v15    # "value":Ljava/lang/Object;, "TV;"
    .end local v16    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :catchall_0
    move-exception v17

    .line 2270
    .end local v9    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2269
    throw v17

    .line 2238
    .restart local v5    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v7    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v8    # "index":I
    .restart local v9    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .restart local v11    # "newCount":I
    .restart local v12    # "now":J
    .restart local v14    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .restart local v15    # "value":Ljava/lang/Object;, "TV;"
    .restart local v16    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v12, v13}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2241
    sget-object v17, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    goto :goto_3

    .line 2243
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2270
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2246
    return-object v15

    .line 2227
    .end local v15    # "value":Ljava/lang/Object;, "TV;"
    .local v16, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_5
    :try_start_7
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    goto/16 :goto_0

    .line 2266
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v9    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .end local v16    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v10    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :cond_6
    :try_start_8
    invoke-interface {v5, v10}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v9, v10

    .end local v10    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local v9, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    goto/16 :goto_2

    .line 2279
    .end local v9    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :catchall_1
    move-exception v17

    :try_start_9
    monitor-exit v5

    throw v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2282
    :catchall_2
    move-exception v17

    .line 2283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2282
    throw v17

    .line 2287
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;

    move-result-object v17

    return-object v17

    .line 2269
    .restart local v10    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :catchall_3
    move-exception v17

    move-object v9, v10

    .end local v10    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .restart local v9    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    goto :goto_4
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2128
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2114
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .locals 1

    .prologue
    .line 3413
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3414
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3412
    :cond_0
    return-void
.end method

.method postWriteCleanup()V
    .locals 0

    .prologue
    .line 3433
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3432
    return-void
.end method

.method preWriteCleanup(J)V
    .locals 1
    .param p1, "now"    # J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3426
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3425
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 23
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2822
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2824
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v8

    .line 2825
    .local v8, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2827
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v20, v4, 0x1

    .line 2828
    .local v20, "newCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    move/from16 v0, v20

    if-le v0, v4, :cond_0

    .line 2829
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 2830
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v20, v4, 0x1

    .line 2833
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v21, v0

    .line 2834
    .local v21, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v19, p2, v4

    .line 2835
    .local v19, "index":I
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2838
    .local v18, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v5, v18

    .local v5, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v5, :cond_5

    .line 2839
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v16

    .line 2840
    .local v16, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_4

    if-eqz v16, :cond_4

    .line 2841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 2840
    if-eqz v4, :cond_4

    .line 2844
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v22

    .line 2845
    .local v22, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface/range {v22 .. v22}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v17

    .line 2847
    .local v17, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v17, :cond_2

    .line 2848
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2849
    invoke-interface/range {v22 .. v22}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2850
    sget-object v4, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    .line 2851
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2852
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    move/from16 v20, v0

    .line 2857
    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2858
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2859
    const/4 v4, 0x0

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2888
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2859
    return-object v4

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    .line 2854
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2855
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v20, v4, 0x1

    goto :goto_1

    .line 2860
    :cond_2
    if-eqz p4, :cond_3

    .line 2864
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2888
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2865
    return-object v17

    .line 2868
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2869
    sget-object v4, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    .line 2870
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2871
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2888
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2872
    return-object v17

    .line 2838
    .end local v17    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v22    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_4
    :try_start_3
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v5

    goto/16 :goto_0

    .line 2878
    .end local v16    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2879
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v11

    .local v11, "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-wide v14, v8

    .line 2880
    invoke-virtual/range {v10 .. v15}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2881
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2882
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v20, v4, 0x1

    .line 2883
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2884
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2885
    const/4 v4, 0x0

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2888
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2885
    return-object v4

    .line 2886
    .end local v5    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v8    # "now":J
    .end local v11    # "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v18    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v19    # "index":I
    .end local v20    # "newCount":I
    .end local v21    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v4

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2888
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2886
    throw v4
.end method

.method reclaimKey(Lcom/google/common/cache/LocalCache$ReferenceEntry;I)Z
    .locals 11
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 3290
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3292
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v8, v0, -0x1

    .line 3293
    .local v8, "newCount":I
    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3294
    .local v10, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 3295
    .local v7, "index":I
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3297
    .local v1, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v2, v1

    .local v2, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 3298
    if-ne v2, p1, :cond_0

    .line 3299
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3301
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    .line 3300
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v9

    .line 3302
    .local v9, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v8, v0, -0x1

    .line 3303
    invoke-virtual {v10, v7, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3304
    iput v8, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3305
    const/4 v0, 0x1

    .line 3311
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3312
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3305
    return v0

    .line 3297
    .end local v9    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3309
    :cond_1
    const/4 v0, 0x0

    .line 3311
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3312
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3309
    return v0

    .line 3310
    .end local v1    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v2    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v7    # "index":I
    .end local v8    # "newCount":I
    .end local v10    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v0

    .line 3311
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3312
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3310
    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;)Z
    .locals 12
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    const/4 v4, 0x0

    .line 3320
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3322
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v8, v0, -0x1

    .line 3323
    .local v8, "newCount":I
    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3324
    .local v10, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 3325
    .local v7, "index":I
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3327
    .local v1, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v2, v1

    .local v2, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_4

    .line 3328
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3329
    .local v3, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    .line 3330
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 3329
    if-eqz v0, :cond_3

    .line 3331
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v11

    .line 3332
    .local v11, "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    if-ne v11, p3, :cond_1

    .line 3333
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3335
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    .line 3334
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v9

    .line 3336
    .local v9, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v8, v0, -0x1

    .line 3337
    invoke-virtual {v10, v7, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3338
    iput v8, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3339
    const/4 v0, 0x1

    .line 3347
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3348
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3349
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3339
    :cond_0
    return v0

    .line 3347
    .end local v9    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3348
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3349
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3341
    :cond_2
    return v4

    .line 3327
    .end local v11    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3347
    .end local v3    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3348
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3349
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3345
    :cond_5
    return v4

    .line 3346
    .end local v1    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v2    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v7    # "index":I
    .end local v8    # "newCount":I
    .end local v10    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v0

    .line 3347
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3348
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3349
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3346
    :cond_6
    throw v0
.end method

.method recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    .locals 2
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2554
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2557
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2553
    return-void
.end method

.method recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    .locals 2
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2539
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2542
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2538
    return-void
.end method

.method recordWrite(Lcom/google/common/cache/LocalCache$ReferenceEntry;IJ)V
    .locals 1
    .param p2, "weight"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;IJ)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2567
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2568
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    .line 2570
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2571
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2573
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2574
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setWriteTime(J)V

    .line 2576
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2577
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2565
    return-void
.end method

.method refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 5
    .param p2, "hash"    # I
    .param p4, "checkTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    const/4 v4, 0x0

    .line 2382
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/LocalCache$Segment;->insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;

    move-result-object v0

    .line 2383
    .local v0, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2384
    return-object v4

    .line 2387
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 2388
    .local v1, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2390
    :try_start_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2391
    :catch_0
    move-exception v2

    .line 2395
    :cond_1
    return-object v4
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 16
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3064
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3066
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 3067
    .local v14, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3069
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v11, v2, -0x1

    .line 3070
    .local v11, "newCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3071
    .local v13, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v10, p2, v2

    .line 3072
    .local v10, "index":I
    invoke-virtual {v13, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3074
    .local v3, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v4, v3

    .local v4, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 3075
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3076
    .local v5, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_2

    if-eqz v5, :cond_2

    .line 3077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 3076
    if-eqz v2, :cond_2

    .line 3078
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v7

    .line 3079
    .local v7, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 3082
    .local v9, "entryValue":Ljava/lang/Object;, "TV;"
    if-eqz v9, :cond_0

    .line 3083
    sget-object v8, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3091
    .local v8, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object/from16 v2, p0

    move/from16 v6, p2

    .line 3092
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v12

    .line 3094
    .local v12, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v11, v2, -0x1

    .line 3095
    invoke-virtual {v13, v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3096
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3103
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3097
    return-object v9

    .line 3084
    .end local v8    # "cause":Lcom/google/common/cache/RemovalCause;
    .end local v12    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3085
    sget-object v8, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8    # "cause":Lcom/google/common/cache/RemovalCause;
    goto :goto_1

    .line 3088
    .end local v8    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_1
    const/4 v2, 0x0

    .line 3103
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3088
    return-object v2

    .line 3074
    .end local v7    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v9    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 3101
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    const/4 v2, 0x0

    .line 3103
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3101
    return-object v2

    .line 3102
    .end local v3    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v4    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v10    # "index":I
    .end local v11    # "newCount":I
    .end local v13    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v14    # "now":J
    :catchall_0
    move-exception v2

    .line 3103
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3102
    throw v2
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 16
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 3169
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 3172
    .local v14, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3174
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v11, v2, -0x1

    .line 3175
    .local v11, "newCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3176
    .local v13, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v10, p2, v2

    .line 3177
    .local v10, "index":I
    invoke-virtual {v13, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3179
    .local v3, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v4, v3

    .local v4, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_4

    .line 3180
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3181
    .local v5, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_3

    if-eqz v5, :cond_3

    .line 3182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 3181
    if-eqz v2, :cond_3

    .line 3183
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v7

    .line 3184
    .local v7, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 3187
    .local v9, "entryValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v9}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3188
    sget-object v8, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3196
    .local v8, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object/from16 v2, p0

    move/from16 v6, p2

    .line 3197
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v12

    .line 3199
    .local v12, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v11, v2, -0x1

    .line 3200
    invoke-virtual {v13, v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3201
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3202
    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, v2, :cond_2

    const/4 v2, 0x1

    .line 3208
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3209
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3202
    return v2

    .line 3189
    .end local v8    # "cause":Lcom/google/common/cache/RemovalCause;
    .end local v12    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    if-nez v9, :cond_1

    :try_start_1
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3190
    sget-object v8, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8    # "cause":Lcom/google/common/cache/RemovalCause;
    goto :goto_1

    .line 3193
    .end local v8    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_1
    const/4 v2, 0x0

    .line 3208
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3209
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3193
    return v2

    .line 3202
    .restart local v8    # "cause":Lcom/google/common/cache/RemovalCause;
    .restart local v12    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 3179
    .end local v7    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v8    # "cause":Lcom/google/common/cache/RemovalCause;
    .end local v9    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v12    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 3206
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    const/4 v2, 0x0

    .line 3208
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3209
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3206
    return v2

    .line 3207
    .end local v3    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v4    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v10    # "index":I
    .end local v11    # "newCount":I
    .end local v13    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v14    # "now":J
    :catchall_0
    move-exception v2

    .line 3208
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3209
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3207
    throw v2
.end method

.method removeCollectedEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3281
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V

    .line 3282
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3283
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3280
    return-void
.end method

.method removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z
    .locals 11
    .param p2, "hash"    # I
    .param p3, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3388
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v8, v0, -0x1

    .line 3389
    .local v8, "newCount":I
    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3390
    .local v10, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    .line 3391
    .local v7, "index":I
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3393
    .local v1, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v2, v1

    .local v2, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 3394
    if-ne v2, p1, :cond_0

    .line 3395
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3397
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    move-object v6, p3

    .line 3396
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v9

    .line 3398
    .local v9, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v8, v0, -0x1

    .line 3399
    invoke-virtual {v10, v7, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3400
    iput v8, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3401
    const/4 v0, 0x1

    return v0

    .line 3393
    .end local v9    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    goto :goto_0

    .line 3405
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method removeEntryFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3264
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3265
    .local v1, "newCount":I
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    .line 3266
    .local v2, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v0, p1

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eq v0, p2, :cond_1

    .line 3267
    invoke-virtual {p0, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v3

    .line 3268
    .local v3, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 3269
    move-object v2, v3

    .line 3266
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3271
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3272
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3275
    .end local v3    # "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_1
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3276
    return-object v2
.end method

.method removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z
    .locals 9
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v8, 0x0

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3357
    :try_start_0
    iget-object v5, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3358
    .local v5, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    and-int v3, p2, v7

    .line 3359
    .local v3, "index":I
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3361
    .local v2, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v0, v2

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 3362
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3363
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v1, :cond_2

    .line 3364
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v7, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 3363
    if-eqz v7, :cond_2

    .line 3365
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v6

    .line 3366
    .local v6, "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    if-ne v6, p3, :cond_1

    .line 3367
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3368
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->getOldValue()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3373
    :goto_1
    const/4 v7, 0x1

    .line 3381
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3382
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3373
    return v7

    .line 3370
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2, v0}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4

    .line 3371
    .local v4, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3380
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v3    # "index":I
    .end local v4    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v5    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v6    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :catchall_0
    move-exception v7

    .line 3381
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3382
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3380
    throw v7

    .line 3381
    .restart local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v3    # "index":I
    .restart local v5    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .restart local v6    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3382
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3375
    return v8

    .line 3361
    .end local v6    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 3381
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3382
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3379
    return v8
.end method

.method removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "hash"    # I
    .param p6, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3248
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    .local p5, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 3249
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3250
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3252
    invoke-interface {p5}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3253
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 3254
    return-object p1

    .line 3256
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3018
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3020
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 3021
    .local v14, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v20, v0

    .line 3024
    .local v20, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v17, p2, v4

    .line 3025
    .local v17, "index":I
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3027
    .local v5, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v6, v5

    .local v6, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_3

    .line 3028
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 3029
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_2

    if-eqz v7, :cond_2

    .line 3030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 3029
    if-eqz v4, :cond_2

    .line 3031
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v9

    .line 3032
    .local v9, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v16

    .line 3033
    .local v16, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v16, :cond_1

    .line 3034
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3036
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v18, v4, -0x1

    .line 3037
    .local v18, "newCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3039
    sget-object v10, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v4, p0

    move/from16 v8, p2

    .line 3038
    invoke-virtual/range {v4 .. v10}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v19

    .line 3040
    .local v19, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v18, v4, -0x1

    .line 3041
    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3042
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3044
    .end local v18    # "newCount":I
    .end local v19    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    const/4 v4, 0x0

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3058
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3044
    return-object v4

    .line 3047
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3048
    sget-object v4, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9, v4}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    move-object/from16 v10, p0

    move-object v11, v6

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    .line 3049
    invoke-virtual/range {v10 .. v15}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3050
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3058
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3051
    return-object v16

    .line 3027
    .end local v9    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v16    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_2
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto/16 :goto_0

    .line 3055
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    const/4 v4, 0x0

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3058
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3055
    return-object v4

    .line 3056
    .end local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v14    # "now":J
    .end local v17    # "index":I
    .end local v20    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v4

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3058
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3056
    throw v4
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 21
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2965
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2967
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 2968
    .local v14, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v20, v0

    .line 2971
    .local v20, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v17, p2, v4

    .line 2972
    .local v17, "index":I
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2974
    .local v5, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v6, v5

    .local v6, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_4

    .line 2975
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 2976
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_3

    if-eqz v7, :cond_3

    .line 2977
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 2976
    if-eqz v4, :cond_3

    .line 2978
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v9

    .line 2979
    .local v9, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v16

    .line 2980
    .local v16, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v16, :cond_1

    .line 2981
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2983
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v18, v4, -0x1

    .line 2984
    .local v18, "newCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2986
    sget-object v10, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v4, p0

    move/from16 v8, p2

    .line 2985
    invoke-virtual/range {v4 .. v10}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v19

    .line 2987
    .local v19, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v18, v4, -0x1

    .line 2988
    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2989
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2991
    .end local v18    # "newCount":I
    .end local v19    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    const/4 v4, 0x0

    .line 3011
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3012
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2991
    return v4

    .line 2994
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2995
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2996
    sget-object v4, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9, v4}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    move-object/from16 v10, p0

    move-object v11, v6

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    .line 2997
    invoke-virtual/range {v10 .. v15}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2998
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2999
    const/4 v4, 0x1

    .line 3011
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3012
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2999
    return v4

    .line 3003
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3004
    const/4 v4, 0x0

    .line 3011
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3012
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3004
    return v4

    .line 2974
    .end local v9    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v16    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_3
    :try_start_3
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    goto/16 :goto_0

    .line 3009
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    const/4 v4, 0x0

    .line 3011
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3012
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3009
    return v4

    .line 3010
    .end local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v14    # "now":J
    .end local v17    # "index":I
    .end local v20    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v4

    .line 3011
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3012
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3010
    throw v4
.end method

.method runLockedCleanup(J)V
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 3443
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3445
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V

    .line 3446
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V

    .line 3447
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3449
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3442
    :cond_0
    return-void

    .line 3448
    :catchall_0
    move-exception v0

    .line 3449
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3448
    throw v0
.end method

.method runUnlockedCleanup()V
    .locals 1

    .prologue
    .line 3456
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3457
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->processPendingNotifications()V

    .line 3454
    :cond_0
    return-void
.end method

.method scheduleRefresh(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 7
    .param p3, "hash"    # I
    .param p5, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TK;ITV;J",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2363
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "oldValue":Ljava/lang/Object;, "TV;"
    .local p7, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache;->refreshes()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long v2, p5, v2

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v4, v1, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2364
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2370
    :cond_0
    return-object p4

    .line 2365
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p2, p3, p7, v1}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2366
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 2367
    return-object v0
.end method

.method setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 6
    .param p4, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    .line 2159
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2160
    .local v0, "previous":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->weigher:Lcom/google/common/cache/Weigher;

    invoke-interface {v4, p2, p3}, Lcom/google/common/cache/Weigher;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 2161
    .local v2, "weight":I
    if-ltz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    const-string/jumbo v4, "Weights must be non-negative"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2164
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v3, p0, p1, p3, v2}, Lcom/google/common/cache/LocalCache$Strength;->referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 2165
    .local v1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p1, v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2166
    invoke-virtual {p0, p1, v2, p4, p5}, Lcom/google/common/cache/LocalCache$Segment;->recordWrite(Lcom/google/common/cache/LocalCache$ReferenceEntry;IJ)V

    .line 2167
    invoke-interface {v0, p3}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 2158
    return-void
.end method

.method storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    .locals 26
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3110
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3112
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v6}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v10

    .line 3113
    .local v10, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3115
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v23, v6, 0x1

    .line 3116
    .local v23, "newCount":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    move/from16 v0, v23

    if-le v0, v6, :cond_0

    .line 3117
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 3118
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v23, v6, 0x1

    .line 3121
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v24, v0

    .line 3122
    .local v24, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int v22, p2, v6

    .line 3123
    .local v22, "index":I
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3125
    .local v21, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v7, v21

    .local v7, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v7, :cond_6

    .line 3126
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v19

    .line 3127
    .local v19, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v6

    move/from16 v0, p2

    if-ne v6, v0, :cond_5

    if-eqz v19, :cond_5

    .line 3128
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 3127
    if-eqz v6, :cond_5

    .line 3129
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v25

    .line 3130
    .local v25, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface/range {v25 .. v25}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v20

    .line 3133
    .local v20, "entryValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 3134
    if-nez v20, :cond_4

    sget-object v6, Lcom/google/common/cache/LocalCache;->UNSET:Lcom/google/common/cache/LocalCache$ValueReference;

    move-object/from16 v0, v25

    if-eq v0, v6, :cond_4

    .line 3135
    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3136
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3138
    if-nez v20, :cond_3

    sget-object v18, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3139
    .local v18, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 3140
    add-int/lit8 v23, v23, -0x1

    .end local v18    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_2
    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    .line 3142
    invoke-virtual/range {v6 .. v11}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3143
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3144
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3145
    const/4 v6, 0x1

    .line 3163
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3164
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3145
    return v6

    .line 3138
    :cond_3
    :try_start_1
    sget-object v18, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    .restart local v18    # "cause":Lcom/google/common/cache/RemovalCause;
    goto :goto_1

    .line 3149
    .end local v18    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_4
    new-instance v25, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;

    .end local v25    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v6}, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;-><init>(Ljava/lang/Object;I)V

    .line 3150
    .restart local v25    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    sget-object v6, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3151
    const/4 v6, 0x0

    .line 3163
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3164
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3151
    return v6

    .line 3125
    .end local v20    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v25    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_5
    :try_start_2
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v7

    goto/16 :goto_0

    .line 3155
    .end local v19    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v13

    .local v13, "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-wide/from16 v16, v10

    .line 3157
    invoke-virtual/range {v12 .. v17}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3158
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3159
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3160
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3161
    const/4 v6, 0x1

    .line 3163
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3164
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3161
    return v6

    .line 3162
    .end local v7    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v10    # "now":J
    .end local v13    # "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v21    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v22    # "index":I
    .end local v23    # "newCount":I
    .end local v24    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v6

    .line 3163
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3164
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3162
    throw v6
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 2458
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2460
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2462
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2457
    :cond_0
    return-void

    .line 2461
    :catchall_0
    move-exception v0

    .line 2462
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2461
    throw v0
.end method

.method tryExpireEntries(J)V
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 2606
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2608
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2610
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2605
    :cond_0
    return-void

    .line 2609
    :catchall_0
    move-exception v0

    .line 2610
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2609
    throw v0
.end method

.method waitForLoadingValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TK;",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2293
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2294
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2297
    :cond_0
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    const-string/jumbo v6, "Recursive load of: %s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p2, v7, v4

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2300
    :try_start_0
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v2

    .line 2301
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_2

    .line 2302
    new-instance v3, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CacheLoader returned null for key "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v3

    .line 2309
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2308
    throw v3

    :cond_1
    move v3, v5

    .line 2297
    goto :goto_0

    .line 2305
    .restart local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 2306
    .local v0, "now":J
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2309
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2307
    return-object v2
.end method
