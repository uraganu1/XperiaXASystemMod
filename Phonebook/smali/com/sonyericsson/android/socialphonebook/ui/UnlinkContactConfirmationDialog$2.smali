.class Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$2;
.super Ljava/lang/Object;
.source "UnlinkContactConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;

.field final synthetic val$wrapper:Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;
    .param p2, "val$wrapper"    # Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$2;->val$wrapper:Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;)Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;)Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$2;->val$wrapper:Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    iget-wide v2, v1, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->rawContactId:J

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;->onUnlinkConfirmed(J)V

    .line 94
    :cond_0
    return-void
.end method
