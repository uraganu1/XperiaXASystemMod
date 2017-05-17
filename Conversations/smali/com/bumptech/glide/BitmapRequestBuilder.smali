.class public Lcom/bumptech/glide/BitmapRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "BitmapRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;",
        "Lcom/bumptech/glide/BitmapOptions;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TModelType;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;TTranscodeType;>;"
    .local p2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    .local p3, "other":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 50
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 58
    iget-object v0, p3, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 59
    iget-object v0, p3, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getDecodeFormat()Lcom/bumptech/glide/load/DecodeFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 61
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 62
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 63
    return-void
.end method


# virtual methods
.method applyCenterCrop()V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    .line 509
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    .line 504
    return-void
.end method

.method public centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 278
    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 481
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/BitmapRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->clone()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->clone()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 170
    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/ResourceDecoder;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "strategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 427
    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 322
    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fallback(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 381
    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->fallback(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 291
    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 476
    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 435
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 436
    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 360
    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "signature"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 470
    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 417
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 418
    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 455
    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/Encoder;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "transformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 303
    return-object p0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 0
    .param p1, "transformations"    # [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 265
    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # [Lcom/bumptech/glide/load/Transformation;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method
