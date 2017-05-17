.class Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;
.super Ljava/lang/Object;
.source "ImageHandler.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ImageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoAwareImageDecoder"
.end annotation


# instance fields
.field private final mImageDecoder:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;->mImageDecoder:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    .line 638
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;-><init>()V

    return-void
.end method

.method private decodeVideoThumbnail(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "videoThumbnailOptions"    # Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;->-get0(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/MediaUtil;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 657
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    return-object v0
.end method


# virtual methods
.method protected considerExactScale(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "subsampledBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    .prologue
    .line 661
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    .line 662
    .local v0, "scaleType":Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v2

    .line 663
    .local v2, "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    .line 665
    .local v1, "targetSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-static {p1, v0, v2, v1}, Lcom/sonyericsson/conversations/util/ImageHandler;->-wrap0(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "info"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v1

    .line 645
    .local v1, "extra":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;

    if-eqz v2, :cond_0

    .line 646
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;->decodeVideoThumbnail(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    .local v0, "decoded":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;->considerExactScale(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 648
    return-object v0

    .line 650
    .end local v0    # "decoded":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;->mImageDecoder:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
