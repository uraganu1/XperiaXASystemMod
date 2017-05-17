.class public abstract Lcom/google/common/collect/ForwardingSortedMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ForwardingSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ForwardingSortedMap$StandardKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method

.method private unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "k1"    # Ljava/lang/Object;
    .param p2, "k2"    # Ljava/lang/Object;

    .prologue
    .line 114
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 115
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_0

    .line 116
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "k1":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 118
    .restart local p1    # "k1":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
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
    .line 68
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected standardContainsKey(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 134
    move-object v4, p0

    .line 135
    .local v4, "self":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;TV;>;"
    :try_start_0
    invoke-interface {v4, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "ceilingKey":Ljava/lang/Object;
    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ForwardingSortedMap;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    .line 141
    .end local v0    # "ceilingKey":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/NullPointerException;
    return v5

    .line 139
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 140
    .local v3, "e":Ljava/util/NoSuchElementException;
    return v5

    .line 137
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :catch_2
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method protected standardRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 164
    move-object v4, p0

    .line 166
    .local v4, "self":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;TV;>;"
    :try_start_0
    invoke-interface {v4, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 167
    .local v3, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;TV;>;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    .local v0, "ceilingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/google/common/collect/ForwardingSortedMap;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 171
    .local v5, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-object v5

    .line 177
    .end local v0    # "ceilingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;TV;>;"
    .end local v3    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;TV;>;>;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/NullPointerException;
    return-object v7

    .line 175
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/ClassCastException;
    return-object v7

    .line 180
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v3    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;TV;>;>;"
    :cond_0
    return-object v7
.end method

.method protected standardSubMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ForwardingSortedMap;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "fromKey must be <= toKey"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
