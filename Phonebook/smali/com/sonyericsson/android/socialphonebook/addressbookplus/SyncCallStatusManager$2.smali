.class Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;
.super Landroid/database/ContentObserver;
.source "SyncCallStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get2(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->updateSyncCallSettingsStatusFlag(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-wrap0(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get5(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get6(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$2;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get4(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    :cond_0
    return-void
.end method
