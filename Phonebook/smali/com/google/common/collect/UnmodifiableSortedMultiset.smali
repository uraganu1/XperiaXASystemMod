.class final Lcom/google/common/collect/UnmodifiableSortedMultiset;
.super Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
.source "UnmodifiableSortedMultiset.java"

# interfaces
.implements Lcom/google/common/collect/SortedMultiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$UnmodifiableMultiset",
        "<TE;>;",
        "Lcom/google/common/collect/SortedMultiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/UnmodifiableSortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "delegate":Lcom/google/common/collect/SortedMultiset;, "Lcom/google/common/collect/SortedMultiset<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/Multiset;)V

    .line 36
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->createElementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createElementSet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 65
    .local v0, "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 67
    .end local v0    # "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/SortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Lcom/google/common/collect/UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 68
    .restart local v0    # "result":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    iput-object p0, v0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 69
    iput-object v0, p0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    return-object v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "lowerBoundType"    # Lcom/google/common/collect/BoundType;
    .param p4, "upperBoundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    .local p3, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/common/collect/UnmodifiableSortedMultiset;, "Lcom/google/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/google/common/collect/Multisets;->unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method
