.class Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$1;
.super Ljava/lang/Object;
.source "IceContactRemovalDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 104
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;)Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->getCheckedItemsUri()Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    .local v0, "pickedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 107
    const/4 v3, 0x0

    .line 106
    invoke-static {v2, v0, v3}, Lcom/android/contacts/ContactSaveService;->createSetIceIntent(Landroid/content/Context;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v1

    .line 108
    .local v1, "setIceContacts":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    .end local v1    # "setIceContacts":Landroid/content/Intent;
    :cond_0
    return-void
.end method
