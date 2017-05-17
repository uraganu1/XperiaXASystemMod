.class Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;
.super Ljava/lang/Object;
.source "ImageHandler.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ImageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundedCornersTransformation"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    .line 616
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->-get0()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 617
    .local v6, "resources":Landroid/content/res/Resources;
    const v7, 0x7f0c003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v5, v7

    .line 618
    .local v5, "radius":F
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 620
    .local v4, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 619
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 621
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 622
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    .line 623
    const/4 v7, 0x7

    .line 622
    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 624
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v1, v10, v10, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 625
    .local v1, "drawRectangle":Landroid/graphics/RectF;
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v5, v5, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 626
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 627
    invoke-virtual {v0, p1, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 632
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 634
    return-object v2
.end method
