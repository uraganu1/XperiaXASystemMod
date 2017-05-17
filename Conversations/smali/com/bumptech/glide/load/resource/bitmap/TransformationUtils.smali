.class public final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.super Ljava/lang/Object;
.source "TransformationUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "recycled"    # Landroid/graphics/Bitmap;
    .param p1, "toCrop"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    .line 39
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-eq v7, p2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .local v1, "dx":F
    const/4 v2, 0x0

    .line 47
    .local v2, "dy":F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    .local v3, "m":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v7, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v8, p2

    if-gt v7, v8, :cond_3

    .line 52
    int-to-float v7, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 53
    .local v6, "scale":F
    int-to-float v7, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    mul-float v2, v7, v9

    .line 56
    :goto_0
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    add-float v7, v1, v9

    float-to-int v7, v7

    int-to-float v7, v7

    add-float v8, v2, v9

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    if-nez p0, :cond_4

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {p2, p3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 66
    .local v5, "result":Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {p1, v5}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v7, 0x6

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 70
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 71
    return-object v5

    .line 40
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "m":Landroid/graphics/Matrix;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "scale":F
    :cond_1
    return-object v7

    .line 41
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v7, p3, :cond_0

    .line 42
    return-object p1

    .line 49
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v3    # "m":Landroid/graphics/Matrix;
    :cond_3
    int-to-float v7, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 50
    .restart local v6    # "scale":F
    int-to-float v7, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    mul-float v1, v7, v9

    goto :goto_0

    .line 60
    :cond_4
    move-object v5, p0

    .restart local v5    # "result":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static fitCenter(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "toFit"    # Landroid/graphics/Bitmap;
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move/from16 v0, p2

    if-eq v11, v0, :cond_2

    .line 92
    :cond_0
    move/from16 v0, p2

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 93
    .local v10, "widthPercentage":F
    move/from16 v0, p3

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v3, v11, v12

    .line 94
    .local v3, "heightPercentage":F
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 99
    .local v5, "minPercentage":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v8, v11

    .line 100
    .local v8, "targetWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v7, v11

    .line 102
    .local v7, "targetHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-eq v11, v8, :cond_4

    .line 109
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 110
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    invoke-interface {p1, v8, v7, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 111
    .local v9, "toReuse":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_6

    .line 115
    :goto_0
    invoke-static {p0, v9}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const-string/jumbo v11, "TransformationUtils"

    const/4 v12, 0x2

    .line 117
    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 124
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 126
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 127
    new-instance v6, Landroid/graphics/Paint;

    const/4 v11, 0x6

    invoke-direct {v6, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 128
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p0, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 130
    return-object v9

    .line 86
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    .end local v3    # "heightPercentage":F
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    .end local v5    # "minPercentage":F
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "targetHeight":I
    .end local v8    # "targetWidth":I
    .end local v9    # "toReuse":Landroid/graphics/Bitmap;
    .end local v10    # "widthPercentage":F
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move/from16 v0, p3

    if-ne v11, v0, :cond_0

    const-string/jumbo v11, "TransformationUtils"

    const/4 v12, 0x2

    .line 87
    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 90
    :goto_2
    return-object p0

    :cond_3
    const-string/jumbo v11, "TransformationUtils"

    const-string/jumbo v12, "requested target size matches input, returning input"

    .line 88
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 102
    .restart local v3    # "heightPercentage":F
    .restart local v5    # "minPercentage":F
    .restart local v7    # "targetHeight":I
    .restart local v8    # "targetWidth":I
    .restart local v10    # "widthPercentage":F
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ne v11, v7, :cond_1

    const-string/jumbo v11, "TransformationUtils"

    const/4 v12, 0x2

    .line 103
    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 106
    :goto_3
    return-object p0

    :cond_5
    const-string/jumbo v11, "TransformationUtils"

    const-string/jumbo v12, "adjusted target size matches input, returning input"

    .line 104
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 112
    .restart local v2    # "config":Landroid/graphics/Bitmap$Config;
    .restart local v9    # "toReuse":Landroid/graphics/Bitmap;
    :cond_6
    invoke-static {v8, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    :cond_7
    const-string/jumbo v11, "TransformationUtils"

    .line 118
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "request: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "TransformationUtils"

    .line 119
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toFit:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "TransformationUtils"

    .line 120
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toReuse: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "TransformationUtils"

    .line 121
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "minPct:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static getExifOrientationDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 227
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    .line 244
    .local v0, "degreesToRotate":I
    :goto_0
    return v0

    .end local v0    # "degreesToRotate":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 230
    .restart local v0    # "degreesToRotate":I
    goto :goto_0

    .end local v0    # "degreesToRotate":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 234
    .restart local v0    # "degreesToRotate":I
    goto :goto_0

    .end local v0    # "degreesToRotate":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 238
    .restart local v0    # "degreesToRotate":I
    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0
.end method

.method static initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
    .locals 5
    .param p0, "exifOrientation"    # I
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 290
    packed-switch p0, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 292
    :pswitch_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 298
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 299
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 302
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 303
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 306
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 309
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 310
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 313
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "toOrient"    # Landroid/graphics/Bitmap;
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "exifOrientation"    # I

    .prologue
    const/4 v10, 0x0

    .line 256
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-static {p2, v2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->initializeMatrixForRotation(ILandroid/graphics/Matrix;)V

    .line 258
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-nez v8, :cond_0

    .line 263
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    .local v4, "newRect":Landroid/graphics/RectF;
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 266
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 267
    .local v5, "newWidth":I
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 269
    .local v3, "newHeight":I
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 270
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    invoke-interface {p1, v5, v3, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 271
    .local v7, "result":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 275
    :goto_0
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->top:F

    neg-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 277
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 279
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 281
    return-object v7

    .line 259
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    .end local v3    # "newHeight":I
    .end local v4    # "newRect":Landroid/graphics/RectF;
    .end local v5    # "newWidth":I
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    :cond_0
    return-object p0

    .line 272
    .restart local v1    # "config":Landroid/graphics/Bitmap$Config;
    .restart local v3    # "newHeight":I
    .restart local v4    # "newRect":Landroid/graphics/RectF;
    .restart local v5    # "newWidth":I
    .restart local v7    # "result":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v5, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "toTransform"    # Landroid/graphics/Bitmap;
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto :goto_0
.end method
