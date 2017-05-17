.class Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$1;
.super Ljava/lang/Object;
.source "IceMyselfInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;)Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;->onContactEditSelected(Landroid/net/Uri;)V

    .line 62
    return-void
.end method
