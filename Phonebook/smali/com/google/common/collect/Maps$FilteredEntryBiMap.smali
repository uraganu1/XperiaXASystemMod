.class final Lcom/google/common/collect/Maps$FilteredEntryBiMap;
.super Lcom/google/common/collect/Maps$FilteredEntryMap;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilteredEntryBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$FilteredEntryMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final inverse:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2393
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryBiMap;, "Lcom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "delegate":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    .local p2, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 2394
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    .line 2395
    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inversePredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    .line 2394
    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;Lcom/google/common/collect/BiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lcom/google/common/collect/BiMap;

    .line 2392
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;Lcom/google/common/collect/BiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 2401
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryBiMap;, "Lcom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "delegate":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TK;TV;>;"
    .local p2, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p3, "inverse":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TV;TK;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 2402
    iput-object p3, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lcom/google/common/collect/BiMap;

    .line 2400
    return-void
.end method

.method private static inversePredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 2382
    .local p0, "forwardPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryBiMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap$1;-><init>(Lcom/google/common/base/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2411
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryBiMap;, "Lcom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2412
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 2417
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryBiMap;, "Lcom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method unfiltered()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2406
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryBiMap;, "Lcom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2421
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryBiMap;, "Lcom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2422
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntryBiMap;, "Lcom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
