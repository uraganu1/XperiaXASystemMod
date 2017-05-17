.class Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$1;
.super Ljava/lang/Object;
.source "ConfirmDeleteContactsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;)Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;->onDeleteContacts()V

    .line 75
    return-void
.end method
