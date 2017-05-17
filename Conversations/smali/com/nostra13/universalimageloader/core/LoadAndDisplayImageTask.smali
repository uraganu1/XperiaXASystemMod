.class final Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    }
.end annotation


# instance fields
.field private final configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field private final downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final handler:Landroid/os/Handler;

.field final imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private final imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

.field final listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field private final memoryCacheKey:Ljava/lang/String;

.field private final networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final progressListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;

.field private final slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field final uri:Ljava/lang/String;

.field private final writeLogs:Z


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .locals 1
    .param p1, "engine"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
    .param p2, "imageLoadingInfo"    # Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 104
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 105
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 106
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 108
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 109
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 110
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 111
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 112
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 113
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->writeLogs:Z

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z

    .line 114
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 115
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 116
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 117
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 118
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 119
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 120
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->progressListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->progressListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    return-object v0
.end method

.method private checkTaskInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    return-void

    .line 473
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    throw v0
.end method

.method private checkTaskNotActual()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkViewCollected()V

    .line 423
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkViewReused()V

    .line 424
    return-void
.end method

.method private checkViewCollected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isViewCollected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    return-void

    .line 437
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    throw v0
.end method

.method private checkViewReused()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isViewReused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    return-void

    .line 453
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    throw v0
.end method

.method private decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "imageUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v4

    .line 287
    .local v4, "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v5

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 289
    .local v0, "decodingInfo":Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private delayIfNeed()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldDelayBeforeLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    return v4

    :cond_0
    const-string/jumbo v1, "Delay %d ms before loading...  [%s]"

    const/4 v2, 0x2

    .line 212
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v1

    return v1

    .line 218
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "Task was interrupted [%s]"

    .line 216
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    return v5
.end method

