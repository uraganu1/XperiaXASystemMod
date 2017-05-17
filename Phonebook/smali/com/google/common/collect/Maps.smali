.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Maps$EntryFunction;,
        Lcom/google/common/collect/Maps$MapDifferenceImpl;,
        Lcom/google/common/collect/Maps$ValueDifferenceImpl;,
        Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,
        Lcom/google/common/collect/Maps$AsMapView;,
        Lcom/google/common/collect/Maps$SortedAsMapView;,
        Lcom/google/common/collect/Maps$UnmodifiableEntries;,
        Lcom/google/common/collect/Maps$UnmodifiableEntrySet;,
        Lcom/google/common/collect/Maps$BiMapConverter;,
        Lcom/google/common/collect/Maps$UnmodifiableBiMap;,
        Lcom/google/common/collect/Maps$EntryTransformer;,
        Lcom/google/common/collect/Maps$TransformedEntriesMap;,
        Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;,
        Lcom/google/common/collect/Maps$AbstractFilteredMap;,
        Lcom/google/common/collect/Maps$FilteredMapValues;,
        Lcom/google/common/collect/Maps$FilteredKeyMap;,
        Lcom/google/common/collect/Maps$FilteredEntryMap;,
        Lcom/google/common/collect/Maps$FilteredEntrySortedMap;,
        Lcom/google/common/collect/Maps$FilteredEntryBiMap;,
        Lcom/google/common/collect/Maps$ImprovedAbstractMap;,
        Lcom/google/common/collect/Maps$KeySet;,
        Lcom/google/common/collect/Maps$SortedKeySet;,
        Lcom/google/common/collect/Maps$Values;,
        Lcom/google/common/collect/Maps$EntrySet;
    }
.end annotation


# static fields
.field static final STANDARD_JOINER:Lcom/google/common/base/Joiner$MapJoiner;


# direct methods
.method static synthetic -wrap0(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    invoke-static {p0}, Lcom/google/common/collect/Maps;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "set"    # Ljava/util/Set;

    .prologue
    invoke-static {p0}, Lcom/google/common/collect/Maps;->removeOnlySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "set"    # Ljava/util/SortedSet;

    .prologue
    invoke-static {p0}, Lcom/google/common/collect/Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2589
    sget-object v0, Lcom/google/common/collect/Collections2;->STANDARD_JOINER:Lcom/google/common/base/Joiner;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    .line 2588
    sput-object v0, Lcom/google/common/collect/Maps;->STANDARD_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asConverter(Lcom/google/common/collect/BiMap;)Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TA;TB;>;)",
            "Lcom/google/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 1142
    .local p0, "bimap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TA;TB;>;"
    new-instance v0, Lcom/google/common/collect/Maps$BiMapConverter;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$BiMapConverter;-><init>(Lcom/google/common/collect/BiMap;)V

    return-object v0
.end method

