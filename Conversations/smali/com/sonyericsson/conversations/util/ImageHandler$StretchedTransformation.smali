.class Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;
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
    name = "StretchedTransformation"
.end annotation


# instance fields
.field private final mTargetHeight:I

.field private final mTargetWidth:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput p1, p0, Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;->mTargetWidth:I

    .line 699
    iput p2, p0, Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;->mTargetHeight:I

    .line 697
    return-void
.end method

.method synthetic constructor <init>(IILcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;)V
    .locals 0
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;-><init>(II)V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 704
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget v1, p0, Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;->mTargetWidth:I

    iget v2, p0, Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;->mTargetHeight:I

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    .line 705
    .local v0, "targetSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-static {p1, v1, v2, v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->-wrap0(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
