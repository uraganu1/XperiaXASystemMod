.class Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$1;
.super Ljava/lang/Object;
.source "SimExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 171
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const-string/jumbo v1, "mQueryfinished"

    const-string/jumbo v2, "errorDialogShow:onClick"

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    .line 179
    return-void
.end method
