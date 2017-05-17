.class Lcom/sonyericsson/android/socialphonebook/SimExportActivity$5;
.super Ljava/lang/Object;
.source "SimExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->confirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const-string/jumbo v1, "confirmation"

    const-string/jumbo v2, "onCancel."

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    .line 514
    return-void
.end method
