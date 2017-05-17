.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 764
    .local v2, "lo":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 766
    .local v0, "hi":I
    :goto_0
    if-le v2, v0, :cond_1

    .line 775
    add-int/lit8 v1, v2, -0x1

    .line 776
    .local v1, "index":I
    if-gez v1, :cond_3

    :cond_0
    const/4 v5, -0x1

    .line 779
    return v5

    .line 767
    .end local v1    # "index":I
    :cond_1
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 768
    .local v3, "mid":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 769
    .local v4, "midVal":I
    if-lt v4, p1, :cond_2

    .line 772
    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    .line 770
    :cond_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 776
    .end local v3    # "mid":I
    .end local v4    # "midVal":I
    .restart local v1    # "index":I
    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 777
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    return v5
.end method

.method getCachedSpanIndex(II)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    const/4 v3, -0x1

    .line 696
    iget-boolean v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 700
    .local v0, "existing":I
    if-ne v0, v3, :cond_1

    .line 703
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 704
    .local v1, "value":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 705
    return v1

    .line 697
    .end local v0    # "existing":I
    .end local v1    # "value":I
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v2

    return v2

    .line 701
    .restart local v0    # "existing":I
    :cond_1
    return v0
.end method

.method public getSpanGroupIndex(II)I
    .locals 6
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .prologue
    const/4 v4, 0x0

    .local v4, "span":I
    const/4 v0, 0x0

    .line 795
    .local v0, "group":I
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    .local v2, "positionSpanSize":I
    const/4 v1, 0x0

    .line 796
    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 808
    add-int v5, v4, v2

    if-gt v5, p2, :cond_3

    .line 811
    :goto_1
    return v0

    .line 797
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 798
    .local v3, "size":I
    add-int/2addr v4, v3

    .line 799
    if-eq v4, p2, :cond_1

    .line 802
    if-gt v4, p2, :cond_2

    .line 796
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 804
    :cond_2
    move v4, v3

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 809
    .end local v3    # "size":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSpanIndex(II)I
    .locals 9
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    const/4 v8, 0x0

    .line 732
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    .line 733
    .local v1, "positionSpanSize":I
    if-eq v1, p2, :cond_1

    const/4 v4, 0x0

    .local v4, "span":I
    const/4 v5, 0x0

    .line 739
    .local v5, "startPos":I
    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v6, :cond_2

    .line 746
    :cond_0
    :goto_0
    move v0, v5

    .local v0, "i":I
    :goto_1
    if-lt v0, p1, :cond_3

    .line 756
    add-int v6, v4, v1

    if-le v6, p2, :cond_6

    .line 759
    return v8

    .line 734
    .end local v0    # "i":I
    .end local v4    # "span":I
    .end local v5    # "startPos":I
    :cond_1
    return v8

    .line 739
    .restart local v4    # "span":I
    .restart local v5    # "startPos":I
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 740
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v2

    .line 741
    .local v2, "prevKey":I
    if-ltz v2, :cond_0

    .line 742
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v7

    add-int v4, v6, v7

    .line 743
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 747
    .end local v2    # "prevKey":I
    .restart local v0    # "i":I
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 748
    .local v3, "size":I
    add-int/2addr v4, v3

    .line 749
    if-eq v4, p2, :cond_4

    .line 751
    if-gt v4, p2, :cond_5

    .line 746
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 750
    goto :goto_2

    .line 753
    :cond_5
    move v4, v3

    goto :goto_2

    .line 757
    .end local v3    # "size":I
    :cond_6
    return v4
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 684
    return-void
.end method
