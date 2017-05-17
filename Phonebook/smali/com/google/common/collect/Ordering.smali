.class public abstract Lcom/google/common/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;,
        Lcom/google/common/collect/Ordering$ArbitraryOrdering;,
        Lcom/google/common/collect/Ordering$IncomparableValueException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final LEFT_IS_GREATER:I = 0x1

.field static final RIGHT_IS_GREATER:I = -0x1


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 319
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allEqual()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    sget-object v0, Lcom/google/common/collect/AllEqualOrdering;->INSTANCE:Lcom/google/common/collect/AllEqualOrdering;

    return-object v0
.end method

.method public static arbitrary()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;->ARBITRARY_ORDERING:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static compound(Ljava/lang/Iterable;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Comparator",
            "<-TT;>;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "comparators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Comparator<-TT;>;>;"
    new-instance v0, Lcom/google/common/collect/CompoundOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompoundOrdering;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs explicit(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "leastValue":Ljava/lang/Object;, "TT;"
    .local p1, "remainingValuesInOrder":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->explicit(Ljava/util/List;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public static explicit(Ljava/util/List;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "valuesInOrder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lcom/google/common/collect/ExplicitOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ExplicitOrdering;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static from(Lcom/google/common/collect/Ordering;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    .local p0, "ordering":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    instance-of v0, p0, Lcom/google/common/collect/Ordering;

    if-eqz v0, :cond_0

    .line 125
    check-cast p0, Lcom/google/common/collect/Ordering;

    .line 124
    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :goto_0
    return-object p0

    .line 126
    .restart local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static natural()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/Ordering",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    return-object v0
.end method

.method private partition([Ljava/lang/Object;III)I
    .locals 4
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "pivotIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>([TE;III)I"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TE;"
    aget-object v1, p1, p4

    .line 742
    .local v1, "pivotValue":Ljava/lang/Object;, "TE;"
    aget-object v3, p1, p3

    aput-object v3, p1, p4

    .line 743
    aput-object v1, p1, p3

    .line 745
    move v2, p2

    .line 746
    .local v2, "storeIndex":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 747
    aget-object v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 748
    invoke-static {p1, v2, v0}, Lcom/google/common/collect/ObjectArrays;->swap([Ljava/lang/Object;II)V

    .line 749
    add-int/lit8 v2, v2, 0x1

    .line 746
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_1
    invoke-static {p1, p3, v2}, Lcom/google/common/collect/ObjectArrays;->swap([Ljava/lang/Object;II)V

    .line 753
    return v2
.end method

.method public static usingToString()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/google/common/collect/UsingToStringOrdering;->INSTANCE:Lcom/google/common/collect/UsingToStringOrdering;

    return-object v0
.end method


# virtual methods
.method public binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 899
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "sortedList":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public compound(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/Comparator",
            "<-TU;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    new-instance v1, Lcom/google/common/collect/CompoundOrdering;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/CompoundOrdering;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public greatestOf(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 1
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Ordering;->leastOf(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greatestOf(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 1
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Ordering;->leastOf(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v0

    .line 841
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 842
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 844
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 845
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method public isOrdered(Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v4, 0x0

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 856
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 857
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 858
    .local v2, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 859
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 860
    .local v1, "next":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 861
    return v4

    .line 863
    :cond_0
    move-object v2, v1

    goto :goto_0

    .line 866
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public isStrictlyOrdered(Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v4, 0x0

    .line 876
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 877
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 878
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 879
    .local v2, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 880
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 881
    .local v1, "next":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 882
    return v4

    .line 884
    :cond_0
    move-object v2, v1

    goto :goto_0

    .line 887
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public leastOf(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 8
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 614
    check-cast v1, Ljava/util/Collection;

    .line 615
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-long v2, v2

    int-to-long v4, p2

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 621
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 622
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 623
    array-length v2, v0

    if-le v2, p2, :cond_0

    .line 624
    invoke-static {v0, p2}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 626
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 629
    .end local v0    # "array":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/google/common/collect/Ordering;->leastOf(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public leastOf(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 15
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string/jumbo v14, "k"

    move/from16 v0, p2

    invoke-static {v0, v14}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 650
    if-eqz p2, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 652
    const v14, 0x3fffffff    # 1.9999999f

    move/from16 v0, p2

    if-lt v0, v14, :cond_2

    .line 654
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 655
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v8, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 656
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p2

    if-le v14, v0, :cond_0

    .line 657
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p2

    invoke-virtual {v8, v0, v14}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 659
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->trimToSize()V

    .line 660
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    return-object v14

    .line 651
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    return-object v14

    .line 677
    :cond_2
    mul-int/lit8 v2, p2, 0x2

    .line 679
    .local v2, "bufferCap":I
    new-array v1, v2, [Ljava/lang/Object;

    .line 680
    .local v1, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 681
    .local v13, "threshold":Ljava/lang/Object;, "TE;"
    const/4 v14, 0x0

    aput-object v13, v1, v14

    .line 682
    const/4 v3, 0x1

    .local v3, "bufferSize":I
    move v4, v3

    .line 686
    .end local v3    # "bufferSize":I
    .local v4, "bufferSize":I
    :goto_0
    move/from16 v0, p2

    if-ge v4, v0, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 687
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 688
    .local v5, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "bufferSize":I
    .restart local v3    # "bufferSize":I
    aput-object v5, v1, v4

    .line 689
    invoke-virtual {p0, v13, v5}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move v4, v3

    .end local v3    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    goto :goto_0

    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    move v3, v4

    .line 692
    .end local v4    # "bufferSize":I
    .restart local v3    # "bufferSize":I
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 693
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 694
    .restart local v5    # "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v5, v13}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_4

    .line 698
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    aput-object v5, v1, v3

    .line 699
    if-ne v4, v2, :cond_8

    .line 702
    const/4 v7, 0x0

    .line 703
    .local v7, "left":I
    add-int/lit8 v12, v2, -0x1

    .line 705
    .local v12, "right":I
    const/4 v9, 0x0

    .line 709
    .local v9, "minThresholdPosition":I
    :goto_2
    if-ge v7, v12, :cond_6

    .line 710
    add-int v14, v7, v12

    add-int/lit8 v14, v14, 0x1

    ushr-int/lit8 v10, v14, 0x1

    .line 711
    .local v10, "pivotIndex":I
    invoke-direct {p0, v1, v7, v12, v10}, Lcom/google/common/collect/Ordering;->partition([Ljava/lang/Object;III)I

    move-result v11

    .line 712
    .local v11, "pivotNewIndex":I
    move/from16 v0, p2

    if-le v11, v0, :cond_5

    .line 713
    add-int/lit8 v12, v11, -0x1

    goto :goto_2

    .line 714
    :cond_5
    move/from16 v0, p2

    if-ge v11, v0, :cond_6

    .line 715
    add-int/lit8 v14, v7, 0x1

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 716
    move v9, v11

    goto :goto_2

    .line 721
    .end local v10    # "pivotIndex":I
    .end local v11    # "pivotNewIndex":I
    :cond_6
    move/from16 v3, p2

    .line 723
    .end local v4    # "bufferSize":I
    .restart local v3    # "bufferSize":I
    aget-object v13, v1, v9

    .line 724
    add-int/lit8 v6, v9, 0x1

    .local v6, "i":I
    :goto_3
    if-ge v6, v3, :cond_4

    .line 725
    aget-object v14, v1, v6

    invoke-virtual {p0, v13, v14}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 724
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 730
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    .end local v6    # "i":I
    .end local v7    # "left":I
    .end local v9    # "minThresholdPosition":I
    .end local v12    # "right":I
    :cond_7
    const/4 v14, 0x0

    invoke-static {v1, v14, v3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 732
    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 734
    invoke-static {v1, v3}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 733
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    return-object v14

    .end local v3    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    :cond_8
    move v3, v4

    .end local v4    # "bufferSize":I
    .restart local v3    # "bufferSize":I
    goto :goto_1
.end method

.method public lexicographical()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/lang/Iterable",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/LexicographicalOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LexicographicalOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Ordering;->max(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .end local p1    # "a":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object p1

    .restart local p1    # "a":Ljava/lang/Object;, "TE;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public varargs max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 591
    .local v0, "maxSoFar":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    array-length v3, p4

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p4, v2

    .line 592
    .local v1, "r":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v1    # "r":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v0
.end method

.method public max(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 539
    .local v0, "maxSoFar":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_0
    return-object v0
.end method

.method public min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Ordering;->min(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .end local p1    # "a":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object p1

    .restart local p1    # "a":Ljava/lang/Object;, "TE;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public varargs min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 515
    .local v0, "minSoFar":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    array-length v3, p4

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p4, v2

    .line 516
    .local v1, "r":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "r":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v0
.end method

.method public min(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 463
    .local v0, "minSoFar":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_0
    return-object v0
.end method

.method public nullsFirst()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/NullsFirstOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/NullsFirstOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public nullsLast()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/NullsLastOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/NullsLastOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method onKeys()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/util/Map$Entry",
            "<TT2;*>;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->keyFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<TF;+TT;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TF;+TT;>;"
    new-instance v0, Lcom/google/common/collect/ByFunctionOrdering;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/ByFunctionOrdering;-><init>(Lcom/google/common/base/Function;Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/ReverseOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ReverseOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v0

    .line 815
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 816
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method
