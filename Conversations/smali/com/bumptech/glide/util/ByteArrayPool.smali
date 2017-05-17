.class public final Lcom/bumptech/glide/util/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field private static final BYTE_ARRAY_POOL:Lcom/bumptech/glide/util/ByteArrayPool;


# instance fields
.field private final tempQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/util/ByteArrayPool;

    invoke-direct {v0}, Lcom/bumptech/glide/util/ByteArrayPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/ByteArrayPool;->BYTE_ARRAY_POOL:Lcom/bumptech/glide/util/ByteArrayPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    .line 28
    return-void
.end method

.method public static get()Lcom/bumptech/glide/util/ByteArrayPool;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/bumptech/glide/util/ByteArrayPool;->BYTE_ARRAY_POOL:Lcom/bumptech/glide/util/ByteArrayPool;

    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 3

    .prologue
    .line 45
    iget-object v2, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 47
    .local v0, "result":[B
    monitor-exit v2

    .line 48
    if-eqz v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 47
    .end local v0    # "result":[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "result":[B
    :cond_1
    const/high16 v1, 0x10000

    .line 49
    new-array v0, v1, [B

    const-string/jumbo v1, "ByteArrayPool"

    const/4 v2, 0x3

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ByteArrayPool"

    const-string/jumbo v2, "Created temp bytes"

    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseBytes([B)Z
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 64
    array-length v1, p1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "accepted":Z
    iget-object v2, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v3, 0x20

    if-lt v1, v3, :cond_1

    .line 74
    :goto_0
    monitor-exit v2

    .line 75
    return v0

    .line 65
    .end local v0    # "accepted":Z
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 71
    .restart local v0    # "accepted":Z
    :cond_1
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteArrayPool;->tempQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
