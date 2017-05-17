.class Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$1;
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
    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->createSettingAppInfoViewIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->dismiss()V

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 117
    return-void
.end method
