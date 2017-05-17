.class Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;
.super Landroid/os/Handler;
.source "SimExportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 763
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 762
    :goto_0
    return-void

    .line 765
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->startSimExport()V

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 772
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->showDialog(I)V

    goto :goto_0

    .line 775
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Z)Z

    .line 779
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V

    goto :goto_0

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
