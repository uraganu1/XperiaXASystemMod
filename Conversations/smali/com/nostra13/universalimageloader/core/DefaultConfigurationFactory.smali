.class public Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public static createBitmapDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;-><init>()V

    return-object v0
.end method

.method public static createDiscCache(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;II)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "discCacheFileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .param p2, "discCacheSize"    # I
    .param p3, "discCacheFileCount"    # I

    .prologue
    .line 69
    if-gtz p2, :cond_0

    .line 72
    if-gtz p3, :cond_1

    .line 76
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;

    invoke-direct {v2, v0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    return-object v2

    .line 70
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 71
    .local v1, "individualCacheDir":Ljava/io/File;
    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;

    invoke-direct {v2, v1, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-object v2

    .line 73
    .end local v1    # "individualCacheDir":Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 74
    .restart local v1    # "individualCacheDir":Ljava/io/File;
    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache;

    invoke-direct {v2, v1, p1, p3}, Lcom/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-object v2
.end method

.method public static createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
    .locals 9
    .param p0, "threadPoolSize"    # I
    .param p1, "threadPriority"    # I
    .param p2, "tasksProcessingType"    # Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .prologue
    const/4 v0, 0x0

    .line 57
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-eq p2, v1, :cond_0

    .line 58
    .local v0, "lifo":Z
    :goto_0
    if-nez v0, :cond_1

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_1
    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    .line 59
    .local v7, "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createThreadFactory(I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    .end local v0    # "lifo":Z
    .end local v7    # "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :cond_0
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    .restart local v0    # "lifo":Z
    :cond_1
    new-instance v7, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    invoke-direct {v7}, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V

    goto :goto_1
.end method

.method public static createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V

    return-object v0
.end method

.method public static createImageDecoder(Z)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
    .locals 1
    .param p0, "loggingEnabled"    # Z

    .prologue
    .line 108
    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;-><init>(Z)V

    return-object v0
.end method

.method public static createImageDownloader(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    new-instance v0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createMemoryCache(I)Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .locals 4
    .param p0, "memoryCacheSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    if-eqz p0, :cond_0

    .line 98
    :goto_0
    new-instance v0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    return-object v0

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p0, v0

    goto :goto_0
.end method

.method public static createReserveDiscCache(Ljava/io/File;)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "uil-images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .local v0, "individualDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    move-object p0, v0

    .line 87
    :goto_0
    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;

    const/high16 v2, 0x200000

    invoke-direct {v1, p0, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;I)V

    return-object v1

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private static createThreadFactory(I)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "threadPriority"    # I

    .prologue
    .line 118
    new-instance v0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;-><init>(I)V

    return-object v0
.end method
