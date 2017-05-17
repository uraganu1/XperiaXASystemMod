.class public final Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;
    }
.end annotation


# static fields
.field private static maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 39
    new-array v1, v2, [I

    .local v1, "maxTextureSize":[I
    const/16 v2, 0xd33

    .line 40
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 41
    aget v2, v1, v3

    const/16 v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 42
    .local v0, "maxBitmapDimension":I
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v0, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    sput-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .locals 9
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "powerOf2Scale"    # Z

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v3

    .line 93
    .local v3, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v2

    .line 94
    .local v2, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    .line 95
    .local v5, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    .local v4, "targetHeight":I
    const/4 v1, 0x1

    .line 99
    .local v1, "scale":I
    div-int v6, v3, v5

    .line 100
    .local v6, "widthScale":I
    div-int v0, v2, v4

    .line 102
    .local v0, "heightScale":I
    sget-object v7, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v7, 0x1

    .line 127
    if-lt v1, v7, :cond_6

    .line 131
    :goto_1
    return v1

    .line 104
    :pswitch_0
    if-nez p3, :cond_1

    .line 111
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 105
    :cond_1
    :goto_2
    div-int/lit8 v7, v3, 0x2

    if-lt v7, v5, :cond_3

    .line 106
    :cond_2
    div-int/lit8 v3, v3, 0x2

    .line 107
    div-int/lit8 v2, v2, 0x2

    .line 108
    mul-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 105
    :cond_3
    div-int/lit8 v7, v2, 0x2

    if-ge v7, v4, :cond_2

    goto :goto_0

    .line 115
    :pswitch_1
    if-nez p3, :cond_5

    .line 122
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 117
    :cond_4
    div-int/lit8 v3, v3, 0x2

    .line 118
    div-int/lit8 v2, v2, 0x2

    .line 119
    mul-int/lit8 v1, v1, 0x2

    .line 116
    :cond_5
    div-int/lit8 v7, v3, 0x2

    if-lt v7, v5, :cond_0

    div-int/lit8 v7, v2, 0x2

    if-ge v7, v4, :cond_4

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    .line 128
    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
    .locals 12
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "stretch"    # Z

    .prologue
    const/4 v9, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    .line 180
    .local v5, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    .line 181
    .local v4, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v7

    .line 182
    .local v7, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v6

    .line 184
    .local v6, "targetHeight":I
    int-to-float v10, v5

    int-to-float v11, v7

    div-float v8, v10, v11

    .line 185
    .local v8, "widthScale":F
    int-to-float v10, v4

    int-to-float v11, v6

    div-float v2, v10, v11

    .line 189
    .local v2, "heightScale":F
    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-eq p2, v10, :cond_4

    :cond_0
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-eq p2, v9, :cond_6

    .line 193
    :cond_1
    int-to-float v9, v5

    div-float/2addr v9, v2

    float-to-int v1, v9

    .line 194
    .local v1, "destWidth":I
    move v0, v6

    .local v0, "destHeight":I
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 198
    .local v3, "scale":F
    if-eqz p3, :cond_7

    :cond_2
    if-nez p3, :cond_9

    .line 202
    :cond_3
    :goto_1
    return v3

    .line 189
    .end local v0    # "destHeight":I
    .end local v1    # "destWidth":I
    .end local v3    # "scale":F
    :cond_4
    cmpl-float v10, v8, v2

    if-ltz v10, :cond_5

    const/4 v9, 0x1

    :cond_5
    if-eqz v9, :cond_0

    .line 190
    :goto_2
    move v1, v7

    .line 191
    .restart local v1    # "destWidth":I
    int-to-float v9, v4

    div-float/2addr v9, v8

    float-to-int v0, v9

    .restart local v0    # "destHeight":I
    goto :goto_0

    .line 189
    .end local v0    # "destHeight":I
    .end local v1    # "destWidth":I
    :cond_6
    cmpg-float v9, v8, v2

    if-gez v9, :cond_1

    goto :goto_2

    .line 198
    .restart local v0    # "destHeight":I
    .restart local v1    # "destWidth":I
    .restart local v3    # "scale":F
    :cond_7
    if-ge v1, v5, :cond_2

    if-ge v0, v4, :cond_2

    .line 199
    :cond_8
    int-to-float v9, v1

    int-to-float v10, v5

    div-float v3, v9, v10

    goto :goto_1

    .line 198
    :cond_9
    if-eq v1, v5, :cond_3

    if-ne v0, v4, :cond_8

    goto :goto_1
.end method

.method public static computeMinImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)I
    .locals 8
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    .line 145
    .local v2, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 146
    .local v1, "srcHeight":I
    sget-object v6, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v4

    .line 147
    .local v4, "targetWidth":I
    sget-object v6, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 149
    .local v3, "targetHeight":I
    int-to-float v6, v2

    int-to-float v7, v4

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 150
    .local v5, "widthScale":I
    int-to-float v6, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 152
    .local v0, "heightScale":I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    return v6
.end method

.method public static defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 3
    .param p0, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p1, "maxImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 54
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v1

    .line 55
    .local v1, "width":I
    if-lez v1, :cond_0

    .line 57
    :goto_0
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getHeight()I

    move-result v0

    .line 58
    .local v0, "height":I
    if-lez v0, :cond_1

    .line 60
    :goto_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v2

    .line 55
    .end local v0    # "height":I
    :cond_0
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    goto :goto_0

    .line 58
    .restart local v0    # "height":I
    :cond_1
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    goto :goto_1
.end method
