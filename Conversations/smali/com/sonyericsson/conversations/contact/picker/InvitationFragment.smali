.class public Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;
.super Landroid/app/Fragment;
.source "InvitationFragment.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;)Landroid/app/ProgressDialog;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;I)Landroid/app/ProgressDialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->getProgressDialog(I)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->handleStartGroupConversationException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->openConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->DEBUG:Z

    .line 44
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static getAttachedInstance(Landroid/app/FragmentManager;)Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 59
    const-string/jumbo v1, "invitation-fragment"

    .line 58
    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    .line 60
    .local v0, "instance":Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    .end local v0    # "instance":Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;
    invoke-direct {v0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;-><init>()V

    .line 62
    .restart local v0    # "instance":Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "invitation-fragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 65
    :cond_0
    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getProgressDialog(I)Landroid/app/ProgressDialog;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 170
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 171
    return-object v0
.end method

.method private handleStartGroupConversationException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const v3, 0x7f0b021c

    const/4 v2, 0x1

    .line 189
    sget-boolean v1, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 190
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 191
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 194
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v1, "Start conversation failed! "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 198
    .local v0, "context":Landroid/content/Context;
    instance-of v1, p1, Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;

    if-eqz v1, :cond_1

    .line 200
    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 188
    :goto_0
    return-void

    .line 203
    :cond_1
    instance-of v1, p1, Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 208
    :cond_2
    instance-of v1, p1, Lcom/sonymobile/jms/permission/ImPermissionDeniedException;

    if-eqz v1, :cond_3

    .line 210
    const v1, 0x7f0b020d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 213
    :cond_3
    instance-of v1, p1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    if-eqz v1, :cond_4

    .line 215
    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 218
    :cond_4
    instance-of v1, p1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    if-eqz v1, :cond_5

    .line 220
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private inviteToGroupConversation(Ljava/util/List;Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/conversation/ImConversationApi;)V
    .locals 2
    .param p2, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .param p3, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            "Lcom/sonymobile/jms/conversation/ImConversationApi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "contactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    new-instance v0, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;

    .line 148
    new-instance v1, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$2;-><init>(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;)V

    .line 146
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;-><init>(Ljava/util/List;Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method

.method private openConversation(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    invoke-static {p1}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromImConversationIdOnly(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onConversationOpen(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 181
    :cond_0
    return-void
.end method

.method private startGroupConversation(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "contactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    new-instance v0, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;

    .line 121
    new-instance v1, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$1;-><init>(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;)V

    .line 120
    invoke-direct {v0, p1, p2, v1}, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/conversation/action/StartGroupConversationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 89
    if-eqz p3, :cond_0

    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    .line 90
    :cond_0
    return-void

    .line 93
    :cond_1
    const-string/jumbo v5, "address"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "address":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 95
    const-string/jumbo v5, "Selected contact is null"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_2
    invoke-static {v0}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromStrings([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "contactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    packed-switch p1, :pswitch_data_0

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unhandled activity requestCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 114
    return-void

    .line 102
    :pswitch_0
    const-string/jumbo v5, "group-chatID"

    .line 101
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .line 103
    .local v3, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    .line 105
    .local v2, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v5

    invoke-direct {p0, v1, v5, v2}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->inviteToGroupConversation(Ljava/util/List;Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/conversation/ImConversationApi;)V

    .line 107
    return-void

    .line 109
    .end local v2    # "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    .end local v3    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :pswitch_1
    const-string/jumbo v5, "subject"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "subject":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->startGroupConversation(Ljava/util/List;Ljava/lang/String;)V

    .line 111
    return-void

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x84
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 76
    check-cast p1, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListenerProvider;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListenerProvider;->getConversationEventListener()Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->mConversationEventListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    .line 82
    return-void
.end method
