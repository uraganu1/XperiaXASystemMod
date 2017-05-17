.class public Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;
.super Landroid/app/DialogFragment;
.source "ResendUndeliveredMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;,
        Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$2;
    }
.end annotation


# instance fields
.field private mImOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

.field private mOnNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->mImOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;-><init>(Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->mOnPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    new-instance v0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$2;-><init>(Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->mOnNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    return-void
.end method

.method private initContentView()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    const v1, 0x7f03004a

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    if-eqz p1, :cond_0

    .line 73
    const-string/jumbo v0, "imOne2OneConversationId"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->mImOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .line 69
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "imOne2OneConversationId"

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->mImOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->mOnPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0b0165

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->mOnNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0b0166

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->initContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    const-string/jumbo v0, "imOne2OneConversationId"

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->mImOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method
