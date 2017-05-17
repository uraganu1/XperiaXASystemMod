.class Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$1;
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
    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$1;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$1;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$1;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get1(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->performCachingForSyncContact(Landroid/widget/BaseAdapter;)V

    .line 101
    return-void
.end method
