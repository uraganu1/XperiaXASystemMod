.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

.field final synthetic val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 871
    .local p1, "this$1":Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;, "Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    .local p2, "val$outputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 875
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v2, v4}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->-set0(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 873
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v1

    .line 884
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v2, v4}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->-set0(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 876
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 880
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    :try_start_2
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 887
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v2, v4}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->-set0(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 881
    return-void

    .line 885
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v2

    .line 887
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$1:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->-set0(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 885
    throw v2
.end method
