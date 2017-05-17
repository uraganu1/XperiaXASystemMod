.class abstract Lcom/google/common/util/concurrent/Futures$ImmediateFuture;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ImmediateFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 96
    sput-object v0, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;->log:Ljava/util/logging/Logger;

    .line 93
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/Futures$ImmediateFuture;)V
    .locals 0

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateFuture<TV;>;"
    const-string/jumbo v1, "Runnable was null."

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v1, "Executor was null."

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    const-string/jumbo v4, " with executor "

    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateFuture<TV;>;"
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method
