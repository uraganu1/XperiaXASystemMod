.class Lcom/google/common/collect/Synchronized$SynchronizedMultiset;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 1
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, "delegate":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/Synchronized$SynchronizedCollection;)V

    .line 421
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 431
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method delegate()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 425
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->-wrap3(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->-wrap3(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 485
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    if-ne p1, p0, :cond_0

    .line 486
    const/4 v0, 0x1

    return v0

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 494
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "n"    # I

    .prologue
    .line 445
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 2
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
