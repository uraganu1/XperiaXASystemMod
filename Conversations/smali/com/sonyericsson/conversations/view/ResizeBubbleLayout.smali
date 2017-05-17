.class public Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;
.super Landroid/widget/RelativeLayout;
.source "ResizeBubbleLayout.java"


# instance fields
.field private mAlphaMask:Landroid/graphics/Bitmap;

.field private mCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private createAlphaMask(II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 77
    .local v6, "alphaMask":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 80
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    int-to-float v3, p1

    int-to-float v4, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 84
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 85
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->mCornerRadius:F

    iget v3, p0, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->mCornerRadius:F

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 87
    return-object v6
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    const v1, 0x7f0c00f3

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->mCornerRadius:F

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->setWillNotDraw(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 53
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 56
    .local v0, "h":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->mAlphaMask:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    .line 57
    invoke-direct {p0, v5, v0}, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->createAlphaMask(II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->mAlphaMask:Landroid/graphics/Bitmap;

    .line 61
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 62
    .local v3, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v4, "tmpCanvas":Landroid/graphics/Canvas;
    invoke-super {p0, v4}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 67
    .local v1, "maskPaint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    iget-object v6, p0, Lcom/sonyericsson/conversations/view/ResizeBubbleLayout;->mAlphaMask:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    new-instance v2, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 72
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1, v3, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 51
    return-void
.end method
