.class Lcom/sonymobile/runtimeskinning/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mCause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reThrow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    instance-of v0, v0, Landroid/os/RemoteException;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Landroid/os/RemoteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 44
    :goto_0
    throw v0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    check-cast v0, Landroid/os/RemoteException;

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 28
    iput-object p2, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    .line 29
    return-void
.end method