.method static asEntryToEntryFunction(Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 1587
    .local p0, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    new-instance v0, Lcom/google/common/collect/Maps$10;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$10;-><init>(Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryToValueFunction(Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1553
    .local p0, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    new-instance v0, Lcom/google/common/collect/Maps$8;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$8;-><init>(Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryTransformer(Lcom/google/common/base/Function;)Lcom/google/common/collect/Maps$EntryTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<TK;TV1;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1528
    .local p0, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    new-instance v0, Lcom/google/common/collect/Maps$6;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$6;-><init>(Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 676
    check-cast p0, Ljava/util/SortedSet;

    .end local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 678
    .restart local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/Maps$AsMapView;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$AsMapView;-><init>(Ljava/util/Set;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Platform;->mapsAsMapSortedSet(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method static asMapEntryIterator(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 798
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$2;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/Maps$2;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method static asMapSortedIgnoreNavigable(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 716
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$SortedAsMapView;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$SortedAsMapView;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method static asValueToValueFunction(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;TV1;TV2;>;TK;)",
            "Lcom/google/common/base/Function",
            "<TV1;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1539
    .local p0, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    new-instance v0, Lcom/google/common/collect/Maps$7;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$7;-><init>(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)V

    return-object v0
.end method

.method static capacity(I)I
    .locals 1
    .param p0, "expectedSize"    # I

    .prologue
    .line 202
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 203
    const-string/jumbo v0, "expectedSize"

    invoke-static {p0, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 204
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 206
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 207
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    return v0

    .line 209
    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method static containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2549
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 2550
    const/4 v0, 0x0

    return v0

    .line 2552
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static containsKeyImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2525
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static containsValueImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2532
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/MapDifference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/MapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v2, p0, Ljava/util/SortedMap;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 381
    check-cast v1, Ljava/util/SortedMap;

    .line 382
    .local v1, "sortedLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->difference(Ljava/util/SortedMap;Ljava/util/Map;)Lcom/google/common/collect/SortedMapDifference;

    move-result-object v0

    .line 383
    .local v0, "result":Lcom/google/common/collect/SortedMapDifference;, "Lcom/google/common/collect/SortedMapDifference<TK;TV;>;"
    return-object v0

    .line 385
    .end local v0    # "result":Lcom/google/common/collect/SortedMapDifference;, "Lcom/google/common/collect/SortedMapDifference<TK;TV;>;"
    .end local v1    # "sortedLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    :cond_0
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/google/common/collect/Maps;->difference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapDifference;

    move-result-object v2

    return-object v2
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapDifference;
    .locals 7
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lcom/google/common/base/Equivalence",
            "<-TV;>;)",
            "Lcom/google/common/collect/MapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "valueEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<-TV;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 414
    .local v3, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 415
    .local v4, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 416
    .local v5, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .local v6, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 417
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 418
    new-instance v0, Lcom/google/common/collect/Maps$MapDifferenceImpl;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/common/collect/Maps$MapDifferenceImpl;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public static difference(Ljava/util/SortedMap;Ljava/util/Map;)Lcom/google/common/collect/SortedMapDifference;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/SortedMapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "left":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v7

    .line 596
    .local v7, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {v7}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v3

    .line 597
    .local v3, "onlyOnLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v7}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v4

    .line 598
    .local v4, "onlyOnRight":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-interface {v4, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 599
    invoke-static {v7}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v5

    .line 601
    .local v5, "onBoth":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v7}, Lcom/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v6

    .line 602
    .local v6, "differences":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 603
    new-instance v0, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method private static doDifference(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lcom/google/common/base/Equivalence",
            "<-TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "valueEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<-TV;>;"
    .local p3, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p4, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p6, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 427
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 428
    .local v2, "leftKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 429
    .local v3, "leftValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 430
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 431
    .local v4, "rightValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, v3, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    invoke-interface {p5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 435
    :cond_0
    invoke-static {v3, v4}, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/MapDifference$ValueDifference;

    move-result-object v5

    .line 434
    invoke-interface {p6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 438
    .end local v4    # "rightValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v2    # "leftKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "leftValue":Ljava/lang/Object;, "TV;"
    :cond_2
    return-void
.end method

.method static equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2579
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-ne p0, p1, :cond_0

    .line 2580
    const/4 v1, 0x1

    return v1

    .line 2581
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2582
    check-cast v0, Ljava/util/Map;

    .line 2583
    .local v0, "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2585
    .end local v0    # "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static filterEntries(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2038
    .local p0, "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    instance-of v0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    if-eqz v0, :cond_0

    .line 2041
    check-cast p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    .end local p0    # "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$FilteredEntryBiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    .line 2040
    :goto_0
    return-object v0

    .line 2042
    .restart local p0    # "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static filterEntries(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1952
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1953
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 1954
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/BiMap;

    if-eqz v0, :cond_1

    .line 1955
    check-cast p0, Lcom/google/common/collect/BiMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterEntries(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0

    .line 1957
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    instance-of v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    if-eqz v0, :cond_2

    .line 1959
    check-cast p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$AbstractFilteredMap;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    .line 1958
    :goto_0
    return-object v0

    .line 1960
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_2
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1997
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Platform;->mapsFilterSortedMap(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static filterFiltered(Lcom/google/common/collect/Maps$FilteredEntryBiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$FilteredEntryBiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2372
    .local p0, "map":Lcom/google/common/collect/Maps$FilteredEntryBiMap;, "Lcom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v1, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 2373
    .local v0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lcom/google/common/collect/BiMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lcom/google/common/collect/Maps$AbstractFilteredMap;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$AbstractFilteredMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2051
    .local p0, "map":Lcom/google/common/collect/Maps$AbstractFilteredMap;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    .line 2052
    iget-object v2, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    .line 2051
    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lcom/google/common/collect/Maps$FilteredEntrySortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$FilteredEntrySortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2273
    .local p0, "map":Lcom/google/common/collect/Maps$FilteredEntrySortedMap;, "Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v1, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 2274
    .local v0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method public static filterKeys(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1809
    .local p0, "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    .local p1, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterKeys(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1732
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    instance-of v1, p0, Ljava/util/SortedMap;

    if-eqz v1, :cond_0

    .line 1733
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterKeys(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1

    .line 1734
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    instance-of v1, p0, Lcom/google/common/collect/BiMap;

    if-eqz v1, :cond_1

    .line 1735
    check-cast p0, Lcom/google/common/collect/BiMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterKeys(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;

    move-result-object v1

    return-object v1

    .line 1737
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 1739
    .local v0, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;*>;>;"
    instance-of v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    if-eqz v1, :cond_2

    .line 1740
    check-cast p0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$AbstractFilteredMap;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v1

    .line 1739
    :goto_0
    return-object v1

    .line 1741
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_2
    new-instance v2, Lcom/google/common/collect/Maps$FilteredKeyMap;

    .line 1742
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1741
    invoke-direct {v2, v1, p1, v0}, Lcom/google/common/collect/Maps$FilteredKeyMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static filterKeys(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1779
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method static filterSortedIgnoreNavigable(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2003
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    instance-of v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    if-eqz v0, :cond_0

    .line 2005
    check-cast p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .end local p0    # "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterFiltered(Lcom/google/common/collect/Maps$FilteredEntrySortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    .line 2004
    :goto_0
    return-object v0

    .line 2006
    .restart local p0    # "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    :cond_0
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterValues(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1918
    .local p0, "unfiltered":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    .local p1, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1844
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TV;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1845
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterValues(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 1846
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/BiMap;

    if-eqz v0, :cond_1

    .line 1847
    check-cast p0, Lcom/google/common/collect/BiMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterValues(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0

    .line 1849
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1885
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static fromProperties(Ljava/util/Properties;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .param p0, "properties"    # Ljava/util/Properties;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.Properties"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1014
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1015
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1016
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 1019
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1034
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immutableEnumMap(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    instance-of v3, p0, Lcom/google/common/collect/ImmutableEnumMap;

    if-eqz v3, :cond_0

    move-object v2, p0

    .line 150
    check-cast v2, Lcom/google/common/collect/ImmutableEnumMap;

    .line 151
    .local v2, "result":Lcom/google/common/collect/ImmutableEnumMap;, "Lcom/google/common/collect/ImmutableEnumMap<TK;TV;>;"
    return-object v2

    .line 152
    .end local v2    # "result":Lcom/google/common/collect/ImmutableEnumMap;, "Lcom/google/common/collect/ImmutableEnumMap<TK;TV;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3

    .line 155
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    :cond_2
    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Lcom/google/common/collect/ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method static keyFunction()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;TK;>;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->KEY:Lcom/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->keyFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;*>;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;*>;"
    const/4 v0, 0x0

    .line 2653
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;>;"
        }
    .end annotation

    .prologue
    .line 1695
    .local p0, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->keyFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public static newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v1, Ljava/util/EnumMap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static newEnumMap(Ljava/util/Map;)Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;)",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newHashMap(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashMap()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newTreeMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "K:TC;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TC;>;)",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/SortedMap;)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-eqz p0, :cond_0

    .line 640
    return-object p0

    .line 642
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method static putAllImpl(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2606
    .local p0, "self":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2607
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2605
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method static removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2569
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 2570
    const/4 v0, 0x0

    return v0

    .line 2572
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static removeOnlySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lcom/google/common/collect/Maps$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$3;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 874
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/Maps$4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$4;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v2, 0x0

    .line 2496
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2501
    :catch_0
    move-exception v1

    .line 2502
    .local v1, "e":Ljava/lang/NullPointerException;
    return v2

    .line 2499
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2500
    .local v0, "e":Ljava/lang/ClassCastException;
    return v2
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v2, 0x0

    .line 2481
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2486
    :catch_0
    move-exception v1

    .line 2487
    .local v1, "e":Ljava/lang/NullPointerException;
    return-object v2

    .line 2484
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2485
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v2
.end method

.method static safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v2, 0x0

    .line 2511
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2513
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2516
    :catch_0
    move-exception v1

    .line 2517
    .local v1, "e":Ljava/lang/NullPointerException;
    return-object v2

    .line 2514
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2515
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v2
.end method

.method public static synchronizedBiMap(Lcom/google/common/collect/BiMap;)Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1220
    .local p0, "bimap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/Synchronized;->biMap(Lcom/google/common/collect/BiMap;Ljava/lang/Object;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    .local p1, "valueFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->toMap(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 941
    .local p0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .local p1, "valueFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 944
    .local v0, "builder":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 946
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 948
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2596
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2597
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/common/collect/Maps;->STANDARD_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 2598
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1422
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1423
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 1425
    .restart local p0    # "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1483
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Platform;->mapsTransformEntriesSortedMap(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method static transformEntriesIgnoreNavigable(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1489
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static transformEntry(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V2:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1567
    .local p0, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV1;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    new-instance v0, Lcom/google/common/collect/Maps$9;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/Maps$9;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1321
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->asEntryTransformer(Lcom/google/common/base/Function;)Lcom/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Ljava/util/SortedMap;Lcom/google/common/base/Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1365
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->asEntryTransformer(Lcom/google/common/base/Function;)Lcom/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 967
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    .local p1, "keyFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV;TK;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->uniqueIndex(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 987
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .local p1, "keyFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV;TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 989
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 991
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 993
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2
.end method

.method public static unmodifiableBiMap(Lcom/google/common/collect/BiMap;)Lcom/google/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1238
    .local p0, "bimap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<+TK;+TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V

    return-object v0
.end method

.method static unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1061
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    new-instance v0, Lcom/google/common/collect/Maps$5;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$5;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1047
    .local p0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableEntrySet;

    .line 1048
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1047
    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 445
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 447
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    .line 2427
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method static valueFunction()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 107
    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->VALUE:Lcom/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static valueIterator(Lcom/google/common/collect/UnmodifiableIterator;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "entryIterator":Lcom/google/common/collect/UnmodifiableIterator;, "Lcom/google/common/collect/UnmodifiableIterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/Maps$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$1;-><init>(Lcom/google/common/collect/UnmodifiableIterator;)V

    return-object v0
.end method

.method static valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->valueFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<*TV;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*TV;>;"
    const/4 v0, 0x0

    .line 2658
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static valuePredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1699
    .local p0, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TV;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->valueFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method
