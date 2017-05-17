.class public Lcom/bumptech/glide/DrawableRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "DrawableRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;",
        "Lcom/bumptech/glide/BitmapOptions;",
        "Lcom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "glide"    # Lcom/bumptech/glide/Glide;
    .param p5, "requestTracker"    # Lcom/bumptech/glide/manager/RequestTracker;
    .param p6, "lifecycle"    # Lcom/bumptech/glide/manager/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p3, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TModelType;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    const-class v4, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 48
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 50
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 51
    return-void
.end method


# virtual methods
.method applyCenterCrop()V
    .locals 0

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 459
    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 454
    return-void
.end method

.method public centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 179
    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getDrawableCenterCrop()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

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
    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 247
    return-object p0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 116
    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/ResourceDecoder;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "strategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 378
    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    .line 282
    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 341
    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 194
    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getDrawableFitCenter()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

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
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 426
    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 396
    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 320
    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "signature"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 420
    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 387
    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 405
    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/Encoder;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "transformation":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 229
    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .param p1, "x0"    # [Lcom/bumptech/glide/load/Transformation;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method
