.class public Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;
.super Landroid/app/DialogFragment;
.source "MessageDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;
    }
.end annotation


# instance fields
.field private mMessageUri:Landroid/net/Uri;

.field private mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->mParticipants:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/sonyericsson/conversations/model/Message;Ljava/util/ArrayList;)Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;
    .locals 4
    .param p0, "message"    # Lcom/sonyericsson/conversations/model/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/model/Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v1, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;-><init>()V

    .line 67
    .local v1, "fragment":Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "participant_list"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 69
    const-string/jumbo v2, "message_key"

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    const-string/jumbo v1, "message_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string/jumbo v1, "message_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->mMessageUri:Landroid/net/Uri;

    .line 85
    :cond_1
    const-string/jumbo v1, "participant_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-string/jumbo v1, "participant_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->mParticipants:Ljava/util/List;

    .line 76
    :cond_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 96
    const v4, 0x7f030010

    .line 95
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->mMessageUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 98
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    if-nez v2, :cond_0

    .line 99
    const-string/jumbo v3, "Could not fetch message from database, cannot populate message details."

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 100
    return-object v5

    .line 102
    :cond_0
    new-instance v3, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;

    invoke-direct {v3, p0, v1, v2}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;-><init>(Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;Landroid/view/View;Lcom/sonyericsson/conversations/model/Message;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment$PopulateDeliveryStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 104
    const v4, 0x7f0b0061

    .line 103
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 105
    const v4, 0x104000a

    .line 103
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
