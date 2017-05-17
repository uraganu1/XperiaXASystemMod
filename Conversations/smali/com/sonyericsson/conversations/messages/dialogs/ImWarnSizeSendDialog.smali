.class public Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;
.super Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
.source "ImWarnSizeSendDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;-><init>()V

    .line 20
    .local v0, "warnSizeDialog":Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;
    const v1, 0x7f0b01e8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;->setTitle(I)V

    .line 21
    const v1, 0x7f0b01f2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;->setMessage(I)V

    .line 22
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;->setIcon(I)V

    .line 23
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;->setIconAttribute(I)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public showDialog(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 29
    const-string/jumbo v0, "ImWarnSizeSendDialogTag"

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 28
    return-void
.end method
