.class public Lcom/android/contacts/list/ViewPagerTabStrip;
.super Landroid/widget/LinearLayout;
.source "ViewPagerTabStrip.java"


# instance fields
.field private mIndexForSelection:I

.field private final mSelectedUnderlinePaint:Landroid/graphics/Paint;

.field private mSelectedUnderlineThickness:I

.field private mSelectionOffset:F

.field private mShowUnderline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/ViewPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d012a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 54
    iput v2, p0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectedUnderlineThickness:I

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/list/ViewPagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 57
    const v3, 0x1010435

    const v4, 0x106000b

    .line 56
    invoke-static {v2, v3, v4}, Lcom/android/contacts/util/ThemeUtils;->getThemeColor(Landroid/content/Context;II)I

    move-result v1

    .line 59
    .local v1, "underlineColor":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    .line 60
    iget-object v2, p0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/list/ViewPagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ViewPagerTabStrip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ViewPagerTabStrip;->setWillNotDraw(Z)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/list/ViewPagerTabStrip;->initializeDivider(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private initializeDivider(Landroid/content/Context;)V
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 130
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x1010214

    aput v3, v0, v4

    .line 131
    .local v0, "attrs":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 132
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 133
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ViewPagerTabStrip;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ViewPagerTabStrip;->setShowDividers(I)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0127

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 137
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ViewPagerTabStrip;->setDividerPadding(I)V

    .line 129
    return-void
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/list/ViewPagerTabStrip;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ViewPagerTabStrip;->getChildCount()I

    move-result v7

    .line 94
    .local v7, "childCount":I
    if-lez v7, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mIndexForSelection:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 96
    .local v16, "selectedTitle":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 97
    .local v14, "selectedLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v15

    .line 98
    .local v15, "selectedRight":I
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/list/ViewPagerTabStrip;->isRtl()Z

    move-result v10

    .line 99
    .local v10, "isRtl":Z
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mIndexForSelection:I

    if-lez v1, :cond_2

    const/4 v8, 0x1

    .line 101
    .local v8, "hasNextTab":Z
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    if-eqz v8, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mIndexForSelection:I

    if-eqz v10, :cond_5

    const/4 v1, -0x1

    :goto_1
    add-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 104
    .local v13, "nextTitle":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 105
    .local v11, "nextLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v12

    .line 107
    .local v12, "nextRight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectionOffset:F

    int-to-float v2, v11

    mul-float/2addr v1, v2

    .line 108
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectionOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    int-to-float v3, v14

    mul-float/2addr v2, v3

    .line 107
    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 109
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectionOffset:F

    int-to-float v2, v12

    mul-float/2addr v1, v2

    .line 110
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectionOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    int-to-float v3, v15

    mul-float/2addr v2, v3

    .line 109
    add-float/2addr v1, v2

    float-to-int v15, v1

    .line 113
    .end local v11    # "nextLeft":I
    .end local v12    # "nextRight":I
    .end local v13    # "nextTitle":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mShowUnderline:Z

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ViewPagerTabStrip;->getHeight()I

    move-result v9

    .line 115
    .local v9, "height":I
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectedUnderlineThickness:I

    sub-int v1, v9, v1

    int-to-float v3, v1

    .line 116
    int-to-float v4, v15

    int-to-float v5, v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 115
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    .end local v8    # "hasNextTab":Z
    .end local v9    # "height":I
    .end local v10    # "isRtl":Z
    .end local v14    # "selectedLeft":I
    .end local v15    # "selectedRight":I
    .end local v16    # "selectedTitle":Landroid/view/View;
    :cond_1
    return-void

    .line 99
    .restart local v10    # "isRtl":Z
    .restart local v14    # "selectedLeft":I
    .restart local v15    # "selectedRight":I
    .restart local v16    # "selectedTitle":Landroid/view/View;
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "hasNextTab":Z
    goto :goto_0

    .line 100
    .end local v8    # "hasNextTab":Z
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/list/ViewPagerTabStrip;->mIndexForSelection:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ViewPagerTabStrip;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    const/4 v8, 0x1

    .restart local v8    # "hasNextTab":Z
    goto :goto_0

    .end local v8    # "hasNextTab":Z
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "hasNextTab":Z
    goto :goto_0

    .line 103
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/contacts/list/ViewPagerTabStrip;->mIndexForSelection:I

    .line 76
    iput p2, p0, Lcom/android/contacts/list/ViewPagerTabStrip;->mSelectionOffset:F

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/list/ViewPagerTabStrip;->invalidate()V

    .line 74
    return-void
.end method

.method public setShowUnderline(Z)V
    .locals 0
    .param p1, "showUnderline"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/contacts/list/ViewPagerTabStrip;->mShowUnderline:Z

    .line 83
    return-void
.end method
