.class Lcom/google/common/util/concurrent/AbstractIdleService$2;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "AbstractIdleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractIdleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractIdleService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/util/concurrent/AbstractIdleService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doStart()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractIdleService;->-get0(Lcom/google/common/util/concurrent/AbstractIdleService;)Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/google/common/util/concurrent/AbstractIdleService$2$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$2$1;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService$2;)V

    .line 50
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method protected final doStop()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractIdleService;->-get0(Lcom/google/common/util/concurrent/AbstractIdleService;)Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/google/common/util/concurrent/AbstractIdleService$2$2;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$2$2;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService$2;)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
