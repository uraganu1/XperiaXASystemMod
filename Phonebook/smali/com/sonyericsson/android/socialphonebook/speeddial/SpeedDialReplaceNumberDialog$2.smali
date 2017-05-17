.class Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$2;
.super Ljava/lang/Object;
.source "SpeedDialReplaceNumberDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;->onReplaceCancel()V

    .line 108
    return-void
.end method
