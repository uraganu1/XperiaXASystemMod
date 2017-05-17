.class Lcom/google/common/cache/LocalCache$Segment$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/cache/LocalCache$Segment;

.field final synthetic val$hash:I

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$loadingFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic val$loadingValueReference:Lcom/google/common/cache/LocalCache$LoadingValueReference;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p3, "val$hash"    # I

    .prologue
    .line 2325
    .local p1, "this$1":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache<TK;TV;>.Segment<TK;TV;>;"
    .local p2, "val$key":Ljava/lang/Object;, "TK;"
    .local p4, "val$loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p5, "val$loadingFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment$1;->this$1:Lcom/google/common/cache/LocalCache$Segment;

    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$key:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$hash:I

    iput-object p4, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingValueReference:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    iput-object p5, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2329
    :try_start_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment$1;->this$1:Lcom/google/common/cache/LocalCache$Segment;

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$key:Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$hash:I

    iget-object v5, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingValueReference:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    iget-object v6, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2327
    :goto_0
    return-void

    .line 2330
    :catch_0
    move-exception v1

    .line 2331
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "Exception thrown during refresh"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2332
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingValueReference:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
