.class public Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;
.super Landroid/os/AsyncTask;
.source "StartGroupChatWithMessageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/sonymobile/jms/conversation/ImConversationId;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private final mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

.field private final mFileUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupSubject:Ljava/lang/String;

.field private final mImContactNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

.field private final mMessageSenderListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

.field private final mStartGroupListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->DEBUG:Z

    .line 31
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/sonyericsson/conversations/conversation/ConversationManager;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V
    .locals 1
    .param p2, "groupSubject"    # Ljava/lang/String;
    .param p3, "conversationManager"    # Lcom/sonyericsson/conversations/conversation/ConversationManager;
    .param p4, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p6, "startGroupConversationListener"    # Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;
    .param p7, "messageSenderListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/conversation/ConversationManager;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;",
            "Lcom/sonyericsson/conversations/messages/MessageSenderListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "imContactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    .local p5, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mImContactNumbers:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mGroupSubject:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 63
    iput-object p4, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 64
    iput-object p5, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mFileUriList:Ljava/util/List;

    .line 65
    iput-object p6, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mStartGroupListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    .line 66
    iput-object p7, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mMessageSenderListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 59
    return-void
.end method

.method private startGroupChat()Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mImContactNumbers:Ljava/util/List;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mGroupSubject:Ljava/lang/String;

    .line 130
    invoke-interface {v1, v2, v3}, Lcom/sonymobile/jms/conversation/ImConversationApi;->startImGroupConversation(Ljava/util/Collection;Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v0

    .line 132
    .local v0, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    sget-boolean v1, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v1, "Group conversation \'"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 134
    const-string/jumbo v2, "\' initialized with subject \'"

    .line 133
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mGroupSubject:Ljava/lang/String;

    .line 133
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 134
    const-string/jumbo v2, "\'"

    .line 133
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 136
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 10
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->startGroupChat()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v7

    .line 81
    .local v7, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/sonymobile/jms/conversation/ImConversationId;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {p0, v8}, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->publishProgress([Ljava/lang/Object;)V

    .line 84
    iget-object v8, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 85
    invoke-interface {v7}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v9

    .line 84
    invoke-virtual {v8, v9}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 88
    iget-object v8, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 89
    iget-object v9, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mFileUriList:Ljava/util/List;

    .line 88
    invoke-static {v7, v8, v9}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v8, 0x0

    return-object v8

    .line 104
    .end local v7    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :catch_0
    move-exception v6

    .line 105
    .local v6, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    return-object v6

    .line 102
    .end local v6    # "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    :catch_1
    move-exception v5

    .line 103
    .local v5, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    return-object v5

    .line 100
    .end local v5    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_2
    move-exception v3

    .line 101
    .local v3, "e":Lcom/sonymobile/jms/file/FileTooBigException;
    return-object v3

    .line 98
    .end local v3    # "e":Lcom/sonymobile/jms/file/FileTooBigException;
    :catch_3
    move-exception v4

    .line 99
    .local v4, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    return-object v4

    .line 96
    .end local v4    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    :catch_4
    move-exception v2

    .line 97
    .local v2, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    return-object v2

    .line 94
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :catch_5
    move-exception v1

    .line 95
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    return-object v1

    .line 92
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_6
    move-exception v0

    .line 93
    .local v0, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mStartGroupListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;->onStartConversationException(Ljava/lang/Exception;)V

    .line 116
    :goto_0
    return-void

    .line 120
    :cond_0
    if-eqz p1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mMessageSenderListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->onMessagesSendFailure(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Exception;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mMessageSenderListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->onMessageSent(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/Message;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mStartGroupListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;->onPreConversationStart()V

    .line 71
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 2
    .param p1, "values"    # [Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 111
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 112
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->mStartGroupListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;->onStartConversationSuccessful(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, [Lcom/sonymobile/jms/conversation/ImConversationId;

    .end local p1    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->onProgressUpdate([Lcom/sonymobile/jms/conversation/ImConversationId;)V

    return-void
.end method
