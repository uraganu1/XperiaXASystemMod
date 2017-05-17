.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final allowedConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private evictions:I

.field private hits:I

.field private final initialMaxSize:I

.field private maxSize:I

.field private misses:I

.field private puts:I

.field private final strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

.field private final tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 52
    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultAllowedConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    .line 53
    return-void
.end method

.method constructor <init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V
    .locals 2
    .param p1, "maxSize"    # I
    .param p2, "strategy"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "allowedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->initialMaxSize:I

    .line 40
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    .line 41
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    .line 42
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 43
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    .line 44
    return-void
.end method

.method private dump()V
    .locals 2

    .prologue
    const-string/jumbo v0, "LruBitmapPool"

    const/4 v1, 0x2

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    goto :goto_0
.end method

.method private dumpUnchecked()V
    .locals 3

    .prologue
    const-string/jumbo v0, "LruBitmapPool"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Hits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", misses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", puts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", evictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method private evict()V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    .line 110
    return-void
.end method

.method private static getDefaultAllowedConfigs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 225
    .local v0, "configs":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 229
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 227
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    .locals 3

    .prologue
    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 218
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;-><init>()V

    .line 220
    .local v0, "strategy":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    :goto_0
    return-object v0

    .line 216
    .end local v0    # "strategy":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;-><init>()V

    .restart local v0    # "strategy":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    goto :goto_0
.end method

.method private declared-synchronized trimToSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    monitor-enter p0

    .line 174
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v1, p1, :cond_0

    monitor-exit p0

    .line 195
    return-void

    .line 175
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "removed":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 186
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 187
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x3

    .line 190
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    :goto_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "removed":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "removed":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x5

    .line 178
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    const/4 v1, 0x0

    .line 182
    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 183
    return-void

    :cond_2
    :try_start_3
    const-string/jumbo v1, "LruBitmapPool"

    const-string/jumbo v2, "Size mismatch, resetting"

    .line 179
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "LruBitmapPool"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clearMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    .line 158
    return-void

    :cond_0
    const-string/jumbo v0, "LruBitmapPool"

    const-string/jumbo v1, "clearMemory"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 115
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 122
    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 119
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    if-nez p3, :cond_0

    sget-object v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {v2, p1, p2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 137
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    .line 138
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    .line 139
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_3

    :goto_1
    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 144
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 147
    :goto_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 149
    return-object v0

    .end local v0    # "result":Landroid/graphics/Bitmap;
    :cond_0
    move-object v1, p3

    .line 130
    goto :goto_0

    .restart local v0    # "result":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x3

    .line 132
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    :goto_3
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "result":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    const-string/jumbo v1, "LruBitmapPool"

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 141
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "LruBitmapPool"

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 79
    if-eqz p1, :cond_1

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 83
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    monitor-exit p0

    .line 89
    return v5

    .line 80
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 82
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 93
    .local v0, "size":I
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->put(Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->add(Landroid/graphics/Bitmap;)V

    .line 96
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    .line 97
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 102
    :goto_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V

    .line 104
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .end local v0    # "size":I
    :cond_3
    :try_start_3
    const-string/jumbo v1, "LruBitmapPool"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", is mutable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", is allowed config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v0    # "size":I
    :cond_4
    const-string/jumbo v1, "LruBitmapPool"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Put bitmap in pool="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public trimMemory(I)V
    .locals 3
    .param p1, "level"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/16 v0, 0x3c

    .line 166
    if-ge p1, v0, :cond_1

    const/16 v0, 0x28

    .line 168
    if-ge p1, v0, :cond_2

    .line 171
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "LruBitmapPool"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trimMemory, level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->clearMemory()V

    goto :goto_1

    .line 169
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    goto :goto_1
.end method
