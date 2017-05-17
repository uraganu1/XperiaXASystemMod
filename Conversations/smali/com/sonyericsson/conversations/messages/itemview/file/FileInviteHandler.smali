.class Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;
.super Ljava/lang/Object;
.source "FileInviteHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;,
        Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;,
        Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;
    }
.end annotation


# instance fields
.field private final mAcceptButton:Landroid/widget/ImageButton;

.field private final mContext:Landroid/content/Context;

.field private final mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mFileAcceptRejectListener:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

.field private mManager:Landroid/app/FragmentManager;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->acceptFile()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->disableAcceptButton()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->enableAcceptButton()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->startAcceptFileMessageTask(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->startDeclineFileTransferTask(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/app/FragmentManager;Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/ImageButton;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p4, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p5, "acceptButton"    # Landroid/widget/ImageButton;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mManager:Landroid/app/FragmentManager;

    .line 53
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 55
    iput-object p4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 56
    iput-object p5, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mAcceptButton:Landroid/widget/ImageButton;

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->initAcceptDeclineButton()V

    .line 50
    return-void
.end method

.method private acceptFile()V
    .locals 10

    .prologue
    .line 123
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v5

    .line 124
    .local v5, "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    invoke-interface {v5}, Lcom/sonymobile/jms/setting/ImSettingApi;->getFileWarningSize()I

    move-result v1

    .line 125
    .local v1, "fileWarningSize":I
    iget-object v7, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v7}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v2

    .line 126
    .local v2, "fileSize":J
    int-to-long v8, v1

    cmp-long v7, v2, v8

    if-lez v7, :cond_1

    if-eqz v1, :cond_1

    .line 127
    iget-object v7, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v7}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v7

    .line 128
    iget-object v8, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    .line 127
    invoke-direct {p0, v7, v8}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->showFileSizeWarningDialog(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v7}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v7

    .line 131
    iget-object v8, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    .line 130
    invoke-direct {p0, v7, v8}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->startAcceptFileMessageTask(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v6

    .line 135
    .local v6, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-interface {v5}, Lcom/sonymobile/jms/setting/ImSettingApi;->isFileTransferAutoAcceptSettingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isFileTransferAutoAcceptQuestionAsked()Z

    move-result v7

    if-nez v7, :cond_0

    .line 137
    iget-object v7, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 138
    .local v4, "ft":Landroid/app/FragmentTransaction;
    invoke-static {}, Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;->newInstance()Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;

    move-result-object v0

    .line 139
    .local v0, "autoAcceptDialog":Lcom/sonyericsson/conversations/messages/dialogs/AutoAcceptDialog;
    const-string/jumbo v7, "alert-dialog"

    invoke-virtual {v4, v0, v7}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 140
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 141
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setFileTransferAutoAcceptQuestionAsked(Z)V

    goto :goto_0
.end method

.method private disableAcceptButton()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mAcceptButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 189
    return-void
.end method

.method private enableAcceptButton()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mAcceptButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method private hideAcceptButton()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mAcceptButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 181
    return-void
.end method

.method private initAcceptDeclineButton()V
    .locals 6

    .prologue
    .line 86
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    .line 87
    .local v2, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "messageId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/sonymobile/jms/conversation/ImConversationApi;->isFileMessagePendingLocalInvitationResponse(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    new-instance v4, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p0, v5}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mFileAcceptRejectListener:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;

    .line 92
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v4

    .line 93
    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mFileAcceptRejectListener:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;

    .line 92
    invoke-interface {v4, v5}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->registerMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 94
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->showAcceptButton()V

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->enableAcceptButton()V

    .line 83
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->hideAcceptButton()V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    .line 101
    const-string/jumbo v4, "Unable to determine file transfer session state for ImConversationId\'"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 102
    const-string/jumbo v5, "\'with message id"

    .line 101
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->showAcceptButton()V

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->disableAcceptButton()V

    goto :goto_0

    .line 109
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    .line 111
    const-string/jumbo v4, "Unable to determine file transfer session state for ImConversationId\'"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 112
    const-string/jumbo v5, "\'with message id"

    .line 111
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->showAcceptButton()V

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->disableAcceptButton()V

    goto :goto_0
.end method

.method private showAcceptButton()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mAcceptButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 177
    return-void
.end method

.method private showFileSizeWarningDialog(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 3
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v1, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 162
    .local v1, "warnSizeDialogListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;->newInstance()Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;

    move-result-object v0

    .line 164
    .local v0, "imWarnSizeDialog":Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;
    const v2, 0x7f0b0165

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 165
    const v2, 0x7f0b0166

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeReceiveDialog;->showDialog(Landroid/app/FragmentManager;)V

    .line 148
    return-void
.end method

.method private startAcceptFileMessageTask(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method private startDeclineFileTransferTask(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    return-void
.end method


# virtual methods
.method startInviteHandling()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->mAcceptButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
