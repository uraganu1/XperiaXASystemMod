.class Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$3;
.super Ljava/util/concurrent/FutureTask;
.source "SyncCallStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->performCachingForSyncContact(Landroid/widget/BaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    .prologue
    .line 127
    .local p2, "$anonymous0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$3;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 5

    .prologue
    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$3;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get3(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Ljava/util/concurrent/FutureTask;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    .local v2, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$3;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get4(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v2    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Error while executing sync call status caching."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Interrupted while waiting for sync."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
