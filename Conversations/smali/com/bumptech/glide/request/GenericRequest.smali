.class public final Lcom/bumptech/glide/request/GenericRequest;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;
.implements Lcom/bumptech/glide/request/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/GenericRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lcom/bumptech/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field private static final REQUEST_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<****>;>;"
        }
    .end annotation
.end field


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResourceId:I

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResourceId:I

.field private isMemoryCacheable:Z

.field private loadProvider:Lcom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private loadedFromMemoryCache:Z

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResourceId:I

.field private priority:Lcom/bumptech/glide/Priority;

.field private requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;

.field private sizeMultiplier:F

.field private startTime:J

.field private status:Lcom/bumptech/glide/request/GenericRequest$Status;

.field private final tag:Ljava/lang/String;

.field private target:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private canNotifyStatusChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 462
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private canSetResource()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 458
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private static check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 255
    return-void

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "message":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " must not be null"

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    if-nez p2, :cond_1

    .line 253
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v1, ", "

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 408
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    if-lez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 386
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 415
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    if-lez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
    .locals 4
    .param p3, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "priority"    # Lcom/bumptech/glide/Priority;
    .param p7, "sizeMultiplier"    # F
    .param p8, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p9, "placeholderResourceId"    # I
    .param p10, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p11, "errorResourceId"    # I
    .param p12, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p13, "fallbackResourceId"    # I
    .param p15, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p16, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .param p19, "isMemoryCacheable"    # Z
    .param p21, "overrideWidth"    # I
    .param p22, "overrideHeight"    # I
    .param p23, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    .local p2, "model":Ljava/lang/Object;, "TA;"
    .local p6, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .local p14, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    .local p17, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    .local p18, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p20, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 194
    iput-object p2, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 195
    iput-object p3, p0, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    .line 196
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    move/from16 v0, p13

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackResourceId:I

    .line 198
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 199
    iput-object p5, p0, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 200
    iput-object p6, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 201
    iput p7, p0, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    .line 202
    iput-object p8, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    iput p9, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    .line 204
    iput-object p10, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    iput p11, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    .line 206
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 207
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 208
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 209
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 210
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    .line 211
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    .line 212
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 213
    move/from16 v0, p21

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    .line 214
    move/from16 v0, p22

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    .line 215
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 216
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 220
    if-nez p2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ModelLoader"

    .line 221
    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    const-string/jumbo v3, "try .using(ModelLoader)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "Transcoder"

    .line 222
    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v2

    const-string/jumbo v3, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "Transformation"

    const-string/jumbo v2, "try .transform(UnitTransformation.get())"

    .line 223
    move-object/from16 v0, p17

    invoke-static {v1, v0, v2}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SourceDecoder"

    .line 228
    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    const-string/jumbo v3, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :goto_1
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const-string/jumbo v1, "CacheDecoder"

    .line 235
    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    const-string/jumbo v3, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :goto_2
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Encoder"

    .line 239
    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v2

    const-string/jumbo v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "SourceEncoder"

    .line 225
    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v2

    const-string/jumbo v3, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2
.end method

