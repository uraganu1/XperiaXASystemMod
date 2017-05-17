.class Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1869
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1910
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1917
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    const/4 v0, 0x0

    .line 1928
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 5

    .prologue
    .line 1960
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .line 1961
    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v3, 0x0

    .line 1971
    return-object v3

    .line 1962
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1963
    .local v2, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1966
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1961
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1967
    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1968
    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v3
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1975
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1976
    return-void
.end method

.method public assignPositionFromScrapList(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "ignore"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1979
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->nextViewHolderInLimitedList(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1980
    .local v0, "closest":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_0
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1982
    return-void

    :cond_0
    const/4 v1, -0x1

    .line 1980
    goto :goto_0
.end method

.method hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v0, 0x0

    .line 1934
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 1944
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1947
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1948
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1949
    return-object v0

    .line 1945
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public nextViewHolderInLimitedList(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8
    .param p1, "ignore"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1985
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "closest":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const v1, 0x7fffffff

    .local v1, "closestDistance":I
    const/4 v3, 0x0

    .line 1991
    .end local v0    # "closest":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 2009
    :cond_0
    return-object v0

    .line 1992
    :cond_1
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1993
    .local v5, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-ne v5, p1, :cond_3

    .line 1991
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1993
    :cond_3
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1996
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int v2, v6, v7

    .line 1998
    .local v2, "distance":I
    if-ltz v2, :cond_2

    .line 2001
    if-ge v2, v1, :cond_2

    .line 2002
    move-object v0, v5

    .line 2003
    .local v0, "closest":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move v1, v2

    .line 2004
    if-eqz v2, :cond_0

    goto :goto_1
.end method
