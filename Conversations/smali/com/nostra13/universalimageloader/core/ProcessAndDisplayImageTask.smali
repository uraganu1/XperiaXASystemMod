.class Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
.super Ljava/lang/Object;
.source "ProcessAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final handler:Landroid/os/Handler;

.field private final imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .locals 0
    .param p1, "engine"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageLoadingInfo"    # Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 44
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->bitmap:Landroid/graphics/Bitmap;

    .line 45
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 46
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 51
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->writeLogs:Z

    if-nez v3, :cond_0

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v2

    .line 53
    .local v2, "processor":Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 54
    .local v1, "processedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 55
    .local v0, "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->writeLogs:Z

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->setLoggingEnabled(Z)V

    .line 56
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :goto_1
    return-void

    .end local v0    # "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    .end local v1    # "processedBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "processor":Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    :cond_0
    const-string/jumbo v3, "PostProcess image before displaying [%s]"

    const/4 v4, 0x1

    .line 51
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v5, v5, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    .restart local v0    # "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    .restart local v1    # "processedBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "processor":Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    :cond_1
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->run()V

    goto :goto_1
.end method
