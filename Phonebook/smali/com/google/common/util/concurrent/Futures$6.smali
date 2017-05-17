.class final Lcom/google/common/util/concurrent/Futures$6;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/common/util/concurrent/FutureCallback;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 0

    .prologue
    .line 1213
    .local p1, "val$future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p2, "val$callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<-TV;>;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$6;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1220
    :try_start_0
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$6;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1231
    .local v3, "value":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v4, v3}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1215
    return-void

    .line 1227
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/lang/Error;
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v4, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1229
    return-void

    .line 1224
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 1225
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v4, v1}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1226
    return-void

    .line 1221
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 1222
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1223
    return-void
.end method
