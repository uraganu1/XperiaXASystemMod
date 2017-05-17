.class Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;
.super Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "AT_MOST.com.bumptech.glide.load.data.bitmap"

    .line 65
    return-object v0
.end method

.method protected getSampleSize(IIII)I
    .locals 6
    .param p1, "inWidth"    # I
    .param p2, "inHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    const/4 v2, 0x1

    .line 57
    int-to-float v3, p2

    int-to-float v4, p4

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 59
    .local v1, "maxIntegerFactor":I
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 60
    .local v0, "lesserOrEqualSampleSize":I
    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    shl-int v2, v0, v2

    return v2
.end method
