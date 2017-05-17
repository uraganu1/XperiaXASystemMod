.class public Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;
.super Landroid/view/View;
.source "ExponentialGradientView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mPaint:Landroid/graphics/Paint;

    .line 35
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/R$styleable;->ExponentialGradientView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 37
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 38
    .local v0, "color":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 53
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v0, "bitmapCanvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-gt v8, p2, :cond_0

    .line 59
    const/4 v1, 0x0

    int-to-float v2, v8

    int-to-float v3, p1

    int-to-float v4, v8

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 62
    int-to-float v1, v8

    int-to-float v2, p2

    div-float v7, v1, v2

    .line 63
    .local v7, "deci":F
    float-to-double v2, v7

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v9, v2

    .line 64
    .local v9, "pow":F
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v6, v9, v1

    .line 65
    .local v6, "alpha":F
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/ExponentialGradientView;->mPaint:Landroid/graphics/Paint;

    float-to-int v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 50
    .end local v6    # "alpha":F
    .end local v7    # "deci":F
    .end local v9    # "pow":F
    :cond_0
    return-void
.end method
