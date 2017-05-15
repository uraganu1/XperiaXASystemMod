.class public Lcom/sonymobile/settings/nfc/HceColorBar;
.super Landroid/widget/LinearLayout;
.source "HceColorBar.java"


# instance fields
.field private mLeftColor:I

.field private mLeftRatio:F

.field private mMiddleColor:I

.field private mMiddleRatio:F

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRightColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const v0, -0xdabf9f

    iput v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftColor:I

    .line 40
    const v0, -0x714b1d

    iput v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleColor:I

    .line 41
    const v0, -0x262627

    iput v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRightColor:I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceColorBar;->setWillNotDraw(Z)V

    .line 49
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    return-void
.end method

.method private updateIndicator()V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    .line 68
    .local v0, "off":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 70
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 66
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->getWidth()I

    move-result v3

    .line 85
    .local v3, "width":I
    const/4 v0, 0x0

    .line 87
    .local v0, "left":I
    int-to-float v4, v3

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v1, v4, 0x0

    .line 88
    .local v1, "right":I
    int-to-float v4, v3

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v1, v4

    .line 90
    .local v2, "right2":I
    if-lez v1, :cond_0

    .line 91
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 92
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 93
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 95
    add-int/lit8 v4, v1, 0x0

    sub-int/2addr v3, v4

    .line 96
    move v0, v1

    .line 99
    :cond_0
    move v1, v2

    .line 101
    if-ge v0, v1, :cond_1

    .line 102
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 103
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 104
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    sub-int v4, v1, v0

    sub-int/2addr v3, v4

    .line 107
    move v0, v1

    .line 110
    :cond_1
    add-int v1, v0, v3

    .line 111
    if-ge v0, v1, :cond_2

    .line 112
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 113
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 114
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRightColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 76
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->updateIndicator()V

    .line 74
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "middle"    # I
    .param p3, "right"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftColor:I

    .line 60
    iput p2, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleColor:I

    .line 61
    iput p3, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRightColor:I

    .line 62
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->updateIndicator()V

    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->invalidate()V

    .line 58
    return-void
.end method

.method public setRatios(FF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "middle"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftRatio:F

    .line 54
    iput p2, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleRatio:F

    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->invalidate()V

    .line 52
    return-void
.end method
