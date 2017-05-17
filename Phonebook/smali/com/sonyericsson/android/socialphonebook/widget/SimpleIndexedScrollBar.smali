.class public abstract Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;
.super Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;
.source "SimpleIndexedScrollBar.java"


# instance fields
.field private mCharXOffset:[F

.field private mHighlightRect:Landroid/graphics/Rect;

.field protected mScrubberDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightRect:Landroid/graphics/Rect;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightRect:Landroid/graphics/Rect;

    .line 47
    return-void
.end method


# virtual methods
.method protected drawScrollBar(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mYOffset:F

    .line 108
    .local v1, "y":F
    const-wide/16 v2, 0x1

    .line 109
    .local v2, "mask":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mDrawSectionCnt:I

    if-ge v0, v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionTextScaleXs(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 111
    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightBits:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionLabel(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mCharXOffset:[F

    aget v5, v5, v0

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mBoxHeight:F

    add-float/2addr v1, v4

    .line 109
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    goto :goto_0

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mTextColorHighlight:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 106
    :cond_1
    return-void
.end method

.method protected drawVisibleSectionsIndication(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "aCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightCount:I

    if-lez v4, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->getPaddingLeft()I

    move-result v4

    int-to-float v1, v4

    .line 137
    .local v1, "left":F
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightFromIndex:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mBoxHeight:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 138
    .local v3, "top":F
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mBoxWidth:F

    add-float v2, v4, v5

    .line 139
    .local v2, "right":F
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mBoxHeight:F

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 140
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightRect:Landroid/graphics/Rect;

    float-to-int v5, v1

    float-to-int v6, v3

    float-to-int v7, v2

    float-to-int v8, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 141
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mScrubberDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 142
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mScrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "top":F
    :cond_0
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mSectionCnt:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mCharXOffset:[F

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mScrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    .line 102
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "aOldh"    # I

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->onSizeChanged(IIII)V

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mDrawSectionCnt:I

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mCharXOffset:[F

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mBoxWidth:F

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getTextWidth(I)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mBarTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;

    if-eqz v2, :cond_1

    if-ne p1, p0, :cond_1

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 82
    .local v1, "y":F
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 84
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 85
    const/4 v0, 0x0

    .line 92
    .local v0, "pos":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mBarTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;

    invoke-interface {v2, p1, v0, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;->onTouch(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    .line 94
    .end local v0    # "pos":I
    .end local v1    # "y":F
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 87
    .restart local v1    # "y":F
    :cond_2
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mBoxHeight:F

    div-float v2, v1, v2

    float-to-int v0, v2

    .line 88
    .restart local v0    # "pos":I
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mSectionCnt:I

    if-lt v0, v2, :cond_0

    .line 89
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mSectionCnt:I

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method public final setHighlight([II)V
    .locals 8
    .param p1, "sectionIndexes"    # [I
    .param p2, "count"    # I

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .local v0, "highlightBits":J
    const/4 v2, 0x0

    .line 55
    .local v2, "highlightFromIndex":I
    const/4 v3, -0x1

    .line 56
    .local v3, "highlightToIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 57
    aget v5, p1, v4

    .line 58
    .local v5, "index":I
    if-ltz v5, :cond_0

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mSectionCnt:I

    if-ge v5, v6, :cond_0

    .line 59
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    or-long/2addr v0, v6

    .line 60
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 61
    move v2, v5

    .line 62
    move v3, v5

    .line 56
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    :cond_1
    if-ge v5, v2, :cond_2

    .line 64
    move v2, v5

    goto :goto_1

    .line 65
    :cond_2
    if-le v5, v3, :cond_0

    .line 66
    move v3, v5

    goto :goto_1

    .line 70
    .end local v5    # "index":I
    :cond_3
    iget-wide v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightBits:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_4

    .line 71
    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightBits:J

    .line 72
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightFromIndex:I

    .line 73
    sub-int v6, v3, v2

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->mHighlightCount:I

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/SimpleIndexedScrollBar;->invalidate()V

    .line 52
    :cond_4
    return-void
.end method
