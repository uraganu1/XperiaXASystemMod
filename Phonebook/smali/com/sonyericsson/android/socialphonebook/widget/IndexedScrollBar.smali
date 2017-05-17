.class public abstract Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;
.super Landroid/view/View;
.source "IndexedScrollBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;
    }
.end annotation


# static fields
.field protected static final BOX_HEIGHT_FACTOR:F = 0.95f

.field private static final BOX_WIDTH_FACTOR:F = 0.95f

.field private static final DECREASED_TEXT_SCALE_X:F = 0.05f

.field private static final FONT_SIZE_DECREMENT:F = 0.3f

.field public static final MAX_SECTION_COUNT:I = 0x40

.field private static final MIN_TEXT_SCALE_X:F = 0.3f

.field private static final TEXT_SCALEX_FACTOR:F = 0.1f


# instance fields
.field private mBackColorHighlight:I

.field protected mBarTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;

.field protected mBoxHeight:F

.field protected mBoxPaddingBottom:I

.field protected mBoxPaddingTop:I

.field protected mBoxPaded:Z

.field protected mBoxWidth:F

.field protected mCharXOffset:F

.field protected mDrawSectionCnt:I

.field protected mHighlightBits:J

.field protected mHighlightCount:I

.field protected mHighlightFromIndex:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPrevHeight:I

.field protected mPrevWidth:I

.field protected mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

.field protected mSectionCnt:I

.field protected mTextColor:I

.field protected mTextColorHighlight:I

.field private mTextSize:I

.field protected mUsedTextSize:F

