.class Lcom/sonyericsson/android/socialphonebook/SimExportActivity$3;
.super Ljava/lang/Object;
.source "SimExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 281
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const-string/jumbo v1, "onCreate"

    const-string/jumbo v2, "onClick"

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    .line 289
    return-void
.end method
