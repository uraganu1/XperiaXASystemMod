.class Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutors.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleAsyncTaskExecutor"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 88
    return-void
.end method


# virtual methods
.method public varargs submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 1
    .param p1, "identifer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)",
            "Landroid/os/AsyncTask",
            "<TT;**>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TT;**>;"
    .local p3, "params":[Ljava/lang/Object;, "[TT;"
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;->checkCalledFromUiThread()V

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
