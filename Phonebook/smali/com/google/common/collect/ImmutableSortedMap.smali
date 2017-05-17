.class public abstract Lcom/google/common/collect/ImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSortedMap$Builder;,
        Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMapFauxverideShim",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMap:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedMap;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    .line 66
    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

    .line 58
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 411
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "descendingMap":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap:Lcom/google/common/collect/ImmutableSortedMap;

    .line 414
    return-void
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 205
    .local v0, "naturalOrder":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TK;>;"
    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v3, 0x0

    .line 250
    .local v3, "sameComparator":Z
    instance-of v5, p0, Ljava/util/SortedMap;

    if-eqz v5, :cond_0

    move-object v4, p0

    .line 251
    check-cast v4, Ljava/util/SortedMap;

    .line 252
    .local v4, "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    invoke-interface {v4}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 253
    .local v0, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    if-nez v0, :cond_2

    .line 254
    sget-object v5, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v5, :cond_1

    const/4 v3, 0x1

    .line 258
    .end local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .end local v3    # "sameComparator":Z
    .end local v4    # "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    instance-of v5, p0, Lcom/google/common/collect/ImmutableSortedMap;

    if-eqz v5, :cond_3

    move-object v2, p0

    .line 262
    check-cast v2, Lcom/google/common/collect/ImmutableSortedMap;

    .line 263
    .local v2, "kvMap":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v5

    if-nez v5, :cond_3

    .line 264
    return-object v2

    .line 254
    .end local v2    # "kvMap":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .restart local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .restart local v3    # "sameComparator":Z
    .restart local v4    # "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 255
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "sameComparator":Z
    goto :goto_0

    .line 272
    .end local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .end local v3    # "sameComparator":Z
    .end local v4    # "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/util/Map$Entry;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 274
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v5, v1

    invoke-static {p1, v3, v5, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v5

    return-object v5
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 239
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 244
    :cond_0
    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method static emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/Ordering;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static from(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "keySet":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TK;>;"
    .local p1, "valueList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMap;

    .line 104
    check-cast p0, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 103
    .end local p0    # "keySet":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TK;>;"
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method static varargs fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 4
    .param p1, "sameComparator"    # Z
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;ZI[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p3, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 280
    aget-object v0, p3, v1

    .line 281
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, p3, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    if-nez p1, :cond_1

    .line 284
    invoke-static {p0, p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->sortEntries(Ljava/util/Comparator;I[Ljava/util/Map$Entry;)V

    .line 285
    invoke-static {p2, p3, p0}, Lcom/google/common/collect/ImmutableSortedMap;->validateEntries(I[Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 288
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->fromSortedEntries(Ljava/util/Comparator;I[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v2

    return-object v2
.end method

.method static fromSortedEntries(Ljava/util/Comparator;I[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;I[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    if-nez p1, :cond_0

    .line 82
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v4

    return-object v4

    .line 85
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 86
    .local v2, "keyBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<TK;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 87
    .local v3, "valueBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 88
    aget-object v0, p2, v1

    .line 89
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    new-instance v4, Lcom/google/common/collect/RegularImmutableSortedMap;

    .line 94
    new-instance v5, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 95
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 93
    invoke-direct {v4, v5, v6}, Lcom/google/common/collect/RegularImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v4
.end method

.method public static naturalOrder()Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->of(Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->from(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 137
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-array v1, v5, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v4, v5, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 150
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-array v1, v5, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 151
    invoke-static {p4, p5}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 150
    invoke-static {v0, v4, v5, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Comparable;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 164
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-array v1, v5, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 165
    invoke-static {p4, p5}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p6, p7}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 164
    invoke-static {v0, v4, v5, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Comparable;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Comparable;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 178
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-array v1, v5, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 179
    invoke-static {p4, p5}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p6, p7}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p8, p9}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 178
    invoke-static {v0, v4, v5, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static sortEntries(Ljava/util/Comparator;I[Ljava/util/Map$Entry;)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;I[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 292
    return-void
.end method

.method private static validateEntries(I[Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 6
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v2, 0x0

    .line 298
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 299
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aget-object v3, p1, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v3, "key"

    .line 300
    add-int/lit8 v4, v0, -0x1

    aget-object v4, p1, v4

    aget-object v5, p1, v0

    .line 299
    invoke-static {v1, v3, v4, v5}, Lcom/google/common/collect/ImmutableSortedMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 299
    goto :goto_1

    .line 297
    :cond_1
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 424
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createDescendingMap()Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public descendingKeySet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->descendingSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap:Lcom/google/common/collect/ImmutableSortedMap;

    .line 638
    .local v0, "result":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->createDescendingMap()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .end local v0    # "result":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap:Lcom/google/common/collect/ImmutableSortedMap;

    .line 641
    .restart local v0    # "result":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    :cond_0
    return-object v0
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 482
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 428
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic keySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 442
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract keySet()Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 620
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 631
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 420
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 5
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    .line 538
    :goto_0
    const-string/jumbo v3, "expected fromKey <= toKey but %s > %s"

    .line 537
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 538
    aput-object p1, v4, v2

    aput-object p3, v4, v1

    .line 537
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 539
    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 537
    goto :goto_0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .prologue
    .line 514
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    .prologue
    .line 553
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract values()Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 675
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
