.class Lcom/google/common/collect/Ordering$ArbitraryOrdering;
.super Lcom/google/common/collect/Ordering;
.source "Ordering.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArbitraryOrdering"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private uids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 262
    .local p0, "this":Lcom/google/common/collect/Ordering$ArbitraryOrdering;, "Lcom/google/common/collect/Ordering<TT;>.ArbitraryOrdering;"
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 265
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Platform;->tryWeakKeys(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 266
    new-instance v1, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;-><init>(Lcom/google/common/collect/Ordering$ArbitraryOrdering;)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 264
    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    .line 262
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/Ordering$ArbitraryOrdering;, "Lcom/google/common/collect/Ordering<TT;>.ArbitraryOrdering;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 275
    if-ne p1, p2, :cond_0

    .line 276
    return v5

    .line 277
    :cond_0
    if-nez p1, :cond_1

    .line 278
    return v3

    .line 279
    :cond_1
    if-nez p2, :cond_2

    .line 280
    return v4

    .line 282
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 283
    .local v0, "leftCode":I
    invoke-virtual {p0, p2}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 284
    .local v2, "rightCode":I
    if-eq v0, v2, :cond_4

    .line 285
    if-ge v0, v2, :cond_3

    :goto_0
    return v3

    :cond_3
    move v3, v4

    goto :goto_0

    .line 289
    :cond_4
    iget-object v3, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    .line 290
    .local v1, "result":I
    if-nez v1, :cond_5

    .line 291
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 293
    :cond_5
    return v1
.end method

.method identityHashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 309
    .local p0, "this":Lcom/google/common/collect/Ordering$ArbitraryOrdering;, "Lcom/google/common/collect/Ordering<TT;>.ArbitraryOrdering;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    .local p0, "this":Lcom/google/common/collect/Ordering$ArbitraryOrdering;, "Lcom/google/common/collect/Ordering<TT;>.ArbitraryOrdering;"
    const-string/jumbo v0, "Ordering.arbitrary()"

    return-object v0
.end method
