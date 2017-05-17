.class Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/SerializingExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/util/concurrent/SerializingExecutor;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/util/concurrent/SerializingExecutor;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 132
    const/4 v2, 0x1

    .line 135
    .local v2, "stillRunning":Z
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->-get1(Lcom/google/common/util/concurrent/SerializingExecutor;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 137
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->-get0(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->-get3(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 139
    .local v1, "nextToRun":Ljava/lang/Runnable;
    if-nez v1, :cond_1

    .line 140
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/SerializingExecutor;->-set0(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    const/4 v2, 0x0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    if-eqz v2, :cond_0

    .line 160
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->-get0(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 161
    :try_start_3
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/SerializingExecutor;->-set0(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v4

    .line 131
    :cond_0
    return-void

    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :try_start_5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_6
    invoke-static {}, Lcom/google/common/util/concurrent/SerializingExecutor;->-get2()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "nextToRun":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    .line 156
    if-eqz v2, :cond_2

    .line 160
    iget-object v4, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-static {v4}, Lcom/google/common/util/concurrent/SerializingExecutor;->-get0(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 161
    :try_start_7
    iget-object v5, p0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/common/util/concurrent/SerializingExecutor;->-set0(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v4

    .line 155
    :cond_2
    throw v3

    .line 137
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v4

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 160
    .restart local v1    # "nextToRun":Ljava/lang/Runnable;
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .end local v1    # "nextToRun":Ljava/lang/Runnable;
    :catchall_3
    move-exception v3

    monitor-exit v4

    throw v3
.end method
