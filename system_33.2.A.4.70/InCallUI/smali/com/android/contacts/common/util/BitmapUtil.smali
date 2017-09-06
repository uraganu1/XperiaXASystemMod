.class public Lcom/android/contacts/common/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "sampleSize"    # I

    .prologue
    .line 88
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 94
    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 91
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 92
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public static findOptimalSampleSize(II)I
    .locals 5
    .param p0, "originalSmallerExtent"    # I
    .param p1, "targetExtent"    # I

    .prologue
    const/4 v2, 0x1

    .line 65
    if-ge p1, v2, :cond_0

    return v2

    .line 66
    :cond_0
    if-ge p0, v2, :cond_1

    return v2

    .line 73
    :cond_1
    move v0, p0

    .line 74
    .local v0, "extent":I
    const/4 v1, 0x1

    .line 75
    .local v1, "sampleSize":I
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 76
    shl-int/lit8 v1, v1, 0x1

    .line 77
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_2
    return v1
.end method

.method public static getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 137
    const/4 v3, 0x0

    return-object v3

    .line 139
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    .line 141
    .local v9, "inputConfig":Landroid/graphics/Bitmap$Config;
    if-eqz v9, :cond_1

    .line 140
    .end local v9    # "inputConfig":Landroid/graphics/Bitmap$Config;
    :goto_0
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 142
    .local v12, "result":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 144
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 145
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 150
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 153
    .local v11, "inputWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 157
    .local v10, "inputHeight":I
    int-to-float v3, v11

    move/from16 v0, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 158
    int-to-float v4, v10

    move/from16 v0, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 157
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 160
    .local v13, "scaleBy":F
    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v3, v13

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v15, v3

    .line 161
    .local v15, "xCropAmountHalved":I
    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v3, v13

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v16, v0

    .line 163
    .local v16, "yCropAmountHalved":I
    new-instance v14, Landroid/graphics/Rect;

    .line 164
    div-int/lit8 v3, v11, 0x2

    sub-int/2addr v3, v15

    .line 165
    div-int/lit8 v4, v10, 0x2

    sub-int v4, v4, v16

    .line 166
    div-int/lit8 v5, v11, 0x2

    add-int/2addr v5, v15

    .line 167
    div-int/lit8 v6, v10, 0x2

    add-int v6, v6, v16

    .line 163
    invoke-direct {v14, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 169
    .local v14, "src":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-direct {v8, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 170
    .local v8, "dst":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v14, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 171
    return-object v12

    .line 141
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "dst":Landroid/graphics/RectF;
    .end local v10    # "inputHeight":I
    .end local v11    # "inputWidth":I
    .end local v12    # "result":Landroid/graphics/Bitmap;
    .end local v13    # "scaleBy":F
    .end local v14    # "src":Landroid/graphics/Rect;
    .end local v15    # "xCropAmountHalved":I
    .end local v16    # "yCropAmountHalved":I
    .restart local v9    # "inputConfig":Landroid/graphics/Bitmap$Config;
    :cond_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_0
.end method

.method public static getSmallerExtentFromBytes([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 53
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method
