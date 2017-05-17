.class Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$2;
.super Ljava/lang/Object;
.source "SpeedDialDuplicationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;->onDuplicateCancel()V

    .line 109
    return-void
.end method