.method private isFirstReadyResource()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 466
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v1}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private logV(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "GenericRequest"

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method private notifyLoadSuccess()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    goto :goto_0
.end method

.method public static obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;
    .locals 24
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "priority"    # Lcom/bumptech/glide/Priority;
    .param p6, "sizeMultiplier"    # F
    .param p7, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p8, "placeholderResourceId"    # I
    .param p9, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p10, "errorResourceId"    # I
    .param p11, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p12, "fallbackResourceId"    # I
    .param p14, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p15, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .param p18, "isMemoryCacheable"    # Z
    .param p20, "overrideWidth"    # I
    .param p21, "overrideHeight"    # I
    .param p22, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    .local p5, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .local p13, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    .local p16, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    .local p17, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p19, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/GenericRequest;

    .line 118
    .local v0, "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    if-eqz v0, :cond_0

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    .line 121
    invoke-direct/range {v0 .. v23}, Lcom/bumptech/glide/request/GenericRequest;->init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    .line 144
    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest;

    .end local v0    # "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {v0}, Lcom/bumptech/glide/request/GenericRequest;-><init>()V

    .restart local v0    # "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    goto :goto_0
.end method

.method private onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;TR;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v5

    .line 519
    .local v5, "isFirstResource":Z
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 520
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 522
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-nez v0, :cond_1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-interface {v0, v1, v5}, Lcom/bumptech/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v6

    .line 525
    .local v6, "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p2, v6}, Lcom/bumptech/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 528
    .end local v6    # "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    :goto_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->notifyLoadSuccess()V

    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    .line 530
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    :goto_1
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    iget-boolean v4, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 531
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Resource ready in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v8, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fromCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .param p1, "resource"    # Lcom/bumptech/glide/load/engine/Resource;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/Engine;->release(Lcom/bumptech/glide/load/engine/Resource;)V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 343
    return-void
.end method

.method private setErrorPlaceholder(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 398
    .local v0, "error":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_2

    .line 401
    :goto_1
    if-eqz v0, :cond_3

    .line 404
    :goto_2
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p1, v0}, Lcom/bumptech/glide/request/target/Target;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 405
    return-void

    .line 394
    .end local v0    # "error":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 397
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 399
    .restart local v0    # "error":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 402
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public begin()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 268
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 269
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/Target;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_1
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 281
    :goto_2
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 265
    return-void

    .line 270
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/GenericRequest;->onSizeReady(II)V

    goto :goto_0

    .line 275
    :cond_3
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFailed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 279
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto :goto_2
.end method

.method cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 295
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cancel()V

    .line 297
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 314
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->cancel()V

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-nez v0, :cond_1

    .line 322
    :goto_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    :goto_1
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 327
    return-void

    .line 315
    :cond_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isResourceSet()Z
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x3

    .line 541
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    :goto_0
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 547
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-nez v0, :cond_2

    .line 548
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->setErrorPlaceholder(Ljava/lang/Exception;)V

    .line 550
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "GenericRequest"

    const-string/jumbo v1, "load failed"

    .line 542
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/request/RequestListener;->onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    if-eqz p1, :cond_1

    .line 487
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, "received":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 489
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 490
    new-instance v2, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected to receive an object of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but instead got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_3

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " inside Resource{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_4

    const-string/jumbo v1, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 497
    return-void

    .line 482
    .end local v0    # "received":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " inside, but instead got null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 484
    return-void

    .line 488
    .restart local v0    # "received":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canSetResource()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 507
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/GenericRequest;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V

    .line 508
    return-void

    .line 490
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string/jumbo v1, ""

    goto :goto_1

    .line 501
    :cond_5
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 503
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 504
    return-void
.end method

.method public onSizeReady(II)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    .line 426
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_1

    .line 432
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 434
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 435
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 437
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v12

    .line 438
    .local v12, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    invoke-interface {v12, v0, p1, p2}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    .line 440
    .local v4, "dataFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
    if-eqz v4, :cond_2

    .line 444
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v7

    .local v7, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 448
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 449
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v5, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    iget-object v6, p0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    iget-object v8, p0, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    iget-boolean v9, p0, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    iget-object v10, p0, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move v2, p1

    move v3, p2

    move-object v11, p0

    invoke-virtual/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/Engine;->load(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 451
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    .line 452
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 455
    :goto_3
    return-void

    .line 427
    .end local v4    # "dataFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
    .end local v7    # "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    .end local v12    # "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    :cond_1
    return-void

    .line 441
    .restart local v4    # "dataFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
    .restart local v12    # "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to load model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 442
    return-void

    .line 446
    .restart local v7    # "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 451
    goto :goto_2

    .line 453
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->clear()V

    .line 337
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 338
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 154
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 155
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 156
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 157
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 161
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 162
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 163
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 165
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 166
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
