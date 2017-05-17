.class Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;
.super Ljava/lang/Object;
.source "ContactsStatusMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 500
    const-string/jumbo v0, "ContactsStatusMgr"

    const-string/jumbo v1, "StatusObserver.mOnChangeHandler.run"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get2(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get3(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->-get0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-wrap0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 499
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver$1;->this$1:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-set0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Z)Z

    goto :goto_0
.end method
