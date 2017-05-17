.class public Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;
.super Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
.source "AutoAcceptDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v1

    .line 15
    .local v1, "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    new-instance v0, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;-><init>()V

    .line 16
    .local v0, "autoAcceptDialog":Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;
    const v2, 0x7f0b0120

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;->setTitle(I)V

    .line 18
    const v2, 0x7f0b0121

    .line 17
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;->setMessage(I)V

    .line 20
    new-instance v2, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog$1;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog$1;-><init>(Lcom/sonymobile/jms/setting/ImSettingApi;)V

    .line 19
    const v3, 0x7f0b0165

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 27
    new-instance v2, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog$2;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog$2;-><init>(Lcom/sonymobile/jms/setting/ImSettingApi;)V

    .line 26
    const v3, 0x7f0b0166

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 33
    return-object v0
.end method
