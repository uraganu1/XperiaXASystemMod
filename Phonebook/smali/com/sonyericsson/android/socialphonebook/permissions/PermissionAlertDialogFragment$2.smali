.class Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$2;
.super Ljava/lang/Object;
.source "PermissionAlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->dismiss()V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 146
    return-void
.end method
