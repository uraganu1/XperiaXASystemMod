.class public final Lcom/google/common/util/concurrent/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ServiceManager$Listener;,
        Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;,
        Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;,
        Lcom/google/common/util/concurrent/ServiceManager$NoOpService;,
        Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;,
        Lcom/google/common/util/concurrent/ServiceManager$1;,
        Lcom/google/common/util/concurrent/ServiceManager$2;
    }
.end annotation


# static fields
.field private static final HEALTHY_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPED_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final services:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method static synthetic -get0()Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->HEALTHY_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    return-object v0
.end method

.method static synthetic -get1()Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->STOPPED_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    .line 127
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$1;

    const-string/jumbo v1, "healthy()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->HEALTHY_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    .line 132
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$2;

    const-string/jumbo v1, "stopped()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->STOPPED_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "services":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/Service;>;"
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 193
    .local v0, "copy":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/util/concurrent/Service;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    sget-object v5, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 197
    const-string/jumbo v9, "ServiceManager configured with no services.  Is your application configured properly?"

    .line 198
    new-instance v10, Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;

    invoke-direct {v10, v11}, Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;-><init>(Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;)V

    .line 196
    invoke-virtual {v5, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    new-instance v5, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    invoke-direct {v5, v11}, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;-><init>(Lcom/google/common/util/concurrent/ServiceManager$NoOpService;)V

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 201
    :cond_0
    new-instance v5, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {v5, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    iput-object v5, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 202
    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    .line 204
    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 205
    .local v4, "stateReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    .line 206
    .local v1, "sameThreadExecutor":Ljava/util/concurrent/Executor;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/Service;

    .line 215
    .local v2, "service":Lcom/google/common/util/concurrent/Service;
    new-instance v5, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;

    invoke-direct {v5, v2, v4}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;-><init>(Lcom/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V

    invoke-interface {v2, v5, v1}, Lcom/google/common/util/concurrent/Service;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 218
    invoke-interface {v2}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v5

    sget-object v8, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v5, v8, :cond_1

    move v5, v6

    :goto_1
    const-string/jumbo v8, "Can only manage NEW services, %s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v2, v9, v7

    invoke-static {v5, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    .line 222
    .end local v2    # "service":Lcom/google/common/util/concurrent/Service;
    :cond_2
    iget-object v5, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v5}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->markReady()V

    .line 191
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/common/util/concurrent/ServiceManager$Listener;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 268
    return-void
.end method

.method public addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/common/util/concurrent/ServiceManager$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 248
    return-void
.end method

.method public awaitHealthy()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy()V

    .line 307
    return-void
.end method

.method public awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy(JLjava/util/concurrent/TimeUnit;)V

    .line 322
    return-void
.end method

.method public awaitStopped()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped()V

    .line 344
    return-void
.end method

.method public awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped(JLjava/util/concurrent/TimeUnit;)V

    .line 357
    return-void
.end method

.method public isHealthy()Z
    .locals 3

    .prologue
    .line 368
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 369
    .local v0, "service":Lcom/google/common/util/concurrent/Service;
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    const/4 v2, 0x0

    return v2

    .line 373
    .end local v0    # "service":Lcom/google/common/util/concurrent/Service;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public servicesByState()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method public startAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 281
    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 282
    .local v1, "service":Lcom/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v3

    .line 283
    .local v3, "state":Lcom/google/common/util/concurrent/Service$State;
    sget-object v4, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v3, v4, :cond_0

    move v4, v5

    :goto_1
    const-string/jumbo v7, "Service %s is %s, cannot start it."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v3, v8, v5

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    .line 285
    .end local v1    # "service":Lcom/google/common/util/concurrent/Service;
    .end local v3    # "state":Lcom/google/common/util/concurrent/Service$State;
    :cond_1
    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 287
    .restart local v1    # "service":Lcom/google/common/util/concurrent/Service;
    :try_start_0
    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->startAsync()Lcom/google/common/util/concurrent/Service;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 288
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to start Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 296
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "service":Lcom/google/common/util/concurrent/Service;
    :cond_2
    return-object p0
.end method

.method public startupTimes()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimes()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public stopAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .locals 3

    .prologue
    .line 333
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 334
    .local v0, "service":Lcom/google/common/util/concurrent/Service;
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->stopAsync()Lcom/google/common/util/concurrent/Service;

    goto :goto_0

    .line 336
    .end local v0    # "service":Lcom/google/common/util/concurrent/Service;
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 398
    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 399
    const-string/jumbo v1, "services"

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    const-class v3, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    invoke-static {v3}, Lcom/google/common/base/Predicates;->instanceOf(Ljava/lang/Class;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v2

    .line 398
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
