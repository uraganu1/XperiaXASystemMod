.class Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .locals 2
    .param p2, "index"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 2095
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2090
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2091
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/4 v0, 0x0

    .line 2092
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2096
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 2097
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;ILandroid/support/v7/widget/StaggeredGridLayoutManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/StaggeredGridLayoutManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/support/v7/widget/StaggeredGridLayoutManager$1;

    .prologue
    .line 2086
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .prologue
    .line 2086
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, -0x80000000

    .line 2180
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2181
    .local v0, "lp":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2182
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2184
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2187
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2188
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2190
    :goto_1
    return-void

    .line 2185
    :cond_1
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_0

    .line 2187
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 3
    .param p1, "reverseLayout"    # Z
    .param p2, "offset"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 2195
    if-nez p1, :cond_1

    .line 2198
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .line 2200
    .local v0, "reference":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 2201
    if-eq v0, v2, :cond_2

    .line 2204
    if-nez p1, :cond_3

    :cond_0
    if-eqz p1, :cond_5

    .line 2208
    :goto_1
    if-ne p2, v2, :cond_6

    .line 2211
    :goto_2
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2212
    return-void

    .line 2196
    .end local v0    # "reference":I
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .restart local v0    # "reference":I
    goto :goto_0

    .line 2202
    :cond_2
    return-void

    .line 2204
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2206
    :cond_4
    return-void

    .line 2204
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-gt v0, v1, :cond_4

    goto :goto_1

    .line 2209
    :cond_6
    add-int/2addr v0, p2

    goto :goto_2
.end method

.method calculateCachedEnd()V
    .locals 5

    .prologue
    .line 2145
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2146
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 2147
    .local v2, "lp":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2148
    iget-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v3, :cond_1

    .line 2155
    :cond_0
    :goto_0
    return-void

    .line 2149
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 2151
    .local v1, "fsi":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2152
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_0
.end method

.method calculateCachedStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2111
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2112
    .local v2, "startView":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2113
    .local v1, "lp":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2114
    iget-boolean v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v3, :cond_1

    .line 2121
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2117
    .local v0, "fsi":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2118
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 2215
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2216
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    const/4 v0, 0x0

    .line 2217
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2218
    return-void
.end method

.method public getDeletedSize()I
    .locals 1

    .prologue
    .line 2257
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .locals 2

    .prologue
    .line 2159
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 2162
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2163
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0

    .line 2160
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0
.end method

.method getEndLine(I)I
    .locals 3
    .param p1, "def"    # I

    .prologue
    .line 2133
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 2136
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2137
    .local v0, "size":I
    if-eqz v0, :cond_1

    .line 2140
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2141
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v1

    .line 2134
    .end local v0    # "size":I
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v1

    .line 2138
    .restart local v0    # "size":I
    :cond_1
    return p1
.end method

.method getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2261
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getStartLine()I
    .locals 2

    .prologue
    .line 2125
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 2128
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2129
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0

    .line 2126
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method getStartLine(I)I
    .locals 2
    .param p1, "def"    # I

    .prologue
    .line 2100
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 2103
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2106
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2107
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0

    .line 2101
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0

    .line 2104
    :cond_1
    return p1
.end method

.method invalidateCache()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2221
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2222
    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2223
    return-void
.end method

.method onOffset(I)V
    .locals 2
    .param p1, "dt"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 2265
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    if-ne v0, v1, :cond_0

    .line 2268
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-ne v0, v1, :cond_1

    .line 2271
    :goto_1
    return-void

    .line 2266
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_0

    .line 2269
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_1
.end method

.method popEnd()V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    .line 2230
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2231
    .local v2, "size":I
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2232
    .local v0, "end":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v3, 0x0

    .line 2233
    iput-object v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2234
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2235
    :cond_0
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :goto_0
    const/4 v3, 0x1

    .line 2237
    if-eq v2, v3, :cond_2

    .line 2240
    :goto_1
    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2241
    return-void

    .line 2234
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 2238
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_1
.end method

.method popStart()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    const/4 v3, 0x0

    .line 2244
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2245
    .local v1, "start":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x0

    .line 2246
    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2247
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2250
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2251
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2253
    :goto_1
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2254
    return-void

    .line 2248
    :cond_1
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_0

    .line 2250
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    .line 2167
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2168
    .local v0, "lp":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2169
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2170
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2171
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2174
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2175
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2177
    :goto_1
    return-void

    .line 2172
    :cond_1
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_0

    .line 2174
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method setLine(I)V
    .locals 0
    .param p1, "line"    # I

    .prologue
    .line 2226
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2227
    return-void
.end method
