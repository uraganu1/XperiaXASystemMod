.class Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$2;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 851
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get8(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-get8(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;)Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$VCardScanThread;->start()V

    .line 850
    :goto_0
    return-void

    .line 854
    :cond_0
    const-string/jumbo v0, "ImportVCardActivity"

    const-string/jumbo v1, "mVCardScanThread is null"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 856
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->-set3(Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;->finish()V

    goto :goto_0
.end method
