.class Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$3;
.super Ljava/lang/Object;
.source "PermissionAlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 162
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
