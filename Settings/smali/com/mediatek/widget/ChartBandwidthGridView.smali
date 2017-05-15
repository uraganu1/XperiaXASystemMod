.class public Lcom/mediatek/widget/ChartBandwidthGridView;
.super Landroid/view/View;
.source "ChartBandwidthGridView.java"


# instance fields
.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartBandwidthGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartBandwidthGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/mediatek/widget/ChartBandwidthGridView;->setWillNotDraw(Z)V

    .line 53
    sget-object v1, Lcom/android/settings/R$styleable;->ChartGridView:[I

    .line 52
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings/widget/ChartAxis;

    .prologue
    .line 61
    const-string/jumbo v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 62
    const-string/jumbo v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 60
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartBandwidthGridView;->getWidth()I

    move-result v10

    .line 72
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartBandwidthGridView;->getHeight()I

    move-result v2

    .line 74
    .local v2, "height":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 75
    .local v7, "secondary":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 76
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 78
    .local v8, "secondaryHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v13}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v9

    .line 79
    .local v9, "vertTicks":[F
    const/4 v13, 0x0

    array-length v14, v9

    :goto_0
    if-ge v13, v14, :cond_0

    aget v12, v9, v13

    .line 80
    .local v12, "y":F
    int-to-float v15, v8

    add-float/2addr v15, v12

    int-to-float v0, v2

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    float-to-int v1, v15

    .line 81
    .local v1, "bottom":I
    float-to-int v15, v12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0, v15, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "bottom":I
    .end local v12    # "y":F
    :cond_0
    mul-int/lit8 v13, v8, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15, v10, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    .end local v8    # "secondaryHeight":I
    .end local v9    # "vertTicks":[F
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 90
    .local v4, "primary":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 91
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 92
    .local v5, "primaryWidth":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v13}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v3

    .line 93
    .local v3, "horizTicks":[F
    const/4 v13, 0x0

    array-length v14, v3

    :goto_1
    if-ge v13, v14, :cond_2

    aget v11, v3, v13

    .line 94
    .local v11, "x":F
    int-to-float v15, v5

    add-float/2addr v15, v11

    float-to-int v6, v15

    .line 95
    .local v6, "right":I
    float-to-int v15, v11

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 70
    .end local v3    # "horizTicks":[F
    .end local v5    # "primaryWidth":I
    .end local v6    # "right":I
    .end local v11    # "x":F
    :cond_2
    return-void
.end method
