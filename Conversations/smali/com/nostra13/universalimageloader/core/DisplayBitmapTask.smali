.class final Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
.super Ljava/lang/Object;
.source "DisplayBitmapTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private final imageUri:Ljava/lang/String;

.field private final listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private final loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field private loggingEnabled:Z

.field private final memoryCacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageLoadingInfo"    # Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .param p3, "engine"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
    .param p4, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    .line 54
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 55
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    .line 56
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 57
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 58
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 59
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 60
    return-void
.end method

.method private isViewWasReused()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "currentCacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->isViewWasReused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    if-nez v0, :cond_4

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 72
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 73
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 75
    :goto_1
    return-void

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    if-nez v0, :cond_1

    .line 65
    :goto_2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    .line 64
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 67
    :cond_2
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    if-nez v0, :cond_3

    .line 68
    :goto_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    .line 67
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    const/4 v1, 0x2

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setLoggingEnabled(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    .line 85
    return-void
.end method
