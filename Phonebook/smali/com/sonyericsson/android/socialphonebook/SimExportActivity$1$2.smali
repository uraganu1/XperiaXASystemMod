.class Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$2;
.super Ljava/lang/Object;
.source "SimExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->errorDialogShow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$2;->this$1:Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$2;->this$1:Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const-string/jumbo v1, "mQueryfinished"

    const-string/jumbo v2, "errorDialogShow:onCancel"

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$2;->this$1:Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    .line 192
    return-void
.end method
