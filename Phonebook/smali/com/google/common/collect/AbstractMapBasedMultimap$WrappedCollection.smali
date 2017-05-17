.class Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMapBasedMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation
.end field

.field final ancestorDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMapBasedMultimap",
            "<TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "this$0":Lcom/google/common/collect/AbstractMapBasedMultimap;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .local p4, "ancestor":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    const/4 v0, 0x0

    .line 358
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    .line 361
    iput-object p3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 362
    iput-object p4, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    .line 364
    if-nez p4, :cond_0

    .line 363
    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    .line 359
    return-void

    .line 364
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 502
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 503
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 504
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 505
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-get1(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-set0(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 506
    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    .line 510
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    const/4 v4, 0x0

    .line 520
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    return v4

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v2

    .line 524
    .local v2, "oldSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 525
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 526
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 527
    .local v1, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-get1(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v4

    sub-int v5, v1, v2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-set0(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 528
    if-nez v2, :cond_1

    .line 529
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    .line 532
    .end local v1    # "newSize":I
    :cond_1
    return v0
.end method

.method addToMap()V
    .locals 3

    .prologue
    .line 412
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    .line 411
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-get0(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 546
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    .line 547
    .local v0, "oldSize":I
    if-nez v0, :cond_0

    .line 548
    return-void

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 551
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-get1(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-set0(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 552
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 545
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 536
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 537
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 541
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 542
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 425
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    if-ne p1, p0, :cond_0

    .line 426
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 429
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/AbstractMapBasedMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    return-object v0
.end method

.method getDelegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 433
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 434
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 448
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method

.method refreshIfEmpty()V
    .locals 3

    .prologue
    .line 375
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 377
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    if-eq v1, v2, :cond_1

    .line 378
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-get0(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 382
    .local v0, "newDelegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_1

    .line 383
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 374
    .end local v0    # "newDelegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 556
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 557
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 558
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-get1(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-set0(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 562
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    const/4 v3, 0x0

    return v3

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v2

    .line 570
    .local v2, "oldSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 571
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 572
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 573
    .local v1, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-get1(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v4

    sub-int v5, v1, v2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-set0(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 574
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 576
    .end local v1    # "newSize":I
    :cond_1
    return v0
.end method

.method removeIfEmpty()V
    .locals 2

    .prologue
    .line 393
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-get0(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v2

    .line 582
    .local v2, "oldSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 583
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 584
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 585
    .local v1, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-get1(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v4

    sub-int v5, v1, v2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMapBasedMultimap;->-set0(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 586
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 588
    .end local v1    # "newSize":I
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 420
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 421
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 439
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
