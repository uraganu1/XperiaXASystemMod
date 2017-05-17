.class public final Lcom/google/common/collect/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$ImprovedAbstractSet;,
        Lcom/google/common/collect/Sets$SetFromMap;,
        Lcom/google/common/collect/Sets$SetView;,
        Lcom/google/common/collect/Sets$FilteredSet;,
        Lcom/google/common/collect/Sets$FilteredSortedSet;,
        Lcom/google/common/collect/Sets$CartesianSet;,
        Lcom/google/common/collect/Sets$SubSet;,
        Lcom/google/common/collect/Sets$PowerSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cartesianProduct(Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Set",
            "<+TB;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 1029
    .local p0, "sets":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Set<+TB;>;>;"
    invoke-static {p0}, Lcom/google/common/collect/Sets$CartesianSet;->create(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varargs cartesianProduct([Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Set",
            "<+TB;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 1089
    .local p0, "sets":[Ljava/util/Set;, "[Ljava/util/Set<+TB;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->cartesianProduct(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static complementOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v1, p0, Ljava/util/EnumSet;

    if-eqz v1, :cond_0

    .line 449
    check-cast p0, Ljava/util/EnumSet;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v1

    return-object v1

    .line 451
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 452
    :goto_0
    const-string/jumbo v2, "collection is empty; use the other version of this method"

    .line 451
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 453
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 454
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0, v0}, Lcom/google/common/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    return-object v1

    .line 451
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static complementOf(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    .line 473
    check-cast p0, Ljava/util/EnumSet;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    .line 474
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<*>;)",
            "Lcom/google/common/collect/Sets$SetView",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "set2":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const-string/jumbo v1, "set1"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string/jumbo v1, "set2"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 778
    .local v0, "notInSet2":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Object;>;"
    new-instance v1, Lcom/google/common/collect/Sets$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/common/collect/Sets$3;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;Ljava/util/Set;)V

    return-object v1
.end method

.method static equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v3, 0x0

    .line 1328
    if-ne p0, p1, :cond_0

    .line 1329
    const/4 v3, 0x1

    return v3

    .line 1331
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 1332
    check-cast v2, Ljava/util/Set;

    .line 1335
    .local v2, "o":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-interface {p0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    return v3

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v3

    .line 1336
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 1337
    .local v1, "ignored":Ljava/lang/NullPointerException;
    return v3

    .line 1342
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    .end local v2    # "o":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_2
    return v3
.end method

.method public static filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "unfiltered":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    instance-of v2, p0, Ljava/util/SortedSet;

    if-eqz v2, :cond_0

    .line 845
    check-cast p0, Ljava/util/SortedSet;

    .end local p0    # "unfiltered":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object v2

    return-object v2

    .line 847
    .restart local p0    # "unfiltered":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    instance-of v2, p0, Lcom/google/common/collect/Sets$FilteredSet;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 850
    check-cast v1, Lcom/google/common/collect/Sets$FilteredSet;

    .line 852
    .local v1, "filtered":Lcom/google/common/collect/Sets$FilteredSet;, "Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    iget-object v2, v1, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 853
    .local v0, "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    new-instance v3, Lcom/google/common/collect/Sets$FilteredSet;

    .line 854
    iget-object v2, v1, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast v2, Ljava/util/Set;

    .line 853
    invoke-direct {v3, v2, v0}, Lcom/google/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;)V

    return-object v3

    .line 857
    .end local v0    # "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    .end local v1    # "filtered":Lcom/google/common/collect/Sets$FilteredSet;, "Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    :cond_1
    new-instance v4, Lcom/google/common/collect/Sets$FilteredSet;

    .line 858
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/Predicate;

    .line 857
    invoke-direct {v4, v2, v3}, Lcom/google/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;)V

    return-object v4
.end method

.method public static filter(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "unfiltered":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Platform;->setsFilterSortedSet(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method static filterSortedIgnoreNavigable(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 912
    .local p0, "unfiltered":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    instance-of v2, p0, Lcom/google/common/collect/Sets$FilteredSet;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 915
    check-cast v1, Lcom/google/common/collect/Sets$FilteredSet;

    .line 917
    .local v1, "filtered":Lcom/google/common/collect/Sets$FilteredSet;, "Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    iget-object v2, v1, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 918
    .local v0, "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    new-instance v3, Lcom/google/common/collect/Sets$FilteredSortedSet;

    .line 919
    iget-object v2, v1, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast v2, Ljava/util/SortedSet;

    .line 918
    invoke-direct {v3, v2, v0}, Lcom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V

    return-object v3

    .line 922
    .end local v0    # "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    .end local v1    # "filtered":Lcom/google/common/collect/Sets$FilteredSet;, "Lcom/google/common/collect/Sets$FilteredSet<TE;>;"
    :cond_0
    new-instance v4, Lcom/google/common/collect/Sets$FilteredSortedSet;

    .line 923
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/Predicate;

    .line 922
    invoke-direct {v4, v2, v3}, Lcom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V

    return-object v4
.end method

.method static hashCodeImpl(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1314
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v0, 0x0

    .line 1315
    .local v0, "hashCode":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "o$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1316
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 1318
    not-int v3, v0

    not-int v0, v3

    goto :goto_0

    .line 1316
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1321
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public static varargs immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "anElement":Ljava/lang/Enum;, "TE;"
    .local p1, "otherElements":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static immutableEnumSet(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v3, p0, Lcom/google/common/collect/ImmutableEnumSet;

    if-eqz v3, :cond_0

    .line 118
    check-cast p0, Lcom/google/common/collect/ImmutableEnumSet;

    .end local p0    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    return-object p0

    .line 119
    .restart local p0    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    :cond_0
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    move-object v0, p0

    .line 120
    check-cast v0, Ljava/util/Collection;

    .line 121
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3

    .line 124
    :cond_1
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3

    .line 127
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 128
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 130
    .local v1, "enumSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 131
    invoke-static {v1}, Lcom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3

    .line 133
    .end local v1    # "enumSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3
.end method

.method public static intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<*>;)",
            "Lcom/google/common/collect/Sets$SetView",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "set2":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const-string/jumbo v1, "set1"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string/jumbo v1, "set2"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 741
    .local v0, "inSet2":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Object;>;"
    new-instance v1, Lcom/google/common/collect/Sets$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/common/collect/Sets$2;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;Ljava/util/Set;)V

    return-object v1
.end method

.method private static makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 480
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 481
    return-object v0
.end method

.method public static newConcurrentHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newConcurrentHashSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    .line 275
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 276
    return-object v0
.end method

.method public static newCopyOnWriteArraySet()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "CopyOnWriteArraySet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-object v0
.end method

.method public static newCopyOnWriteArraySet(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "CopyOnWriteArraySet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 426
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 428
    .local v0, "elementsCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :goto_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 427
    .end local v0    # "elementsCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "elementsCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    goto :goto_0
.end method

.method public static newEnumSet(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Iterable",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 147
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 148
    return-object v0
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 219
    :goto_0
    return-object v0

    .line 221
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 239
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 240
    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v1, p0

    invoke-static {v1}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 184
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 185
    return-object v0
.end method

.method public static newHashSetWithExpectedSize(I)Ljava/util/HashSet;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newLinkedHashSet()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/LinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 326
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 328
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 329
    .local v0, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 330
    return-object v0
.end method

.method public static newLinkedHashSetWithExpectedSize(I)Ljava/util/LinkedHashSet;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/google/common/collect/Sets$SetFromMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newTreeSet()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public static newTreeSet(Ljava/lang/Iterable;)Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    .line 366
    .local v0, "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 367
    return-object v0
.end method

.method public static newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static powerSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Set",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1203
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lcom/google/common/collect/Sets$PowerSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$PowerSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1357
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 1359
    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 1368
    .restart local p1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1369
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 1371
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1349
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 1350
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "changed":Z
    goto :goto_0

    .line 1353
    .end local v0    # "changed":Z
    :cond_0
    return v0
.end method

.method public static symmetricDifference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TE;>;",
            "Ljava/util/Set",
            "<+TE;>;)",
            "Lcom/google/common/collect/Sets$SetView",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 808
    .local p0, "set1":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .local p1, "set2":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    const-string/jumbo v0, "set1"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string/jumbo v0, "set2"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TE;>;",
            "Ljava/util/Set",
            "<+TE;>;)",
            "Lcom/google/common/collect/Sets$SetView",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "set1":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .local p1, "set2":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    const-string/jumbo v1, "set1"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string/jumbo v1, "set2"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-static {p1, p0}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    .line 683
    .local v0, "set2minus1":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    new-instance v1, Lcom/google/common/collect/Sets$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/common/collect/Sets$1;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method
