.class Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;
.super Ljava/lang/Object;
.source "SimExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 248
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const-string/jumbo v1, "onCreate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    packed-switch p2, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-set2(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;I)I

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap2(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap4(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get5(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get5(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$QueryThread;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$QueryThread;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-set2(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;I)I

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
