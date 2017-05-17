.class Lcom/google/common/primitives/Ints$IntArrayAsList;
.super Ljava/util/AbstractList;
.source "Ints.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[I

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([I)V
    .locals 2
    .param p1, "array"    # [I

    .prologue
    .line 524
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    .line 523
    return-void
.end method

.method constructor <init>([III)V
    .locals 0
    .param p1, "array"    # [I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 528
    iput-object p1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    .line 529
    iput p2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    .line 530
    iput p3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    .line 527
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 548
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints;->-wrap0([IIII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 548
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 592
    if-ne p1, p0, :cond_0

    .line 593
    return v7

    .line 595
    :cond_0
    instance-of v3, p1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 596
    check-cast v2, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .line 597
    .local v2, "that":Lcom/google/common/primitives/Ints$IntArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    .line 598
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 599
    return v6

    .line 601
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 602
    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v4, v0

    aget v3, v3, v4

    iget-object v4, v2, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v5, v2, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v5, v0

    aget v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 603
    return v6

    .line 601
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_3
    return v7

    .line 608
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Ints$IntArrayAsList;
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 543
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Ints$IntArrayAsList;->get(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 612
    const/4 v1, 0x1

    .line 613
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 614
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Ints;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 554
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints;->-wrap0([IIII)I

    move-result v0

    .line 556
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 557
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 560
    .end local v0    # "i":I
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 565
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints;->-wrap1([IIII)I

    move-result v0

    .line 567
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 568
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 571
    .end local v0    # "i":I
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Integer;

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 576
    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v2, p1

    aget v0, v1, v2

    .line 578
    .local v0, "oldValue":I
    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int v3, v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v3

    .line 579
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 574
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Ints$IntArrayAsList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 534
    iget v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    .line 584
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 585
    if-ne p1, p2, :cond_0

    .line 586
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 588
    :cond_0
    new-instance v1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    return-object v1
.end method

.method toIntArray()[I
    .locals 5

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    .line 631
    .local v1, "size":I
    new-array v0, v1, [I

    .line 632
    .local v0, "result":[I
    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 621
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 623
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
