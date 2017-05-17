.class public Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "CenterCrop.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "CenterCrop.com.bumptech.glide.load.resource.bitmap"

    .line 39
    return-object v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "toTransform"    # Landroid/graphics/Bitmap;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {p1, p3, p4, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, "toReuse":Landroid/graphics/Bitmap;
    invoke-static {v0, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    .local v1, "transformed":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 34
    :cond_0
    :goto_1
    return-object v1

    .line 28
    .end local v0    # "toReuse":Landroid/graphics/Bitmap;
    .end local v1    # "transformed":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    goto :goto_0

    .line 31
    .restart local v0    # "toReuse":Landroid/graphics/Bitmap;
    .restart local v1    # "transformed":Landroid/graphics/Bitmap;
    :cond_2
    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method