.field protected mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mHighlightBits:J

    .line 46
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mHighlightFromIndex:I

    .line 49
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mHighlightCount:I

    .line 52
    const v0, -0x7f000001

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColor:I

    .line 55
    const v0, -0xce2502

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColorHighlight:I

    .line 76
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingTop:I

    .line 79
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingBottom:I

    .line 82
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaded:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBarTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;

    .line 109
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextSize:I

    .line 112
    const v0, 0xdffffff

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBackColorHighlight:I

    .line 138
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->init(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mHighlightBits:J

    .line 46
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mHighlightFromIndex:I

    .line 49
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mHighlightCount:I

    .line 52
    const v0, -0x7f000001

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColor:I

    .line 55
    const v0, -0xce2502

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColorHighlight:I

    .line 76
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingTop:I

    .line 79
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingBottom:I

    .line 82
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaded:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBarTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;

    .line 109
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextSize:I

    .line 112
    const v0, 0xdffffff

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBackColorHighlight:I

    .line 149
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->init(Landroid/content/Context;)V

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->applyAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method private measureHeight(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 477
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 478
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 479
    .local v3, "specSize":I
    const/4 v1, 0x0

    .line 480
    .local v1, "result":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextSize:I

    if-gtz v4, :cond_2

    .line 482
    :cond_0
    move v1, v3

    .line 497
    :cond_1
    :goto_0
    return v1

    .line 486
    :cond_2
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaded:Z

    if-eqz v4, :cond_3

    .line 487
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingTop:I

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingBottom:I

    add-int/2addr v4, v5

    .line 488
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 487
    add-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 492
    .local v0, "boxHeight":I
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionCount()I

    move-result v4

    mul-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    .line 493
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 494
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 490
    .end local v0    # "boxHeight":I
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    const v5, 0x3f733333    # 0.95f

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v0, v4, 0x1

    .restart local v0    # "boxHeight":I
    goto :goto_1
.end method

.method private measureWidth(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 453
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 454
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 456
    .local v2, "specSize":I
    const/4 v0, 0x0

    .line 457
    .local v0, "result":I
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_0

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextSize:I

    if-gtz v3, :cond_2

    .line 459
    :cond_0
    move v0, v2

    .line 467
    :cond_1
    :goto_0
    return v0

    .line 461
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getLongestLabelString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingLeft()I

    move-result v4

    .line 461
    add-int/2addr v3, v4

    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingRight()I

    move-result v4

    .line 461
    add-int v0, v3, v4

    .line 463
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 464
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected applyAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    .line 290
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/R$styleable;->IndexedScrollBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 291
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColor:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setTextColor(I)V

    .line 293
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColorHighlight:I

    .line 292
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setTextColorHightlight(I)V

    .line 295
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBackColorHighlight:I

    .line 294
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setBackColorHightlight(I)V

    .line 297
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 298
    .local v1, "textSize":I
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setTextSize(I)V

    .line 300
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 301
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 300
    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setBoxPadding(II)V

    .line 303
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    return-void
.end method

.method protected abstract drawScrollBar(Landroid/graphics/Canvas;)V
.end method

.method protected abstract drawVisibleSectionsIndication(Landroid/graphics/Canvas;)V
.end method

.method public final getSectionCount()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSectionCnt:I

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Sections can\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSectionCnt:I

    .line 269
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSectionCnt:I

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The number of sections is zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSectionCnt:I

    const/16 v1, 0x40

    if-le v0, v1, :cond_2

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 274
    const-string/jumbo v1, "The number of sections exceeds maximum section count."

    .line 273
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "SOMA"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 279
    invoke-virtual {p0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->drawVisibleSectionsIndication(Landroid/graphics/Canvas;)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->drawScrollBar(Landroid/graphics/Canvas;)V

    .line 312
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->measureWidth(I)I

    move-result v1

    .line 332
    .local v1, "measureWidth":I
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->measureHeight(I)I

    move-result v0

    .line 333
    .local v0, "measureHeight":I
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setMeasuredDimension(II)V

    .line 330
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 414
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPrevWidth:I

    .line 415
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPrevHeight:I

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->setTextSize(II)V

    .line 418
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxWidth:F

    .line 419
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingBottom()I

    move-result v4

    sub-int v2, v3, v4

    .line 420
    .local v2, "height":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float v1, v3, v4

    .line 422
    .local v1, "fontHeight":F
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaded:Z

    if-eqz v3, :cond_0

    .line 423
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingTop:I

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingBottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 427
    .local v0, "boxHight":F
    :goto_0
    int-to-float v3, v2

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionCount()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxHeight:F

    .line 428
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxHeight:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_1

    .line 429
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxHeight:F

    .line 430
    int-to-float v3, v2

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxHeight:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mDrawSectionCnt:I

    .line 434
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxHeight:F

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->setBoxHeight(F)V

    .line 436
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mYOffset:F

    .line 437
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaded:Z

    if-eqz v3, :cond_2

    .line 438
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mYOffset:F

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingTop:I

    int-to-float v4, v4

    .line 439
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxHeight:F

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingTop:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingBottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sub-float/2addr v5, v1

    div-float/2addr v5, v7

    .line 438
    add-float/2addr v4, v5

    .line 440
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    .line 438
    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mYOffset:F

    .line 413
    :goto_2
    return-void

    .line 425
    .end local v0    # "boxHight":F
    :cond_0
    const v3, 0x3f733333    # 0.95f

    div-float v0, v1, v3

    .restart local v0    # "boxHight":F
    goto :goto_0

    .line 432
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionCount()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mDrawSectionCnt:I

    goto :goto_1

    .line 442
    :cond_2
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mYOffset:F

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxHeight:F

    sub-float/2addr v4, v1

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mYOffset:F

    goto :goto_2
.end method

.method public abstract onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public final setBackColorHightlight(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 192
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBackColorHighlight:I

    if-eq v0, p1, :cond_0

    .line 193
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBackColorHighlight:I

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->invalidate()V

    .line 191
    :cond_0
    return-void
.end method

.method public final setBoxPadding(II)V
    .locals 4
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .prologue
    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, "boxPaded":Z
    move v1, p1

    .line 224
    .local v1, "boxPaddingTop":I
    if-ltz v1, :cond_2

    .line 225
    const/4 v2, 0x1

    .line 229
    :goto_0
    move v0, p2

    .line 230
    .local v0, "boxPaddingBottom":I
    if-ltz v0, :cond_3

    .line 231
    const/4 v2, 0x1

    .line 235
    :goto_1
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaded:Z

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingTop:I

    if-eq v3, v1, :cond_4

    .line 237
    :cond_0
    :goto_2
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaded:Z

    .line 238
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingTop:I

    .line 239
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingBottom:I

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->requestLayout()V

    .line 241
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->invalidate()V

    .line 221
    :cond_1
    return-void

    .line 227
    .end local v0    # "boxPaddingBottom":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 233
    .restart local v0    # "boxPaddingBottom":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 236
    :cond_4
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingBottom:I

    if-eq v3, v0, :cond_1

    goto :goto_2
.end method

.method public abstract setHighlight([II)V
.end method

.method public final setOnIndexedScrollBarTouchListener(Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;)V
    .locals 0
    .param p1, "onIndexedScrollBarTouchListener"    # Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBarTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;

    .line 253
    return-void
.end method

.method public final setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 168
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColor:I

    if-eq v0, p1, :cond_0

    .line 169
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColor:I

    .line 170
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->invalidate()V

    .line 167
    :cond_0
    return-void
.end method

.method public final setTextColorHightlight(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 180
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColorHighlight:I

    if-eq v0, p1, :cond_0

    .line 181
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextColorHighlight:I

    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->invalidate()V

    .line 179
    :cond_0
    return-void
.end method

.method public final setTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 204
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextSize:I

    if-eq v0, p1, :cond_1

    .line 205
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextSize:I

    .line 206
    if-lez p1, :cond_0

    .line 207
    int-to-float v0, p1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mUsedTextSize:F

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->requestLayout()V

    .line 211
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->invalidate()V

    .line 203
    :cond_1
    return-void
.end method

.method protected setTextSize(II)V
    .locals 12
    .param p1, "barWidth"    # I
    .param p2, "barHeight"    # I

    .prologue
    const v11, 0x3f733333    # 0.95f

    const v10, 0x3e99999a    # 0.3f

    .line 344
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mTextSize:I

    if-gtz v8, :cond_0

    .line 345
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getCountForFontSizeCalculation()I

    move-result v8

    int-to-float v1, v8

    .line 346
    .local v1, "count":F
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingTop()I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v0, v8, v1

    .line 348
    .local v0, "boxHeight":F
    iget-boolean v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaded:Z

    if-eqz v8, :cond_3

    .line 349
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingTop:I

    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mBoxPaddingBottom:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v0, v8

    .line 353
    :goto_0
    int-to-float v8, p2

    div-float/2addr v8, v1

    iput v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mUsedTextSize:F

    .line 354
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mUsedTextSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 355
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float v2, v8, v9

    .line 357
    .local v2, "fontHeight":F
    cmpl-float v8, v2, v0

    if-lez v8, :cond_0

    .line 358
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mUsedTextSize:F

    mul-float/2addr v8, v0

    div-float/2addr v8, v2

    iput v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mUsedTextSize:F

    .line 359
    :goto_1
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mUsedTextSize:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 360
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mUsedTextSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 361
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float v2, v8, v9

    .line 362
    cmpg-float v8, v2, v0

    if-gtz v8, :cond_4

    .line 370
    .end local v0    # "boxHeight":F
    .end local v1    # "count":F
    .end local v2    # "fontHeight":F
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingLeft()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->getPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .line 371
    .local v7, "width":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSectionCnt:I

    if-ge v3, v8, :cond_7

    .line 373
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v8, v3}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_5

    .line 375
    const/high16 v5, 0x3f800000    # 1.0f

    .line 382
    .local v5, "newScaleX":F
    :cond_1
    :goto_3
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 383
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 384
    .local v6, "newWidth":F
    int-to-float v8, v7

    mul-float/2addr v8, v11

    cmpl-float v8, v6, v8

    if-lez v8, :cond_2

    .line 386
    :goto_4
    const v8, 0x3d4ccccd    # 0.05f

    sub-float/2addr v5, v8

    .line 387
    cmpg-float v8, v5, v10

    if-gez v8, :cond_6

    .line 388
    const v5, 0x3e99999a    # 0.3f

    .line 389
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 390
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 397
    :cond_2
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v8, v3, v5}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->setTextScaleXs(IF)V

    .line 398
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v8, v3, v6}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->setTextWidth(IF)V

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 351
    .end local v3    # "i":I
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "newScaleX":F
    .end local v6    # "newWidth":F
    .end local v7    # "width":I
    .restart local v0    # "boxHeight":F
    .restart local v1    # "count":F
    :cond_3
    mul-float/2addr v0, v11

    goto/16 :goto_0

    .line 365
    .restart local v2    # "fontHeight":F
    :cond_4
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mUsedTextSize:F

    sub-float/2addr v8, v10

    iput v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mUsedTextSize:F

    goto :goto_1

    .line 377
    .end local v0    # "boxHeight":F
    .end local v1    # "count":F
    .end local v2    # "fontHeight":F
    .restart local v3    # "i":I
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v7    # "width":I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v5, v9, v8

    .line 378
    .restart local v5    # "newScaleX":F
    cmpg-float v8, v5, v10

    if-gez v8, :cond_1

    .line 379
    const v5, 0x3e99999a    # 0.3f

    goto :goto_3

    .line 393
    .restart local v6    # "newWidth":F
    :cond_6
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 394
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 395
    int-to-float v8, v7

    cmpl-float v8, v6, v8

    if-lez v8, :cond_2

    goto :goto_4

    .line 343
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "newScaleX":F
    .end local v6    # "newWidth":F
    :cond_7
    return-void
.end method
