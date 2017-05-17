.class Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$1;->doStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->-get1(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v2, :cond_0

    .line 227
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->-get1(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    return-void

    .line 225
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :try_start_4
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->-get1(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 229
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyStopped()V

    .line 214
    return-void

    .line 226
    :catchall_0
    move-exception v1

    .line 227
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->-get1(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 226
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$4;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyFailed(Ljava/lang/Throwable;)V

    .line 232
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
