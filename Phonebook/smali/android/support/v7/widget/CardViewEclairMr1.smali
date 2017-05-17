.class Landroid/support/v7/widget/CardViewEclairMr1;
.super Ljava/lang/Object;
.source "CardViewEclairMr1.java"

# interfaces
.implements Landroid/support/v7/widget/CardViewImpl;


# instance fields
.field final sCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    .line 25
    return-void
.end method

.method private getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    return-object v0
.end method


# virtual methods
.method createBackground(Landroid/content/Context;IFFF)Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # I
    .param p3, "radius"    # F
    .param p4, "elevation"    # F
    .param p5, "maxElevation"    # F

    .prologue
    .line 80
    new-instance v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;IFFF)V

    return-object v0
.end method

.method public getElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public getRadius(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/support/v7/widget/CardViewEclairMr1$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardViewEclairMr1$1;-><init>(Landroid/support/v7/widget/CardViewEclairMr1;)V

    .line 34
    sput-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 30
    return-void
.end method

.method public initialize(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 7
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # I
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .prologue
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 71
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/CardViewEclairMr1;->createBackground(Landroid/content/Context;IFFF)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v6

    .line 73
    .local v6, "background":Landroid/support/v7/widget/RoundRectDrawableWithShadow;
    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 74
    invoke-interface {p1, v6}, Landroid/support/v7/widget/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 70
    return-void
.end method

.method public onCompatPaddingChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 0
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 95
    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 2
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 102
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 100
    return-void
.end method

.method public setElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setShadowSize(F)V

    .line 117
    return-void
.end method

.method public setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 129
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 127
    return-void
.end method

.method public setRadius(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 108
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 106
    return-void
.end method

.method public updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 5
    .param p1, "cardView"    # Landroid/support/v7/widget/CardViewDelegate;

    .prologue
    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getShadowBackground(Landroid/support/v7/widget/CardViewDelegate;)Landroid/support/v7/widget/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    move-object v1, p1

    .line 88
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v1, p1

    .line 89
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewEclairMr1;->getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 90
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 91
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 90
    invoke-interface {p1, v1, v2, v3, v4}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 85
    return-void
.end method
