.class public Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;
.super Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;
.source "SearchCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;,
        Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;
    }
.end annotation


# static fields
.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

.field private static sEllipsis:Ljava/lang/String;

.field private static sWaitingForHighlightTaskIdler:Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;


# instance fields
.field private final mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

.field private mSearchString:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->sEllipsis:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;
    .locals 1

    sget-object v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->sWaitingForHighlightTaskIdler:Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;

    return-object v0
.end method

.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "\u2026"

    sput-object v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->sEllipsis:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "searchStringParameter"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 163
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 164
    if-eqz p3, :cond_0

    .end local p3    # "searchStringParameter":Ljava/lang/String;
    :goto_0
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mSearchString:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 162
    return-void

    .restart local p3    # "searchStringParameter":Ljava/lang/String;
    :cond_0
    move-object p3, v0

    .line 164
    goto :goto_0
.end method

.method private getConversation(Landroid/database/Cursor;Z)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isXmsCursor"    # Z

    .prologue
    .line 241
    if-eqz p2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    .line 246
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne v0, v1, :cond_1

    .line 247
    const/4 v1, 0x0

    return-object v1

    .line 250
    :cond_1
    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 252
    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    .line 251
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 255
    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1
.end method

.method private getImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 275
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v1, "Failed to get im conversation id"

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 278
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v1
.end method

.method private getMessageDate(Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isXmsCursor"    # Z

    .prologue
    .line 231
    if-eqz p2, :cond_0

    .line 232
    const-string/jumbo v3, "date"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 233
    .local v2, "datePos":I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 237
    .end local v2    # "datePos":I
    .local v0, "date":J
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->formatConversationListDate(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 235
    .end local v0    # "date":J
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asLocalTimestamp(Landroid/database/Cursor;)J

    move-result-wide v0

    .restart local v0    # "date":J
    goto :goto_0
.end method

.method private getMessageText(Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isXmsCursor"    # Z

    .prologue
    .line 206
    if-eqz p2, :cond_0

    .line 207
    const-string/jumbo v4, "body"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, "bodyPos":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 210
    .end local v0    # "bodyPos":I
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    .line 213
    .local v2, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v3

    .line 214
    .local v3, "imMessageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 218
    const-string/jumbo v4, "Usupported im message type for search"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v4, ""

    return-object v4

    .line 216
    :pswitch_0
    invoke-interface {v2, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImTextMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 221
    .end local v3    # "imMessageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v4, "Failed to get persisted message from search cursor"

    .line 222
    invoke-static {v4, v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 224
    const-string/jumbo v4, ""

    return-object v4

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getThreadId(Landroid/database/Cursor;)J
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 266
    const-string/jumbo v1, "thread_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, "threadIdColumnIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 268
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2

    .line 270
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method private isXmsCursor(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 261
    const-string/jumbo v1, "thread_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 262
    .local v0, "threadIdColIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 178
    const v10, 0x7f0d00d4

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 180
    .local v9, "title":Landroid/widget/TextView;
    const v10, 0x7f0d00d6

    .line 179
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    .line 181
    .local v8, "snippet":Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;
    const v10, 0x7f0d00d5

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 183
    .local v2, "dateView":Landroid/widget/TextView;
    const v10, 0x7f0d00d3

    .line 182
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 185
    .local v5, "joynIndicationView":Landroid/widget/ImageView;
    const v10, 0x7f0d00d2

    .line 184
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 186
    .local v0, "contactBadge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->isXmsCursor(Landroid/database/Cursor;)Z

    move-result v3

    .line 189
    .local v3, "isXmsCursor":Z
    invoke-direct {p0, p3, v3}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getConversation(Landroid/database/Cursor;Z)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    .line 190
    .local v1, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-nez v1, :cond_0

    .line 191
    const-string/jumbo v10, "Conversation should not be null"

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 192
    return-void

    .line 194
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v7

    .line 196
    .local v7, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v10

    invoke-interface {v10}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v10

    sget-object v11, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    .line 195
    :goto_0
    invoke-static {p2, v7, v9, v0, v10}, Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;->setTitleAndImage(Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;Z)V

    .line 197
    invoke-direct {p0, p3, v3}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getMessageText(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "messageText":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mSearchString:Ljava/lang/String;

    invoke-virtual {v8, v6, v10}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->setTextAndHighlight(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p3, v3}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getMessageDate(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrandingPolicy()Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    move-result-object v10

    .line 201
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v11

    .line 200
    invoke-interface {v10, v11}, Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;->getJoynConversationIndicatorVisibility(Lcom/sonyericsson/conversations/conversation/ConversationId;)I

    move-result v4

    .line 202
    .local v4, "joynContactIndicatorVisibility":I
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    return-void

    .line 196
    .end local v4    # "joynContactIndicatorVisibility":I
    .end local v6    # "messageText":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public getConversationIdAtPosition(I)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 6
    .param p1, "pos"    # I

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 284
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 289
    .local v1, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    const-wide/16 v2, -0x1

    .line 290
    .local v2, "threadId":J
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->isXmsCursor(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 292
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-virtual {v4, v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 306
    :cond_0
    :goto_0
    invoke-static {v2, v3, v1}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    return-object v4

    .line 285
    .end local v1    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v2    # "threadId":J
    :cond_1
    sget-object v4, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->CONVERSATION_ID_NONE:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v4

    .line 297
    .restart local v1    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .restart local v2    # "threadId":J
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 298
    sget-object v4, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-eq v1, v4, :cond_0

    .line 299
    invoke-interface {v1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v4

    if-nez v4, :cond_0

    .line 300
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 301
    invoke-interface {v1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v5

    .line 300
    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getMessageUriAtPosition(I)Landroid/net/Uri;
    .locals 10
    .param p1, "pos"    # I

    .prologue
    const/4 v9, 0x0

    .line 317
    const/4 v2, 0x0

    .line 318
    .local v2, "focusedMessageUri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 319
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 320
    :cond_0
    return-object v9

    .line 322
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->isXmsCursor(Landroid/database/Cursor;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 323
    const-string/jumbo v8, "transport_type"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 324
    .local v4, "msgTypePos":I
    const-string/jumbo v8, "REAL_ID_COLUMN_NAME"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 326
    .local v5, "rowidPos":I
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 327
    .local v6, "rowid":J
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "msgType":Ljava/lang/String;
    const-string/jumbo v8, "sms"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 330
    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 342
    .end local v2    # "focusedMessageUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-object v2

    .line 331
    .restart local v2    # "focusedMessageUri":Landroid/net/Uri;
    :cond_3
    const-string/jumbo v8, "mms"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 332
    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .local v2, "focusedMessageUri":Landroid/net/Uri;
    goto :goto_0

    .line 336
    .end local v3    # "msgType":Ljava/lang/String;
    .end local v4    # "msgTypePos":I
    .end local v5    # "rowidPos":I
    .end local v6    # "rowid":J
    .local v2, "focusedMessageUri":Landroid/net/Uri;
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asUri(Landroid/database/Cursor;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v8, "Failed to get uri from cursor"

    invoke-static {v8, v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 339
    return-object v9
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 170
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030042

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/SearchListItemView;

    .line 172
    .local v1, "v":Lcom/sonyericsson/conversations/ui/SearchListItemView;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/SearchListItemView;->setTextDirection(I)V

    .line 173
    return-object v1
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->mSearchString:Ljava/lang/String;

    .line 158
    return-void
.end method
