.class Lcom/google/common/collect/Maps$MapDifferenceImpl;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/MapDifference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapDifferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapDifference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final differences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final onBoth:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final onlyOnLeft:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final onlyOnRight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 457
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    .local p1, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p4, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-static {p1}, Lcom/google/common/collect/Maps;->-wrap0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    .line 461
    invoke-static {p2}, Lcom/google/common/collect/Maps;->-wrap0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    .line 462
    invoke-static {p3}, Lcom/google/common/collect/Maps;->-wrap0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onBoth:Ljava/util/Map;

    .line 463
    invoke-static {p4}, Lcom/google/common/collect/Maps;->-wrap0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    .line 459
    return-void
.end method


# virtual methods
.method public areEqual()Z
    .locals 1

    .prologue
    .line 468
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entriesDiffering()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    return-object v0
.end method

.method public entriesInCommon()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onBoth:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnLeft()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnRight()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    const/4 v1, 0x0

    .line 492
    if-ne p1, p0, :cond_0

    .line 493
    const/4 v1, 0x1

    return v1

    .line 495
    :cond_0
    instance-of v2, p1, Lcom/google/common/collect/MapDifference;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 496
    check-cast v0, Lcom/google/common/collect/MapDifference;

    .line 497
    .local v0, "other":Lcom/google/common/collect/MapDifference;, "Lcom/google/common/collect/MapDifference<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/MapDifference;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/MapDifference;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/MapDifference;->entriesInCommon()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/MapDifference;->entriesDiffering()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 497
    :cond_1
    return v1

    .line 502
    .end local v0    # "other":Lcom/google/common/collect/MapDifference;, "Lcom/google/common/collect/MapDifference<**>;"
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 506
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 507
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 506
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 511
    .local p0, "this":Lcom/google/common/collect/Maps$MapDifferenceImpl;, "Lcom/google/common/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->areEqual()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const-string/jumbo v1, "equal"

    return-object v1

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "not equal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    const-string/jumbo v1, ": only on left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 520
    const-string/jumbo v1, ": only on right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 523
    const-string/jumbo v1, ": value differences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
