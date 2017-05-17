.class Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler$2;
.super Ljava/lang/Object;
.source "SimExportListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->errorDialogShow(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler$2;->this$1:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 418
    const-string/jumbo v0, "mQueryfinished"

    const-string/jumbo v1, "errorDialogShow:onCancel"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler$2;->this$1:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->finish()V

    .line 417
    return-void
.end method
