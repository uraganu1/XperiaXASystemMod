.class public Lcom/nostra13/universalimageloader/core/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/nostra13/universalimageloader/core/ImageLoader;


# instance fields
.field private configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final emptyListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 80
    return-void
.end method

.method private checkConfiguration()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    .line 559
    return-void

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0

    :cond_0
    const-class v1, Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 70
    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-eqz v0, :cond_1

    .line 74
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :cond_1
    :try_start_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clearDiscCache()V
    .locals 1

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 598
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->clear()V

    .line 599
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 578
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->clear()V

    .line 579
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 281
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;)V

    .line 282
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v4, 0x0

    .line 298
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;)V

    .line 299
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;)V
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 205
    if-eqz p2, :cond_1

    .line 208
    if-eqz p4, :cond_2

    .line 211
    :goto_0
    if-eqz p3, :cond_3

    .line 215
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 227
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v4

    .line 228
    .local v4, "targetSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-static {p1, v4}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "memoryCacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2, p2, v5}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->prepareDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V

    .line 231
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 232
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v2, v5}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 233
    .local v10, "bmp":Landroid/graphics/Bitmap;
    if-nez v10, :cond_6

    .line 251
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnLoading()Z

    move-result v2

    if-nez v2, :cond_a

    .line 253
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isResetViewBeforeLoading()Z

    move-result v2

    if-nez v2, :cond_b

    .line 257
    :goto_2
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 259
    .local v1, "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    new-instance v11, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v11, v2, v1, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 261
    .local v11, "displayTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v2

    if-nez v2, :cond_c

    .line 264
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2, v11}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    .line 267
    .end local v1    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .end local v11    # "displayTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    :goto_3
    return-void

    .line 206
    .end local v4    # "targetSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .end local v5    # "memoryCacheKey":Ljava/lang/String;
    .end local v10    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    move-object/from16 p4, v0

    goto :goto_0

    .line 212
    :cond_3
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object/from16 p3, v0

    goto :goto_1

    .line 216
    :cond_4
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2, p2}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 217
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageForEmptyUri()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 221
    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 223
    :goto_4
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v2, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 224
    return-void

    .line 219
    :cond_5
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_4

    .line 233
    .restart local v4    # "targetSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .restart local v5    # "memoryCacheKey":Ljava/lang/String;
    .restart local v10    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->writeLogs:Z

    if-nez v2, :cond_7

    .line 236
    :goto_5
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v2

    if-nez v2, :cond_8

    .line 247
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v2, v10, p2, v3}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 248
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v2, v10}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_7
    const-string/jumbo v2, "Load image from memory cache [%s]"

    const/4 v3, 0x1

    .line 234
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 237
    :cond_8
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 239
    .restart local v1    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    new-instance v12, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v12, v2, v10, v1, v3}, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 241
    .local v12, "displayTask":Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v2

    if-nez v2, :cond_9

    .line 244
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2, v12}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V

    goto/16 :goto_3

    .line 242
    :cond_9
    invoke-virtual {v12}, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->run()V

    goto/16 :goto_3

    .line 252
    .end local v1    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .end local v12    # "displayTask":Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    :cond_a
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    .line 254
    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_2

    .line 262
    .restart local v1    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .restart local v11    # "displayTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    :cond_c
    invoke-virtual {v11}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->run()V

    goto/16 :goto_3
.end method

.method public getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 568
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    return-object v0
.end method

.method public declared-synchronized init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .prologue
    monitor-enter p0

    .line 91
    if-eqz p1, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    .line 99
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 101
    return-void

    .line 92
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_1
    :try_start_2
    iget-boolean v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->writeLogs:Z

    if-nez v0, :cond_2

    .line 96
    :goto_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 97
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 436
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;)V

    .line 437
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 464
    if-eqz p2, :cond_0

    .line 467
    :goto_0
    if-eqz p3, :cond_1

    .line 471
    :goto_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageNonViewAware;

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v2, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageNonViewAware;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    .local v2, "imageAware":Lcom/nostra13/universalimageloader/core/imageaware/ImageNonViewAware;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 472
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;)V

    .line 473
    return-void

    .line 465
    .end local v2    # "imageAware":Lcom/nostra13/universalimageloader/core/imageaware/ImageNonViewAware;
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p2

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_1
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 540
    if-eqz p3, :cond_0

    .line 543
    :goto_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p3

    .line 545
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/SyncImageLoadingListener;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/assist/SyncImageLoadingListener;-><init>()V

    .line 546
    .local v0, "listener":Lcom/nostra13/universalimageloader/core/assist/SyncImageLoadingListener;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 547
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/assist/SyncImageLoadingListener;->getLoadedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 541
    .end local v0    # "listener":Lcom/nostra13/universalimageloader/core/assist/SyncImageLoadingListener;
    :cond_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method
