.class Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$3;
.super Ljava/lang/Object;
.source "SimExportListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 838
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    .line 841
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;)V

    .line 846
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->finish()V

    .line 840
    return-void
.end method
