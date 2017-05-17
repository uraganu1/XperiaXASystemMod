.class Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;
.super Ljava/lang/Object;
.source "SimExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfimDialogListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const-string/jumbo v1, "ConfimDialogListner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap5(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get5(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get5(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$QueryThread;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$QueryThread;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    goto :goto_0
.end method
