.class final Lcom/google/common/util/concurrent/SerializingExecutor;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;,
        Lcom/google/common/util/concurrent/SerializingExecutor$1;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final internalLock:Ljava/lang/Object;

.field private isThreadScheduled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "internalLock"
    .end annotation
.end field

.field private final taskRunner:Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

.field private final waitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "internalLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/google/common/util/concurrent/SerializingExecutor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    return v0
.end method

.method static synthetic -get2()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic -get3(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -set0(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    .line 69
    new-instance v0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->taskRunner:Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

    .line 81
    new-instance v0, Lcom/google/common/util/concurrent/SerializingExecutor$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/SerializingExecutor$1;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    .line 77
    const-string/jumbo v0, "\'executor\' must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 76
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 93
    const-string/jumbo v2, "\'r\' must not be null."

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "scheduleTaskRunner":Z
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 98
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    if-nez v2, :cond_0

    .line 99
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 v0, 0x1

    :cond_0
    monitor-exit v3

    .line 103
    if-eqz v0, :cond_1

    .line 104
    const/4 v1, 0x1

    .line 106
    .local v1, "threw":Z
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->taskRunner:Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 107
    const/4 v1, 0x0

    .line 109
    if-eqz v1, :cond_1

    .line 110
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 92
    .end local v1    # "threw":Z
    :cond_1
    return-void

    .line 95
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 110
    .restart local v1    # "threw":Z
    :catchall_1
    move-exception v3

    monitor-exit v2

    throw v3

    .line 108
    :catchall_2
    move-exception v2

    .line 109
    if-eqz v1, :cond_2

    .line 110
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    monitor-enter v3

    .line 115
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v3

    .line 108
    :cond_2
    throw v2

    .line 110
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2
.end method
