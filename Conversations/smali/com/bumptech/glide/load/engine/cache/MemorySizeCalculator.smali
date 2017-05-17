.class public Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;,
        Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    }
.end annotation


# instance fields
.field private final bitmapPoolSize:I

.field private final context:Landroid/content/Context;

.field private final memoryCacheSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v0, "activity"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/ActivityManager;
    .param p3, "screenDimensions"    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    .line 43
    invoke-static {p2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMaxSize(Landroid/app/ActivityManager;)I

    move-result v0

    .line 45
    .local v0, "maxSize":I
    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v6

    invoke-interface {p3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v2, v6, 0x4

    .line 48
    .local v2, "screenSize":I
    mul-int/lit8 v4, v2, 0x4

    .line 49
    .local v4, "targetPoolSize":I
    mul-int/lit8 v3, v2, 0x2

    .line 51
    .local v3, "targetMemoryCacheSize":I
    add-int v6, v3, v4

    if-le v6, v0, :cond_0

    .line 55
    int-to-float v6, v0

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 56
    .local v1, "part":I
    mul-int/lit8 v6, v1, 0x2

    iput v6, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 57
    mul-int/lit8 v6, v1, 0x4

    iput v6, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .end local v1    # "part":I
    :goto_0
    const-string/jumbo v6, "MemorySizeCalculator"

    const/4 v7, 0x3

    .line 60
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 66
    :goto_1
    return-void

    .line 52
    :cond_0
    iput v3, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 53
    iput v4, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "MemorySizeCalculator"

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calculated memory cache size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    invoke-direct {p0, v8}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " pool size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    invoke-direct {p0, v8}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " memory class limited? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v3, v4

    if-gt v8, v0, :cond_2

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " max size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " memoryClass: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " isLowMemoryDevice: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;)I
    .locals 4
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v1, v2, 0x400

    .line 84
    .local v1, "memoryClassBytes":I
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    .line 85
    .local v0, "isLowMemoryDevice":Z
    int-to-float v3, v1

    if-nez v0, :cond_0

    const v2, 0x3ecccccd    # 0.4f

    :goto_0
    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    :cond_0
    const v2, 0x3ea8f5c3    # 0.33f

    goto :goto_0
.end method

.method private static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
    .locals 2
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 98
    goto :goto_0
.end method

.method private toMb(I)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Landroid/content/Context;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBitmapPoolSize()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    return v0
.end method
