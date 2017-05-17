.class Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;
.super Landroid/database/ContentObserver;
.source "ContactsStatusMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private final mOnChangeHandler:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
    .param p2, "aCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    .line 511
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get5(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 498
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;-><init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->mOnChangeHandler:Ljava/lang/Runnable;

    .line 512
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->mCallback:Ljava/lang/Runnable;

    .line 510
    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "aSelfChange"    # Z

    .prologue
    .line 516
    const-string/jumbo v0, "ContactsStatusMgr"

    const-string/jumbo v1, "status changed"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get5(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->mOnChangeHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get5(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->mOnChangeHandler:Ljava/lang/Runnable;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get3(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 515
    return-void
.end method