.method private downloadImage(Ljava/io/File;)Z
    .locals 6
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v3

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 322
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v0, v2, p0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 326
    .local v1, "loaded":Z
    :try_start_2
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 329
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 331
    return v1

    .line 327
    .end local v1    # "loaded":Z
    :catchall_0
    move-exception v3

    .line 326
    :try_start_3
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 330
    .end local v2    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    .line 329
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method private fireCancelEvent()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3;

    invoke-direct {v1, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    return-void
.end method

.method private fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "failType"    # Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .param p2, "failCause"    # Ljava/lang/Throwable;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method

.method private fireProgressEvent(II)Z
    .locals 2
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method private getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 2

    .prologue
    .line 406
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->isNetworkDenied()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->isSlowNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 413
    .local v0, "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    :goto_0
    return-object v0

    .line 407
    .end local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .restart local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    goto :goto_0

    .line 409
    .end local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .restart local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    goto :goto_0
.end method

.method private getImageFileInDiscCache()Ljava/io/File;
    .locals 5

    .prologue
    .line 272
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    .line 273
    .local v1, "discCache":Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 274
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 275
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_2

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->reserveDiscCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 278
    if-nez v0, :cond_3

    .line 282
    :cond_1
    :goto_0
    return-object v2

    .line 275
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private isTaskInterrupted()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 479
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    return v1

    :cond_0
    const-string/jumbo v0, "Task was interrupted [%s]"

    .line 480
    invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method private isTaskNotActual()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 431
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isViewCollected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isViewReused()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private isViewCollected()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    return v1

    :cond_0
    const-string/jumbo v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    .line 444
    invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method private isViewReused()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "currentCacheKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 463
    .local v1, "imageAwareWasReused":Z
    :goto_0
    if-nez v1, :cond_1

    .line 467
    return v2

    .end local v1    # "imageAwareWasReused":Z
    :cond_0
    move v1, v3

    .line 462
    goto :goto_0

    .restart local v1    # "imageAwareWasReused":Z
    :cond_1
    const-string/jumbo v2, "ImageAware is reused for another image. Task is cancelled. [%s]"

    .line 464
    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 465
    return v3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 491
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 491
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-static {p1, p2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private resizeAndSaveImage(Ljava/io/File;II)Z
    .locals 11
    .param p1, "targetFile"    # Ljava/io/File;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 336
    const/4 v9, 0x0

    .line 338
    .local v9, "saved":Z
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v3, p2, p3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    .line 339
    .local v3, "targetImageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    .line 341
    .local v6, "specialOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 344
    .local v0, "decodingInfo":Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 345
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 352
    :cond_0
    :goto_0
    if-nez v7, :cond_2

    .line 361
    :goto_1
    return v10

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Process image before cache on disc [%s]"

    .line 346
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    invoke-interface {v1, v7}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 348
    if-nez v7, :cond_0

    const-string/jumbo v1, "Bitmap processor for disc cache returned null [%s]"

    .line 349
    new-array v2, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 353
    :cond_2
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v2, 0x8000

    invoke-direct {v8, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 355
    .local v8, "os":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageQualityForDiscCache:I

    invoke-virtual {v7, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-static {v8}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 359
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 358
    :catchall_0
    move-exception v1

    .line 357
    invoke-static {v8}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private tryCacheImageOnDisc(Ljava/io/File;)Z
    .locals 6
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    const-string/jumbo v4, "Cache image on disc [%s]"

    .line 294
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 296
    const/4 v2, 0x0

    .line 298
    .local v2, "loaded":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloadImage(Ljava/io/File;)Z

    move-result v2

    .line 299
    .local v2, "loaded":Z
    if-nez v2, :cond_1

    .line 315
    .end local v2    # "loaded":Z
    :cond_0
    :goto_0
    return v2

    .line 300
    .restart local v2    # "loaded":Z
    :cond_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v3, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiscCache:I

    .line 301
    .local v3, "width":I
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v1, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiscCache:I

    .line 302
    .local v1, "height":I
    if-lez v3, :cond_3

    :cond_2
    const-string/jumbo v4, "Resize image in disc cache [%s]"

    .line 303
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1, v3, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->resizeAndSaveImage(Ljava/io/File;II)Z

    move-result v2

    .line 307
    :goto_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v4, v5, p1}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v1    # "height":I
    .end local v2    # "loaded":Z
    .end local v3    # "width":I
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 311
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "height":I
    .restart local v2    # "loaded":Z
    .restart local v3    # "width":I
    :cond_3
    if-gtz v1, :cond_2

    goto :goto_1
.end method

.method private tryLoadBitmap()Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 225
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getImageFileInDiscCache()Ljava/io/File;

    move-result-object v7

    .local v7, "imageFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 229
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v9, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "cacheFileUri":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 237
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_5

    :cond_0
    const-string/jumbo v9, "Load image from network [%s]"

    .line 238
    invoke-direct {p0, v9}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 239
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 241
    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v9}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheOnDisc()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_1
    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 244
    .local v8, "imageUriForDecoding":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 245
    invoke-direct {p0, v8}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_7

    .line 248
    :cond_2
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 268
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cacheFileUri":Ljava/lang/String;
    .end local v8    # "imageUriForDecoding":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "cacheFileUri":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "Load image from disc cache [%s]"

    .line 231
    invoke-direct {p0, v9}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 232
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 234
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 235
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 237
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-lez v9, :cond_0

    goto :goto_2

    .line 241
    :cond_6
    invoke-direct {p0, v7}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->tryCacheImageOnDisc(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v8, v1

    goto :goto_1

    .line 247
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "imageUriForDecoding":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result v9

    if-lez v9, :cond_2

    goto :goto_2

    .line 267
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cacheFileUri":Ljava/lang/String;
    .end local v8    # "imageUriForDecoding":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 252
    .local v4, "e":Ljava/lang/IllegalStateException;
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v9, v11}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 267
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 254
    .local v2, "e":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    throw v2

    .end local v2    # "e":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    :catch_2
    move-exception v3

    .line 256
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 257
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v9, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 258
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 259
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 267
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 262
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 263
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v9, v5}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 267
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v6

    .line 265
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 266
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v9, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private waitIfPaused()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 191
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getPause()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    .line 192
    .local v1, "pause":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    :goto_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v2

    return v2

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getPauseLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 194
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string/jumbo v2, "ImageLoader is paused. Waiting...  [%s]"

    .line 195
    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getPauseLock()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string/jumbo v2, ".. Resume loading [%s]"

    .line 202
    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "Task was interrupted [%s]"

    const/4 v4, 0x1

    .line 199
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v7
.end method


# virtual methods
.method getLoadingUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public onBytesCopied(II)Z
    .locals 2
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    const/4 v0, 0x0

    .line 366
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->progressListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingProgressListener;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireProgressEvent(II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->waitIfPaused()Z

    move-result v4

    if-nez v4, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->delayIfNeed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 128
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v3, v4, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v3, "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    const-string/jumbo v4, "Start display image task [%s]"

    .line 129
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v4

    if-nez v4, :cond_4

    .line 134
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 139
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 140
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 160
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string/jumbo v4, "...Get cached bitmap from memory after waiting. [%s]"

    .line 161
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 164
    :cond_0
    :goto_1
    if-nez v0, :cond_9

    .line 171
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 172
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskInterrupted()V
    :try_end_0
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v1, v0, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 181
    .local v1, "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    iget-boolean v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->setLoggingEnabled(Z)V

    .line 182
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v4

    if-nez v4, :cond_a

    .line 185
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    :goto_3
    return-void

    .line 125
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    .end local v3    # "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_2
    return-void

    .line 126
    :cond_3
    return-void

    .restart local v3    # "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_4
    const-string/jumbo v4, "Image already is loading. Waiting... [%s]"

    .line 131
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->tryLoadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_7

    .line 144
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 145
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskInterrupted()V

    .line 147
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPreProcess()Z

    move-result v4

    if-nez v4, :cond_8

    .line 155
    :cond_6
    :goto_4
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Cache image in memory [%s]"

    .line 156
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 178
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    :try_start_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireCancelEvent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .end local v2    # "e":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_8
    :try_start_3
    const-string/jumbo v4, "PreProcess image before caching in memory [%s]"

    .line 148
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    if-nez v0, :cond_6

    const-string/jumbo v4, "Pre-processor returned null [%s]"

    const/4 v5, 0x1

    .line 151
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 177
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 164
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_9
    :try_start_4
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "PostProcess image before displaying [%s]"

    .line 165
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    if-nez v0, :cond_1

    const-string/jumbo v4, "Post-processor returned null [%s]"

    const/4 v5, 0x1

    .line 168
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 183
    .restart local v1    # "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    :cond_a
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->run()V

    goto/16 :goto_3
.end method
