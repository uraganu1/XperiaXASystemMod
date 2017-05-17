.class Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$1;
.super Ljava/lang/Object;
.source "ContactRemovedFromSpeedDialDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;)Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;)Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->-get1(Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;->onDialogDismiss(Landroid/content/Intent;)V

    .line 68
    :cond_0
    return-void
.end method
