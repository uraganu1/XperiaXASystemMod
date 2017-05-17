.class Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$4;
.super Ljava/lang/Object;
.source "ImResizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;
    .param p2, "val$dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$4;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, -0x3

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$4;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-get2(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
