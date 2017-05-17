.class Lcom/google/common/primitives/Chars$CharArrayAsList;
.super Ljava/util/AbstractList;
.source "Chars.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Chars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[C

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([C)V
    .locals 2
    .param p1, "array"    # [C

    .prologue
    .line 479
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    .line 478
    return-void
.end method

.method constructor <init>([CII)V
    .locals 0
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 483
    iput-object p1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    .line 484
    iput p2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .line 485
    iput p3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    .line 482
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 503
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars;->-wrap0([CCII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 503
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 547
    if-ne p1, p0, :cond_0

    .line 548
    return v7

    .line 550
    :cond_0
    instance-of v3, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 551
    check-cast v2, Lcom/google/common/primitives/Chars$CharArrayAsList;

    .line 552
    .local v2, "that":Lcom/google/common/primitives/Chars$CharArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    .line 553
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 554
    return v6

    .line 556
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 557
    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v4, v0

    aget-char v3, v3, v4

    iget-object v4, v2, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v5, v2, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 558
    return v6

    .line 556
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_3
    return v7

    .line 563
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Chars$CharArrayAsList;
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public get(I)Ljava/lang/Character;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 498
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 567
    const/4 v1, 0x1

    .line 568
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 569
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Chars;->hashCode(C)I

    move-result v3

    add-int v1, v2, v3

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 509
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars;->-wrap0([CCII)I

    move-result v0

    .line 511
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 512
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 515
    .end local v0    # "i":I
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 520
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars;->-wrap1([CCII)I

    move-result v0

    .line 522
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 523
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 526
    .end local v0    # "i":I
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public set(ILjava/lang/Character;)Ljava/lang/Character;
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Character;

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 531
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v2, p1

    aget-char v0, v1, v2

    .line 533
    .local v0, "oldValue":C
    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int v3, v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    aput-char v1, v2, v3

    .line 534
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 529
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->set(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 489
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

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
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    .line 539
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 540
    if-ne p1, p2, :cond_0

    .line 541
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 543
    :cond_0
    new-instance v1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    return-object v1
.end method

.method toCharArray()[C
    .locals 5

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    .line 586
    .local v1, "size":I
    new-array v0, v1, [C

    .line 587
    .local v0, "result":[C
    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 576
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 578
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    aget-char v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
