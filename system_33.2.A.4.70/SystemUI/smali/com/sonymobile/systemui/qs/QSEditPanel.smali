.class public Lcom/sonymobile/systemui/qs/QSEditPanel;
.super Landroid/view/ViewGroup;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    }
.end annotation


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContext:Landroid/content/Context;

.field private mMaxColumns:I

.field private mPanelPaddingBottom:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->updateResources()V

    .line 48
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 125
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getColumnCount(I)I
    .locals 4
    .param p1, "row"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "cols":I
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 151
    .local v1, "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iget v3, v1, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->row:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_1
    return v0
.end method

.method private getRowTop(I)I
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 145
    iget v0, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    mul-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 3
    .param p1, "tileView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 63
    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;-><init>(Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;)V

    .line 65
    .local v0, "tileRecord":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iput-object p1, v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    .line 66
    iget-object v1, v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    .end local v0    # "tileRecord":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "tileView"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 75
    if-eqz p1, :cond_1

    .line 76
    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    .line 77
    new-instance v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    invoke-direct {v0, v2}, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;-><init>(Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;)V

    .line 78
    .local v0, "tileRecord":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iput-object p1, v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    .line 79
    iget-object v1, v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 82
    .end local v0    # "tileRecord":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 73
    :cond_1
    return-void
.end method

.method public getVirtualDropIndex(FF)I
    .locals 6
    .param p1, "mX"    # F
    .param p2, "mY"    # F

    .prologue
    .line 167
    iget v3, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    int-to-float v3, v3

    div-float v3, p2, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 168
    .local v1, "dropRow":I
    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getColumnCount(I)I

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7fffffff

    return v3

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getWidth()I

    move-result v3

    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getColumnCount(I)I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v2, v3

    .line 170
    .local v2, "virtualCellWidth":F
    div-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 171
    .local v0, "dropCol":I
    iget v3, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mMaxColumns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getWidth()I

    move-result v7

    .line 132
    .local v7, "w":I
    iget-object v8, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 133
    .local v4, "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iget v8, v4, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->row:I

    invoke-direct {p0, v8}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getColumnCount(I)I

    move-result v0

    .line 134
    .local v0, "cols":I
    iget v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellWidth:I

    .line 135
    .local v1, "cw":I
    mul-int v8, v1, v0

    sub-int v8, v7, v8

    add-int/lit8 v9, v0, 0x1

    div-int v2, v8, v9

    .line 136
    .local v2, "extra":I
    iget v8, v4, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->column:I

    mul-int/2addr v8, v1

    iget v9, v4, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->column:I

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v2

    add-int v3, v8, v9

    .line 137
    .local v3, "left":I
    iget v8, v4, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->row:I

    invoke-direct {p0, v8}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getRowTop(I)I

    move-result v6

    .line 138
    .local v6, "top":I
    iget-object v8, v4, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    .line 139
    iget-object v9, v4, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    .line 140
    iget-object v10, v4, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    .line 138
    invoke-virtual {v8, v3, v6, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 129
    .end local v0    # "cols":I
    .end local v1    # "cw":I
    .end local v2    # "extra":I
    .end local v3    # "left":I
    .end local v4    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    .end local v6    # "top":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 102
    .local v6, "width":I
    const/4 v4, -0x1

    .line 103
    .local v4, "row":I
    const/4 v0, -0x1

    .line 104
    .local v0, "column":I
    const/4 v5, 0x0

    .line 105
    .local v5, "rows":I
    iget-object v7, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 106
    .local v2, "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    iget v7, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mMaxColumns:I

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_1

    .line 107
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 108
    const/4 v0, 0x0

    .line 112
    :goto_1
    iput v4, v2, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->row:I

    .line 113
    iput v0, v2, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->column:I

    .line 114
    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    .end local v2    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 118
    .restart local v2    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iget-object v7, v2, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    iget v8, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellWidth:I

    invoke-static {v8}, Lcom/sonymobile/systemui/qs/QSEditPanel;->exactly(I)I

    move-result v8

    iget v9, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    invoke-static {v9}, Lcom/sonymobile/systemui/qs/QSEditPanel;->exactly(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 120
    .end local v2    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_3
    if-nez v5, :cond_4

    const/4 v1, 0x0

    .line 121
    .local v1, "h":I
    :goto_3
    invoke-virtual {p0, v6, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setMeasuredDimension(II)V

    .line 99
    return-void

    .line 120
    .end local v1    # "h":I
    :cond_4
    invoke-direct {p0, v5}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getRowTop(I)I

    move-result v7

    iget v8, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mPanelPaddingBottom:I

    add-int v1, v7, v8

    .restart local v1    # "h":I
    goto :goto_3
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "tileView"    # Landroid/view/View;

    .prologue
    .line 87
    if-eqz p1, :cond_2

    .line 88
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;

    .line 89
    .local v0, "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    iget-object v2, v0, Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;->tileView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    .end local v0    # "record":Lcom/sonymobile/systemui/qs/QSEditPanel$TileRecord;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setMaxColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mMaxColumns:I

    .line 156
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    .line 57
    iget v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellHeight:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mCellWidth:I

    .line 58
    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/qs/QSEditPanel;->mPanelPaddingBottom:I

    .line 54
    return-void
.end method
