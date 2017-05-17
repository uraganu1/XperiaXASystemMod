.class public Lcom/google/common/collect/TreeMultimap;
.super Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;
.source "TreeMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private transient keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/Comparator",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;-><init>(Ljava/util/SortedMap;)V

    .line 122
    iput-object p1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    .line 123
    iput-object p2, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    .line 120
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/Multimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/Comparator",
            "<-TV;>;",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    .local p3, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 130
    invoke-virtual {p0, p3}, Lcom/google/common/collect/TreeMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 128
    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/TreeMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/TreeMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method public static create(Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/TreeMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    new-instance v2, Lcom/google/common/collect/TreeMultimap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 104
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    .line 103
    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 250
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    .line 251
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    .line 252
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultimap;->setMap(Ljava/util/Map;)V

    .line 253
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;)V

    .line 248
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 240
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 242
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 238
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->asMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method backingMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->backingMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic createAsMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createAsMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method createAsMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->backingMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 150
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method createCollection()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method bridge synthetic createKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->backingMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1
    .param p1, "multimap"    # Lcom/google/common/collect/Multimap;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "values"    # Ljava/lang/Iterable;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "values"    # Ljava/lang/Iterable;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "values"    # Ljava/lang/Iterable;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "values"    # Ljava/lang/Iterable;

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    check-cast p1, Ljava/util/SortedSet;

    .end local p1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/google/common/collect/TreeMultimap;, "Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    check-cast p2, Ljava/util/SortedSet;

    .end local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method
