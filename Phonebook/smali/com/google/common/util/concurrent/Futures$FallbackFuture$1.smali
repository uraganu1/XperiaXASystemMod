.class Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$FallbackFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

.field final synthetic val$fallback:Lcom/google/common/util/concurrent/FutureFallback;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/FutureFallback;)V
    .locals 0

    .prologue
    .line 457
    .local p1, "this$1":Lcom/google/common/util/concurrent/Futures$FallbackFuture;, "Lcom/google/common/util/concurrent/Futures$FallbackFuture<TV;>;"
    .local p2, "val$fallback":Lcom/google/common/util/concurrent/FutureFallback;, "Lcom/google/common/util/concurrent/FutureFallback<+TV;>;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->val$fallback:Lcom/google/common/util/concurrent/FutureFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    return-void

    .line 469
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->val$fallback:Lcom/google/common/util/concurrent/FutureFallback;

    invoke-interface {v2, p1}, Lcom/google/common/util/concurrent/FutureFallback;->create(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->-set0(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 470
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->-get0(Lcom/google/common/util/concurrent/Futures$FallbackFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->wasInterrupted()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 472
    return-void

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->-get0(Lcom/google/common/util/concurrent/Futures$FallbackFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;

    invoke-direct {v2, p0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;-><init>(Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;)V

    .line 488
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v3

    .line 474
    invoke-static {v1, v2, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->set(Ljava/lang/Object;)Z

    .line 459
    return-void
.end method
