.class Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;
.super Lcom/android/systemui/qs/QSTileView;
.source "SimDataConnectionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullFillQSTileView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;


# direct methods
.method public constructor <init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    .line 127
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method private exactly(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private labelView()Landroid/view/View;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getDual()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getDualLabel()Lcom/android/systemui/qs/QSDualTileLabel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 141
    .local v3, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 142
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getIconSizePx()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->exactly(I)I

    move-result v2

    .line 144
    .local v2, "iconSpec":I
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getQSIcon()Landroid/view/View;

    move-result-object v4

    .line 145
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 144
    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    .line 147
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    .line 148
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 147
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 149
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getDual()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getDivider()Landroid/view/View;

    move-result-object v4

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getDivider()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v5}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->exactly(I)I

    move-result v5

    .line 150
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getIconSizePx()I

    move-result v4

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getTilePaddingBelowIconPx()I

    move-result v5

    .line 153
    add-int/2addr v4, v5

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getTilePaddingTopPx()I

    move-result v5

    .line 153
    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->exactly(I)I

    move-result v1

    .line 155
    .local v1, "heightSpec":I
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getTopBackgroundView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Landroid/view/View;->measure(II)V

    .line 156
    invoke-virtual {p0, v3, v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->setMeasuredDimension(II)V

    .line 139
    return-void
.end method

.method protected updateRippleSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 163
    div-int/lit8 v0, p1, 0x2

    .line 165
    .local v0, "cx":I
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getDual()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getQSIcon()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getIconSizePx()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 167
    .local v1, "cy":I
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getIconSizePx()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 169
    .local v2, "rad":I
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$FullFillQSTileView;->getRipple()Landroid/graphics/drawable/RippleDrawable;

    move-result-object v3

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 160
    return-void

    .line 166
    .end local v1    # "cy":I
    .end local v2    # "rad":I
    :cond_0
    div-int/lit8 v1, p2, 0x2

    .restart local v1    # "cy":I
    goto :goto_0
.end method
