.class Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;
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
    .line 72
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "NONE.com.bumptech.glide.load.data.bitmap"

    .line 80
    return-object v0
.end method

.method protected getSampleSize(IIII)I
    .locals 1
    .param p1, "inWidth"    # I
    .param p2, "inHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 75
    return v0
.end method
