.class Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;
.super Landroid/content/CursorLoader;
.source "MessageListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/MessageListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageListFragmentLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;,
        Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field private mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private mIsThrottleSet:Z

.field private mJoynContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;

.field private mXmsContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;Lcom/sonyericsson/conversations/conversation/Conversation;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->unregisterContentObservers()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ConversationsApp;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app"    # Lcom/sonyericsson/conversations/ConversationsApp;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 155
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ConversationsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mIsThrottleSet:Z

    .line 88
    iput-object v7, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 90
    iput-object v7, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mJoynContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;

    .line 92
    iput-object v7, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mXmsContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;

    .line 154
    return-void
.end method

.method private setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 160
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->unregisterContentObservers()V

    .line 161
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setupJoynContentObserver()V

    .line 163
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 164
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v1, v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setupXmsContentObserver(Landroid/content/Context;)V

    .line 158
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_0
    return-void
.end method

.method private setupJoynContentObserver()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;-><init>(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mJoynContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;

    .line 176
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mJoynContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;

    .line 176
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->registerImConversationObserver(Landroid/database/ContentObserver;)V

    .line 174
    return-void
.end method

.method private setupXmsContentObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;-><init>(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mXmsContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 183
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mXmsContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;

    .line 182
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    return-void
.end method

.method private unregisterContentObservers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mJoynContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mJoynContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 258
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mJoynContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mXmsContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mXmsContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 262
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mXmsContentObserver:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;

    .line 255
    :cond_1
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 12

    .prologue
    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, "xmsCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 191
    .local v5, "imCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 192
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    .line 193
    .local v1, "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 206
    .end local v6    # "xmsCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v7, :pswitch_data_1

    .line 240
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v1    # "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .end local v5    # "imCursor":Landroid/database/Cursor;
    :goto_1
    new-instance v7, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;

    new-instance v8, Lcom/sonyericsson/conversations/messages/MessageAndChatCursorComparator;

    invoke-direct {v8}, Lcom/sonyericsson/conversations/messages/MessageAndChatCursorComparator;-><init>()V

    invoke-direct {v7, v6, v5, v8}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;)V

    return-object v7

    .line 195
    .restart local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .restart local v1    # "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .restart local v5    # "imCursor":Landroid/database/Cursor;
    .restart local v6    # "xmsCursor":Landroid/database/Cursor;
    :pswitch_0
    :try_start_1
    iget-object v7, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 199
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v6

    .local v6, "xmsCursor":Landroid/database/Cursor;
    goto :goto_0

    .line 208
    .end local v6    # "xmsCursor":Landroid/database/Cursor;
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v7

    .line 212
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v8

    .line 208
    invoke-interface {v7, v8}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Landroid/database/Cursor;

    move-result-object v5

    .local v5, "imCursor":Landroid/database/Cursor;
    goto :goto_1

    .line 215
    .local v5, "imCursor":Landroid/database/Cursor;
    :pswitch_3
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v7

    .line 216
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v8

    .line 215
    invoke-interface {v7, v8}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveMessages(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .local v5, "imCursor":Landroid/database/Cursor;
    goto :goto_1

    .line 233
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v1    # "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .local v5, "imCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    .line 236
    .local v3, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Terminal "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 237
    const-string/jumbo v8, " occurred during execution in background thread!"

    .line 236
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-static {v7, v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 226
    .end local v3    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_1
    move-exception v4

    .line 230
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Terminal "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 231
    const-string/jumbo v8, " occurred during execution in background thread!"

    .line 230
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-static {v7, v4}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 221
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .local v2, "e":Landroid/os/OperationCanceledException;
    goto/16 :goto_1

    .line 193
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 206
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setUpdateThrottle(J)V
    .locals 5
    .param p1, "delayMS"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 245
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mIsThrottleSet:Z

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 246
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 247
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mIsThrottleSet:Z

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->mIsThrottleSet:Z

    goto :goto_0
.end method
