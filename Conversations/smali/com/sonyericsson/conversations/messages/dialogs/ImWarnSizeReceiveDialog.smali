.class public Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;
.super Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
.source "ImWarnSizeReceiveDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;-><init>()V

    .line 20
    .local v0, "warnSizeDialog":Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;
    const v1, 0x7f0b01e8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;->setTitle(I)V

    .line 21
    const v1, 0x7f0b01f3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;->setMessage(I)V

    .line 22
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;->setIcon(I)V

    .line 23
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;->setIconAttribute(I)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public showDialog(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 28
    const-string/jumbo v0, "ImWarnSizeReceiveDialogTag"

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 27
    return-void
.end method
