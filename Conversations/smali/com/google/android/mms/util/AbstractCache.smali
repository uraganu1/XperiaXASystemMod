.class public abstract Lcom/google/android/mms/util/AbstractCache;
.super Ljava/lang/Object;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/util/AbstractCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/google/android/mms/util/AbstractCache$CacheEntry",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    .line 35
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    .line 73
    .local v0, "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_0

    .line 74
    iget v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->hit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->hit:I

    .line 78
    iget-object v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    return-object v1

    .line 81
    .end local v0    # "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    :cond_0
    return-object v2
.end method

.method public purge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 89
    iget-object v2, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    .line 95
    .local v0, "v":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public purgeAll()V
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 44
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    .line 50
    return v3

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    new-instance v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    invoke-direct {v0, v4}, Lcom/google/android/mms/util/AbstractCache$CacheEntry;-><init>(Lcom/google/android/mms/util/AbstractCache$CacheEntry;)V

    .line 55
    .local v0, "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    iput-object p2, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const/4 v1, 0x1

    return v1

    .line 63
    .end local v0    # "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    :cond_1
    return v3
.end method
