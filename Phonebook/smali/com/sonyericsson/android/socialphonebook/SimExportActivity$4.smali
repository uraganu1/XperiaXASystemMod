.class Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;
.super Landroid/os/Handler;
.source "SimExportActivity.java"


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
    .line 294
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap4(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 310
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->clearProgressDialog()V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get6(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
