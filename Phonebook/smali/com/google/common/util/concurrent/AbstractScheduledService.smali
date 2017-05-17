.class public abstract Lcom/google/common/util/concurrent/AbstractScheduledService;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;,
        Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;,
        Lcom/google/common/util/concurrent/AbstractScheduledService$1;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final delegate:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method static synthetic -get0(Lcom/google/common/util/concurrent/AbstractScheduledService;)Lcom/google/common/util/concurrent/AbstractService;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/AbstractScheduledService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractScheduledService;->logger:Ljava/util/logging/Logger;

    .line 94
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    .line 240
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/common/util/concurrent/Service$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractService;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 357
    return-void
.end method

.method public final awaitRunning()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->awaitRunning()V

    .line 387
    return-void
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService;->awaitRunning(JLjava/util/concurrent/TimeUnit;)V

    .line 394
    return-void
.end method

.method public final awaitTerminated()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->awaitTerminated()V

    .line 401
    return-void
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService;->awaitTerminated(JLjava/util/concurrent/TimeUnit;)V

    .line 408
    return-void
.end method

.method protected executor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .prologue
    .line 286
    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$2;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$2;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V

    .line 285
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 296
    .local v0, "executor":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$3;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$3;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 302
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 296
    invoke-virtual {p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractScheduledService;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 303
    return-object v0
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected abstract runOneIteration()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract scheduler()Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
.end method

.method protected serviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected shutDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final startAndWait()Lcom/google/common/util/concurrent/Service$State;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->startAndWait()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 373
    return-object p0
.end method

.method protected startUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    return-void
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stop()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->stop()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final stopAndWait()Lcom/google/common/util/concurrent/Service$State;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->stopAndWait()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 381
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
