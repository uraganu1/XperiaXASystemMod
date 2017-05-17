.class public Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;
.super Landroid/view/ViewGroup;
.source "PartitionLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 40
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 45
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;->getChildCount()I

    move-result v9

    .line 57
    .local v9, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;->getPaddingLeft()I

    move-result v16

    .line 58
    .local v16, "minLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;->getPaddingTop()I

    move-result v17

    .line 59
    .local v17, "minTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;->getMeasuredWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;->getPaddingRight()I

    move-result v21

    sub-int v15, v20, v21

    .line 60
    .local v15, "maxRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;->getMeasuredHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;->getPaddingBottom()I

    move-result v21

    sub-int v14, v20, v21

    .line 62
    .local v14, "maxBottom":I
    move/from16 v2, v16

    .line 63
    .local v2, "anchorLeft":I
    move/from16 v3, v17

    .line 66
    .local v3, "anchorTop":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v9, :cond_3

    .line 67
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonyericsson/conversations/ui/pileview/PartitionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 66
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 73
    :cond_0
    sub-int v8, v15, v2

    .line 74
    .local v8, "childWidth":I
    sub-int v5, v14, v3

    .line 76
    .local v5, "childHeight":I
    move/from16 v18, v2

    .line 77
    .local v18, "nextAnchorLeft":I
    move/from16 v19, v3

    .line 80
    .local v19, "nextAnchorTop":I
    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    if-ge v12, v0, :cond_1

    .line 82
    rem-int/lit8 v20, v12, 0x2

    if-nez v20, :cond_2

    .line 83
    div-int/lit8 v8, v8, 0x2

    .line 84
    add-int v18, v18, v8

    .line 92
    :cond_1
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 94
    .local v13, "lps":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v20, v8, v20

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 95
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    sub-int v20, v5, v20

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    .line 97
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v6, v2, v20

    .line 98
    .local v6, "childLeft":I
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v7, v3, v20

    .line 100
    .local v7, "childTop":I
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 101
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 100
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 103
    .local v11, "curWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 104
    .local v10, "curHeight":I
    add-int v20, v6, v11

    add-int v21, v7, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 107
    move/from16 v2, v18

    .line 108
    move/from16 v3, v19

    goto :goto_1

    .line 87
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v10    # "curHeight":I
    .end local v11    # "curWidth":I
    .end local v13    # "lps":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    div-int/lit8 v5, v5, 0x2

    .line 88
    add-int v19, v19, v5

    goto :goto_2

    .line 54
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v8    # "childWidth":I
    .end local v18    # "nextAnchorLeft":I
    .end local v19    # "nextAnchorTop":I
    :cond_3
    return-void
.end method
