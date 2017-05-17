.class public Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;
.super Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
.source "ImMaxSizeDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;-><init>()V

    .line 18
    .local v0, "imMaxSizeDialog":Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;
    const v1, 0x7f0b01e9

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;->setTitle(I)V

    .line 19
    const v1, 0x7f0b01f1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;->setMessage(I)V

    .line 20
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;->setIcon(I)V

    .line 21
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;->setIconAttribute(I)V

    .line 24
    new-instance v1, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog$1;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog$1;-><init>()V

    .line 23
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 29
    return-object v0
.end method
