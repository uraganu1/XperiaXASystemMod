.class public Lcom/sonyericsson/conversations/view/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private mBaseBitmap:Landroid/graphics/Bitmap;

.field private mBaseDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBoundsRect:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mShader:Landroid/graphics/BitmapShader;

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonyericsson/conversations/view/RoundedDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->-assertionsDisabled:Z

    .line 21
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBoundsRect:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    return-void
.end method

.method public static createForBitmap(Landroid/graphics/Bitmap;)Lcom/sonyericsson/conversations/view/RoundedDrawable;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    new-instance v0, Lcom/sonyericsson/conversations/view/RoundedDrawable;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/view/RoundedDrawable;-><init>()V

    .line 39
    .local v0, "roundedDrawable":Lcom/sonyericsson/conversations/view/RoundedDrawable;
    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/view/RoundedDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    return-object v0
.end method

.method public static createForDrawable(Landroid/graphics/drawable/Drawable;)Lcom/sonyericsson/conversations/view/RoundedDrawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 44
    new-instance v0, Lcom/sonyericsson/conversations/view/RoundedDrawable;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/view/RoundedDrawable;-><init>()V

    .line 45
    .local v0, "roundedDrawable":Lcom/sonyericsson/conversations/view/RoundedDrawable;
    iput-object p0, v0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    return-object v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 96
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 97
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 101
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 102
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 103
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    return-object v0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBaseBitmap:Landroid/graphics/Bitmap;

    .line 70
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBaseBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mShader:Landroid/graphics/BitmapShader;

    .line 68
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBoundsRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 74
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBaseBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 56
    sget-boolean v0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/view/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/view/RoundedDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBaseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBaseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mBoundsRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 50
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/RoundedDrawable;->invalidateSelf()V

    .line 79
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/RoundedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/RoundedDrawable;->invalidateSelf()V

    .line 85
    return-void
.end method
