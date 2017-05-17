.class Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$createIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;
    .param p2, "val$createIntent"    # Landroid/content/Intent;
    .param p3, "val$activity"    # Landroid/app/Activity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;->this$1:Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;->val$createIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;->val$createIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;->val$createIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 301
    return-void
.end method
