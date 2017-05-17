.class public Lcom/android/contacts/quickcontact/WhitenessUtils;
.super Ljava/lang/Object;
.source "WhitenessUtils.java"


# static fields
.field private static final HEIGHT_PERCENT_ANALYZED:F = 0.2f

.field private static final LUMINANCE_OF_WHITE:F = 0.9f

.field private static final PROPORTION_WHITE_CUTOFF:F = 0.1f

.field private static final THIRD:F = 0.33f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateXyzLuma(I)F
    .locals 3
    .param p0, "rgb"    # I

    .prologue
    .line 108
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    .line 109
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    .line 108
    add-float/2addr v0, v1

    .line 110
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr v1, v2

    .line 108
    add-float/2addr v0, v1

    .line 110
    const/high16 v1, 0x437f0000    # 255.0f

    .line 108
    div-float/2addr v0, v1

    return v0
.end method

.method public static isBitmapWhiteAtTopOrBottom(Landroid/graphics/Bitmap;)Z
    .locals 13
    .param p0, "largeBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    const-string/jumbo v2, "isBitmapWhiteAtTopOrBottom"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/android/contacts/quickcontact/WhitenessUtils;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "smallBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v1, v2, [I

    .line 62
    .local v1, "rgbPixels":[I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 62
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 66
    const/4 v10, 0x0

    .line 67
    .local v10, "whiteCount":I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    int-to-float v2, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f2b851e    # 0.66999996f

    mul-float/2addr v2, v3

    float-to-int v11, v2

    .line 69
    .local v11, "x":I
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 68
    if-ge v11, v2, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v12

    add-int/2addr v2, v11

    aget v8, v1, v2

    .line 71
    .local v8, "rgb":I
    invoke-static {v8}, Lcom/android/contacts/quickcontact/WhitenessUtils;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    add-int/lit8 v10, v10, 0x1

    .line 69
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 67
    .end local v8    # "rgb":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 76
    .end local v11    # "x":I
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    .line 77
    const v3, 0x3ea8f5c3    # 0.33f

    .line 76
    mul-float/2addr v2, v3

    .line 77
    const v3, 0x3e4ccccd    # 0.2f

    .line 76
    mul-float/2addr v2, v3

    float-to-int v9, v2

    .line 78
    .local v9, "totalPixels":I
    int-to-float v2, v10

    int-to-float v3, v9

    div-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 79
    const/4 v2, 0x1

    .line 99
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    return v2

    .line 83
    :cond_3
    const/4 v10, 0x0

    .line 84
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v12, v2

    .line 85
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 84
    if-ge v12, v2, :cond_6

    .line 86
    const/4 v11, 0x0

    .restart local v11    # "x":I
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v12

    add-int/2addr v2, v11

    aget v8, v1, v2

    .line 88
    .restart local v8    # "rgb":I
    invoke-static {v8}, Lcom/android/contacts/quickcontact/WhitenessUtils;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    add-int/lit8 v10, v10, 0x1

    .line 86
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 85
    .end local v8    # "rgb":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 94
    .end local v11    # "x":I
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 94
    mul-int/2addr v2, v3

    int-to-float v2, v2

    .line 95
    const v3, 0x3e4ccccd    # 0.2f

    .line 94
    mul-float/2addr v2, v3

    float-to-int v9, v2

    .line 97
    int-to-float v2, v10

    int-to-float v3, v9

    div-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    const/4 v2, 0x1

    .line 99
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 97
    return v2

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 98
    .end local v0    # "smallBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "rgbPixels":[I
    .end local v9    # "totalPixels":I
    .end local v10    # "whiteCount":I
    .end local v12    # "y":I
    :catchall_0
    move-exception v2

    .line 99
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 98
    throw v2
.end method

.method private static isWhite(I)Z
    .locals 2
    .param p0, "rgb"    # I

    .prologue
    .line 104
    invoke-static {p0}, Lcom/android/contacts/quickcontact/WhitenessUtils;->calculateXyzLuma(I)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    const/16 v0, 0x64

    .line 118
    .local v0, "CALCULATE_BITMAP_MIN_DIMENSION":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 120
    .local v1, "minDimension":I
    const/16 v3, 0x64

    if-gt v1, v3, :cond_0

    .line 122
    return-object p0

    .line 125
    :cond_0
    int-to-float v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v2, v4, v3

    .line 127
    .local v2, "scaleRatio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 129
    const/4 v5, 0x0

    .line 126
    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method
