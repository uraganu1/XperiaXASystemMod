.class public final Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;
.super Ljava/lang/Object;
.source "AsyncTaskExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;,
        Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;
    }
.end annotation


# static fields
.field private static mInjectedAsyncTaskExecutorFactory:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCalledFromUiThread()V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 75
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "submit method must be called from ui thread, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;->checkState(ZLjava/lang/Object;)V

    .line 72
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkState(ZLjava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

.method public static createAsyncTaskExecutor()Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;
    .locals 3

    .prologue
    .line 52
    const-class v1, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;->createAsyncTaskExeuctor()Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 56
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setFactoryForTest(Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;)V
    .locals 2
    .param p0, "factory"    # Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 67
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;

    monitor-enter v0

    .line 68
    :try_start_0
    sput-object p0, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
