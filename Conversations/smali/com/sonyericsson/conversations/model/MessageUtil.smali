.class public Lcom/sonyericsson/conversations/model/MessageUtil;
.super Ljava/lang/Object;
.source "MessageUtil.java"


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

.field private static synthetic -com_sonyericsson_conversations_model_MessageProjection$MessageProjectionTypeSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues:[I

.field private static final COLUMN_MMS_ID:[Ljava/lang/String;

.field private static final COLUMN_READ:[Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final READ_REPORT_ID_COLUMNS:[Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

    const/16 v2, 0x11

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

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method private static synthetic -getcom_sonyericsson_conversations_model_MessageProjection$MessageProjectionTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonyericsson_conversations_model_MessageProjection$MessageProjectionTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonyericsson_conversations_model_MessageProjection$MessageProjectionTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->values()[Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->MMS:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->SMS:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonyericsson_conversations_model_MessageProjection$MessageProjectionTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->DOWNLOADED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_DOWNLOAD:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_INVITATION_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->INVITATION_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DISPLAYED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->FAILED_DISPLAY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/model/MessageUtil;->DEBUG:Z

    .line 88
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "read"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->COLUMN_READ:[Ljava/lang/String;

    .line 90
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "m_id"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->COLUMN_MMS_ID:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "m_id"

    aput-object v3, v0, v2

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageUtil;->READ_REPORT_ID_COLUMNS:[Ljava/lang/String;

    .line 75
    return-void

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateImageSize(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 548
    invoke-static {p1, p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 549
    .local v0, "imageToBeAddedSize":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v1

    .line 551
    .local v1, "maxMessageSize":I
    if-ge v0, v1, :cond_0

    .end local v0    # "imageToBeAddedSize":I
    :goto_0
    return v0

    .restart local v0    # "imageToBeAddedSize":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static createKey(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Ljava/lang/String;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "projectionType"    # Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .prologue
    .line 451
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getMessageType(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "sms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/conversations/model/MessageUtil;->getIdFromCursor(Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 454
    :cond_0
    const-string/jumbo v2, "mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/sonyericsson/conversations/model/MessageUtil;->getIdFromCursor(Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 456
    :cond_1
    const-string/jumbo v2, "joyn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 459
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v2, Ljava/lang/StringBuilder;

    .line 462
    const-string/jumbo v3, "Failed to get create key from cursor of type "

    .line 461
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 464
    const/4 v2, 0x0

    return-object v2

    .line 467
    .end local v0    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message type not valid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createMediaModel(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/MediaModel;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-static/range {p2 .. p2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MessageUtil;->calculateImageSize(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v7

    .line 526
    .local v7, "imageSize":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v5

    const/4 v6, 0x1

    .line 527
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 525
    invoke-static/range {v2 .. v9}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;

    move-result-object v10

    .line 528
    .local v10, "resizedUri":Landroid/net/Uri;
    if-eqz v10, :cond_0

    .line 529
    new-instance v8, Lcom/android/mms/model/ImageModel;

    .line 530
    sget-object v14, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 529
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;ZZLcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .line 544
    .end local v7    # "imageSize":I
    .end local v10    # "resizedUri":Landroid/net/Uri;
    .local v8, "model":Lcom/android/mms/model/MediaModel;
    :goto_0
    return-object v8

    .line 532
    .end local v8    # "model":Lcom/android/mms/model/MediaModel;
    .restart local v7    # "imageSize":I
    .restart local v10    # "resizedUri":Landroid/net/Uri;
    :cond_0
    new-instance v8, Lcom/android/mms/model/ImageModel;

    .line 533
    sget-object v17, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 532
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v8

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;ZZLcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .restart local v8    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 535
    .end local v7    # "imageSize":I
    .end local v8    # "model":Lcom/android/mms/model/MediaModel;
    .end local v10    # "resizedUri":Landroid/net/Uri;
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    new-instance v8, Lcom/android/mms/model/VideoModel;

    .line 537
    sget-object v2, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 536
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1, v3, v2}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .restart local v8    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 538
    .end local v8    # "model":Lcom/android/mms/model/MediaModel;
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 539
    new-instance v8, Lcom/android/mms/model/AudioModel;

    sget-object v2, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .restart local v8    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 541
    .end local v8    # "model":Lcom/android/mms/model/MediaModel;
    :cond_3
    new-instance v8, Lcom/sonyericsson/conversations/model/AttachmentModel;

    .line 542
    sget-object v2, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .restart local v8    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_0
.end method

.method private static createSlideShow(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 14
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-static {p0, v1}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v11

    .line 145
    .local v11, "ssm":Lcom/android/mms/model/SlideshowModel;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v10, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v1

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-eq v1, v5, :cond_0

    .line 147
    const-string/jumbo v1, "Not a file message"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 148
    return-object v11

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 151
    .local v9, "fileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-virtual {v9}, Lcom/sonymobile/jms/message/ImFileMessage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "mimeType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v9}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    .line 154
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v9}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v12

    long-to-int v6, v12

    .line 157
    .local v6, "fileSize":I
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    new-instance v0, Lcom/android/mms/model/VideoModel;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V

    .line 166
    .local v0, "model":Lcom/android/mms/model/MediaModel;
    :goto_0
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lcom/android/mms/model/SlideModel;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v10}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/List;)V

    invoke-virtual {v11, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 175
    .end local v0    # "model":Lcom/android/mms/model/MediaModel;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "fileSize":I
    :goto_1
    return-object v11

    .line 159
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v6    # "fileSize":I
    :cond_1
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    new-instance v0, Lcom/android/mms/model/ImageModel;

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .restart local v0    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 161
    .end local v0    # "model":Lcom/android/mms/model/MediaModel;
    :cond_2
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    new-instance v0, Lcom/android/mms/model/AudioModel;

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .restart local v0    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 164
    .end local v0    # "model":Lcom/android/mms/model/MediaModel;
    :cond_3
    new-instance v0, Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v0    # "model":Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 168
    .end local v0    # "model":Lcom/android/mms/model/MediaModel;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "fileSize":I
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Lcom/android/mms/UnsupportContentTypeException;
    const v1, 0x7f0b013d

    .line 170
    const/4 v5, 0x1

    .line 169
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 171
    .end local v7    # "e":Lcom/android/mms/UnsupportContentTypeException;
    :catch_1
    move-exception v8

    .local v8, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    goto :goto_1
.end method

.method public static delete(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;)V
    .locals 4
    .param p0, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p1, "messageKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-static {p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getTypeFromKey(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 504
    :goto_0
    return-void

    .line 507
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getApis()Lcom/sonymobile/jms/ImApis;

    move-result-object v0

    .line 508
    .local v0, "imApis":Lcom/sonymobile/jms/ImApis;
    invoke-interface {v0}, Lcom/sonymobile/jms/ImApis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    .line 509
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 508
    invoke-interface {v2, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImUserMessageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "msgId":Ljava/lang/String;
    invoke-interface {v0}, Lcom/sonymobile/jms/ImApis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    .line 511
    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    .line 510
    invoke-interface {v2, v3, v1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->deleteImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static exceedFileSizeMaximum(Lcom/sonymobile/jms/file/ImFileApi;Ljava/util/List;)Z
    .locals 3
    .param p0, "imFileApi"    # Lcom/sonymobile/jms/file/ImFileApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/file/ImFileApi;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fileUri$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 658
    .local v0, "fileUri":Landroid/net/Uri;
    invoke-interface {p0, v0}, Lcom/sonymobile/jms/file/ImFileApi;->isFileBiggerThanMaxSize(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    const/4 v2, 0x1

    return v2

    .line 662
    .end local v0    # "fileUri":Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static exceedFileSizeWarning(Lcom/sonymobile/jms/file/ImFileApi;Ljava/util/List;)Z
    .locals 3
    .param p0, "imFileApi"    # Lcom/sonymobile/jms/file/ImFileApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/file/ImFileApi;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fileUri$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 648
    .local v0, "fileUri":Landroid/net/Uri;
    invoke-interface {p0, v0}, Lcom/sonymobile/jms/file/ImFileApi;->isFileBiggerThanWarnSize(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    const/4 v2, 0x1

    return v2

    .line 652
    .end local v0    # "fileUri":Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/Message;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "projectionType"    # Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .prologue
    .line 190
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/MessageUtil;->getMessageType(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "msgType":Ljava/lang/String;
    const-string/jumbo v2, "sms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v2

    return-object v2

    .line 194
    :cond_0
    const-string/jumbo v2, "mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v2

    return-object v2

    .line 196
    :cond_1
    const-string/jumbo v2, "joyn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v0

    .line 198
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/model/MessageUtil;->putSlideshowIntoMessageIfNeeded(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)V

    .line 199
    return-object v0

    .line 201
    .end local v0    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message type not valid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-static {p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getType(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 226
    return-object v2

    .line 215
    :pswitch_0
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v1

    return-object v1

    .line 217
    :pswitch_1
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v1

    return-object v1

    .line 219
    :pswitch_2
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v0

    .line 220
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    if-eqz v0, :cond_0

    .line 221
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/model/MessageUtil;->putSlideshowIntoMessageIfNeeded(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)V

    .line 223
    :cond_0
    return-object v0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getIdFromCursor(Landroid/database/Cursor;)J
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 579
    const-string/jumbo v1, "REAL_ID_COLUMN_NAME"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 580
    .local v0, "colIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 581
    const-string/jumbo v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 583
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getMessageType(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Ljava/lang/String;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "projectionType"    # Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .prologue
    .line 112
    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageUtil;->-getcom_sonyericsson_conversations_model_MessageProjection$MessageProjectionTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown projection type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :pswitch_0
    const-string/jumbo v0, "sms"

    .line 133
    .local v0, "msgType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 118
    .end local v0    # "msgType":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "mms"

    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0    # "msgType":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "transport_type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "typeColIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 124
    const-string/jumbo v0, "joyn"

    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 126
    .end local v0    # "msgType":Ljava/lang/String;
    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNewestImUserMessageInConversation(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/model/JoynMessage;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v8, 0x0

    .line 681
    const/4 v3, 0x0

    .line 682
    .local v3, "imCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 684
    .local v5, "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageUtil;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v6

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v6, :pswitch_data_0

    .line 736
    .end local v3    # "imCursor":Landroid/database/Cursor;
    .end local v5    # "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 737
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 741
    :cond_1
    :goto_1
    return-object v5

    .line 686
    .restart local v3    # "imCursor":Landroid/database/Cursor;
    .restart local v5    # "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v6

    .line 690
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v7

    .line 686
    invoke-interface {v6, v7}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Landroid/database/Cursor;

    move-result-object v3

    .line 691
    .local v3, "imCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 692
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    .line 693
    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v5

    .local v5, "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    goto :goto_0

    .line 697
    .local v3, "imCursor":Landroid/database/Cursor;
    .local v5, "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v6

    .line 698
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v7

    .line 697
    invoke-interface {v6, v7}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveMessages(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Landroid/database/Cursor;

    move-result-object v3

    .line 699
    .local v3, "imCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 700
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    .line 702
    :goto_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v4

    .line 704
    .local v4, "imMsgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    sget-object v6, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v6, v4}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 705
    sget-object v6, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v6, v4}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 704
    if-eqz v6, :cond_3

    .line 707
    :cond_2
    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v5

    .local v5, "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    goto :goto_0

    .line 710
    .local v5, "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_1
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 729
    .end local v3    # "imCursor":Landroid/database/Cursor;
    .end local v4    # "imMsgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    :catch_0
    move-exception v1

    .line 732
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Terminal "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 733
    const-string/jumbo v7, " occurred during execution in background thread!"

    .line 732
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 731
    invoke-static {v6, v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    if-eqz v3, :cond_1

    .line 737
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 722
    .end local v1    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_1
    move-exception v2

    .line 726
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Terminal "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 727
    const-string/jumbo v7, " occurred during execution in background thread!"

    .line 726
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 725
    invoke-static {v6, v2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 736
    if-eqz v3, :cond_1

    .line 737
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 716
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/OperationCanceledException;
    if-eqz v3, :cond_4

    .line 737
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 721
    :cond_4
    return-object v8

    .line 735
    .end local v0    # "e":Landroid/os/OperationCanceledException;
    :catchall_0
    move-exception v6

    .line 736
    if-eqz v3, :cond_5

    .line 737
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_5
    throw v6

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNewestMessageInThread(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/model/Message;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 402
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/sonyericsson/conversations/model/MessageUtil;->getNewestXmsMessageInThread(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 403
    .local v1, "xmsMessage":Lcom/sonyericsson/conversations/model/Message;
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getNewestImUserMessageInConversation(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v0

    .line 404
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/Message;
    const-wide/16 v4, 0x0

    .line 405
    .local v4, "xmsTime":J
    const-wide/16 v2, 0x0

    .line 406
    .local v2, "joynTime":J
    if-eqz v1, :cond_0

    .line 407
    iget-wide v4, v1, Lcom/sonyericsson/conversations/model/Message;->date:J

    .line 409
    :cond_0
    if-eqz v0, :cond_1

    .line 410
    iget-wide v2, v0, Lcom/sonyericsson/conversations/model/Message;->date:J

    .line 412
    :cond_1
    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 413
    return-object v0

    .line 415
    :cond_2
    return-object v1
.end method

.method public static getNewestXmsMessageInThread(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Message;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    const/4 v3, 0x0

    .line 361
    const/4 v8, 0x0

    .line 362
    .local v8, "message":Lcom/sonyericsson/conversations/model/Message;
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    .line 363
    return-object v3

    .line 365
    :cond_0
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 366
    const-string/jumbo v2, "semc_ext"

    const-string/jumbo v4, "true"

    .line 365
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 367
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 368
    return-object v3

    .line 370
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 371
    sget-object v2, Lcom/sonyericsson/conversations/model/MessageProjection;->COMMON_PROJECTION:[Ljava/lang/String;

    .line 372
    const-string/jumbo v5, "normalized_date DESC LIMIT 1"

    move-object v4, v3

    .line 370
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 375
    return-object v3

    .line 378
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    invoke-static {p0, v6, v0}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/Message;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 384
    .end local v8    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 388
    return-object v8

    .line 381
    .restart local v8    # "message":Lcom/sonyericsson/conversations/model/Message;
    :catch_0
    move-exception v7

    .line 384
    .local v7, "ie":Ljava/lang/IllegalStateException;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 382
    return-object v3

    .line 383
    .end local v7    # "ie":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    .line 384
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    throw v0
.end method

.method public static getNumberOfXmsMessages(Landroid/content/Context;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 425
    const/4 v6, 0x0

    .line 426
    .local v6, "xmsCount":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "sel":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 429
    const-string/jumbo v5, "total_count"

    aput-object v5, v2, v8

    move-object v5, v4

    .line 428
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 430
    .local v7, "xmsCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 432
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 436
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_1
    return v6

    .line 435
    :catchall_0
    move-exception v1

    .line 436
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 435
    throw v1
.end method

.method public static getThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 306
    const-wide/16 v8, -0x1

    .line 308
    .local v8, "threadId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "thread_id"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 311
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 313
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 317
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_1
    return-wide v8

    .line 316
    :catchall_0
    move-exception v0

    .line 317
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 316
    throw v0
.end method

.method public static getThreadIdForMessage(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 752
    const-wide/16 v8, -0x1

    .line 753
    .local v8, "id":J
    const/4 v6, 0x0

    .line 755
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    .line 756
    const-string/jumbo v0, "thread_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 758
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 759
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    const-string/jumbo v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 761
    .local v7, "index":I
    if-gez v7, :cond_1

    .line 762
    const-wide/16 v0, -0x1

    .line 767
    if-eqz v6, :cond_0

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 762
    :cond_0
    return-wide v0

    .line 764
    :cond_1
    :try_start_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 767
    .end local v7    # "index":I
    :cond_2
    if-eqz v6, :cond_3

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_3
    return-wide v8

    .line 766
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 767
    if-eqz v6, :cond_4

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 766
    :cond_4
    throw v0
.end method

.method public static getType(Landroid/net/Uri;)I
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 238
    if-eqz p0, :cond_3

    .line 239
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 241
    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const/4 v1, 0x0

    return v1

    .line 243
    :cond_0
    const-string/jumbo v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const/4 v1, 0x1

    return v1

    .line 245
    :cond_1
    invoke-static {v0}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->isImMessageAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    const/4 v1, 0x2

    return v1

    .line 248
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid message authority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 252
    .end local v0    # "authority":Ljava/lang/String;
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public static getTypeFromKey(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MessageUtil;->getType(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static getValidSubscriptionIdForMessage(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 802
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v7

    .line 803
    .local v7, "subscriptionId":I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "sub_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 804
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 806
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 807
    return v7

    .line 811
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    const-string/jumbo v0, "sub_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 813
    sget-boolean v0, Lcom/sonyericsson/conversations/model/MessageUtil;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subscription id in db: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 816
    return v7

    .line 819
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 821
    return v7

    .line 818
    :catchall_0
    move-exception v0

    .line 819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 818
    throw v0
.end method

.method public static hasDraftWithAttachments(Lcom/sonyericsson/conversations/conversation/ConversationId;)Z
    .locals 4
    .param p0, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v2, 0x0

    .line 832
    if-nez p0, :cond_0

    .line 833
    return v2

    .line 835
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v1

    .line 837
    .local v1, "draftsApi":Lcom/sonyericsson/conversations/draft/DraftsApi;
    invoke-interface {v1, p0}, Lcom/sonyericsson/conversations/draft/DraftsApi;->getLatestDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v0

    .line 838
    .local v0, "draft":Lcom/sonyericsson/conversations/draft/Draft;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    .line 839
    :cond_1
    return v2

    .line 841
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static imFileMessageDeliveryStatus2DeliveryStatus(Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;)I
    .locals 3
    .param p0, "imFileMessageDeliveryStatus"    # Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    .prologue
    const/4 v2, 0x3

    .line 624
    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageUtil;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 634
    const-string/jumbo v0, "Message status: "

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 635
    const-string/jumbo v1, " can not be mapped to a delivery status!"

    .line 634
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    .line 636
    sget-boolean v0, Lcom/sonyericsson/conversations/model/MessageUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 638
    const-string/jumbo v2, " can not be mapped to a delivery status!"

    .line 637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 629
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 632
    :pswitch_2
    return v2

    .line 640
    :cond_0
    return v2

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imTextMessageDeliveryStatus2DeliveryStatus(Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;)I
    .locals 3
    .param p0, "imTextMessageDeliveryStatus"    # Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    .prologue
    const/4 v2, 0x3

    .line 595
    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageUtil;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 604
    const-string/jumbo v0, "Message status: "

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 605
    const-string/jumbo v1, " can not be mapped to a delivery status!"

    .line 604
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    .line 606
    sget-boolean v0, Lcom/sonyericsson/conversations/model/MessageUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 608
    const-string/jumbo v2, " can not be mapped to a delivery status!"

    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 600
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 602
    :pswitch_2
    return v2

    .line 610
    :cond_0
    return v2

    .line 595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static isForwardable(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 4
    .param p0, "msg"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v3, 0x1

    .line 263
    instance-of v1, p0, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 264
    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 265
    .local v0, "joynMsg":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v1, v2, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isReceivedMessage()Z

    move-result v1

    .line 265
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-eq v1, v2, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-eq v1, v2, :cond_0

    .line 269
    const/4 v1, 0x0

    return v1

    .line 271
    :cond_0
    return v3

    .line 273
    .end local v0    # "joynMsg":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_1
    instance-of v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_2

    .line 274
    check-cast p0, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p0    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isForwardable(Lcom/sonyericsson/conversations/model/MmsMessage;)Z

    move-result v1

    return v1

    .line 276
    .restart local p0    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_2
    return v3
.end method

.method public static isJoynMessageType(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1006
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getMessageType(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "messageType":Ljava/lang/String;
    const-string/jumbo v1, "joyn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isSupportedMmsContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    return v6

    .line 284
    :cond_0
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isSupportedImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    return v7

    .line 287
    :cond_1
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 288
    const-string/jumbo v3, "text/x-vCard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 287
    if-nez v3, :cond_2

    .line 289
    const-string/jumbo v3, "text/x-vCalendar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 287
    if-eqz v3, :cond_3

    .line 290
    :cond_2
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 291
    .local v0, "fileSize":J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gez v3, :cond_3

    .line 292
    return v7

    .line 295
    .end local v0    # "fileSize":J
    :cond_3
    return v6
.end method

.method public static markMessageAsRead(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonyericsson/conversations/model/JoynMessage;)V
    .locals 3
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    .line 557
    .local v0, "msgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageUtil;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    .line 565
    const-string/jumbo v2, "Can only mark text & file messages \'"

    .line 564
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 566
    const-string/jumbo v2, "\' as read."

    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 555
    :goto_0
    return-void

    .line 560
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v1

    .line 561
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-interface {v1, p0, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi;->markImUserMessageAsRead(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static markXmsAsReadAndSendReadReport(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1017
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1018
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/MessageUtil;->getType(Landroid/net/Uri;)I

    move-result v0

    .line 1019
    .local v0, "messageType":I
    packed-switch v0, :pswitch_data_0

    .line 1032
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1016
    return-void

    .line 1021
    :pswitch_0
    const-string/jumbo v2, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1023
    invoke-static {p1, p0}, Lcom/sonyericsson/conversations/model/MessageUtil;->sendReadReport(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 1026
    :pswitch_1
    const-string/jumbo v2, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1019
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static markXmsMessagesAsRead(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 855
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 856
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 857
    .local v7, "cv":Landroid/content/ContentValues;
    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 858
    .local v4, "threadId":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 859
    .local v8, "updateCount":I
    const-string/jumbo v1, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/conversations/model/MessageUtil;->COLUMN_READ:[Ljava/lang/String;

    .line 869
    const-string/jumbo v3, "thread_id = ? AND read = 0"

    const/4 v5, 0x0

    .line 868
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 870
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 871
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "thread_id = ? AND read = 0"

    invoke-virtual {v0, v1, v7, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v1

    add-int/lit8 v8, v1, 0x0

    .line 874
    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v1, v9

    :goto_0
    if-eqz v1, :cond_5

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    throw v2

    :catch_2
    move-exception v5

    if-nez v2, :cond_3

    move-object v2, v5

    goto :goto_2

    :cond_3
    if-eq v2, v5, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v1

    .line 877
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    const-string/jumbo v3, "thread_id = ? AND read = 0 AND m_type <> 130"

    .line 878
    .local v3, "mmsQueryString":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_4
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/conversations/model/MessageUtil;->COLUMN_READ:[Ljava/lang/String;

    .line 879
    const/4 v5, 0x0

    .line 878
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 880
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 882
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->sendReadReport(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 886
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    add-int/2addr v8, v1

    .line 888
    :cond_6
    if-eqz v6, :cond_7

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_3
    if-eqz v9, :cond_b

    throw v9

    :catch_3
    move-exception v9

    goto :goto_3

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_4
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    move-object v9, v1

    move-object v1, v2

    :goto_4
    if-eqz v6, :cond_8

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_8
    :goto_5
    if-eqz v9, :cond_a

    throw v9

    :catch_5
    move-exception v2

    if-nez v9, :cond_9

    move-object v9, v2

    goto :goto_5

    :cond_9
    if-eq v9, v2, :cond_8

    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    throw v1

    .line 889
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_b
    return v8

    .line 888
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    goto :goto_4

    .line 874
    .end local v3    # "mmsQueryString":Ljava/lang/String;
    :catchall_3
    move-exception v1

    move-object v2, v9

    goto :goto_1
.end method

.method private static putSlideshowIntoMessageIfNeeded(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->createSlideShow(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->setSlideshowModel(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0
.end method

.method private static sendReadReport(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 960
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->isReadReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 967
    .local v5, "mmsId":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 968
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/conversations/model/MessageUtil;->COLUMN_MMS_ID:[Ljava/lang/String;

    .line 969
    const-string/jumbo v4, "msg_box = 1 AND m_type = 132 AND read = 0 AND rr = 128 AND _id = ?"

    const/4 v6, 0x0

    move-object v0, p0

    .line 967
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 970
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    :try_start_1
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 975
    .local v10, "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    if-nez v10, :cond_6

    .line 997
    if-eqz v8, :cond_0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    if-eqz v11, :cond_5

    throw v11

    .line 962
    .end local v5    # "mmsId":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_1
    return-void

    .line 997
    .restart local v5    # "mmsId":[Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_2
    if-eqz v8, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    throw v11

    :catch_0
    move-exception v11

    goto :goto_1

    .line 971
    :cond_4
    return-void

    .line 997
    .restart local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    :catch_1
    move-exception v11

    goto :goto_0

    .line 976
    :cond_5
    return-void

    .line 978
    :cond_6
    :try_start_4
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 981
    .local v7, "address":Ljava/lang/String;
    if-nez v7, :cond_9

    .line 997
    if-eqz v8, :cond_7

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    :goto_2
    if-eqz v11, :cond_8

    throw v11

    :catch_2
    move-exception v11

    goto :goto_2

    .line 982
    :cond_8
    return-void

    .line 986
    :cond_9
    :try_start_6
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 990
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubscriptionId()I

    move-result v1

    const/16 v2, 0x80

    .line 990
    invoke-static {p0, v7, v0, v2, v1}, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 997
    .end local v7    # "address":Ljava/lang/String;
    .end local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    :goto_3
    if-eqz v8, :cond_a

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_a
    :goto_4
    if-eqz v11, :cond_e

    throw v11

    .line 993
    :catch_3
    move-exception v9

    .line 995
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error while sending read report for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 997
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_5
    if-eqz v8, :cond_b

    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    :cond_b
    :goto_6
    if-eqz v1, :cond_d

    throw v1

    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_5
    move-exception v11

    goto :goto_4

    .end local v8    # "c":Landroid/database/Cursor;
    :catch_6
    move-exception v2

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_6

    :cond_c
    if-eq v1, v2, :cond_b

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    throw v0

    .line 959
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_e
    return-void

    .line 997
    .end local v8    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v11

    goto :goto_5
.end method

.method private static sendReadReport(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 901
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 902
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->isReadReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 907
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 908
    .local v5, "threadId":[Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v9, 0x0

    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 909
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/conversations/model/MessageUtil;->READ_REPORT_ID_COLUMNS:[Ljava/lang/String;

    .line 910
    const-string/jumbo v4, "msg_box = 1 AND m_type = 132 AND read = 0 AND rr = 128 AND thread_id = ?"

    const/4 v6, 0x0

    move-object v0, p0

    .line 908
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 912
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 915
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v11, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v8, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v12, "subIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 921
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v10

    .line 923
    .local v10, "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    if-nez v10, :cond_7

    .line 936
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 937
    if-nez v10, :cond_a

    .line 948
    if-eqz v9, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_1
    if-eqz v13, :cond_9

    throw v13

    .line 903
    .end local v5    # "threadId":[Ljava/lang/String;
    .end local v8    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v11    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "subIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    return-void

    .line 948
    .restart local v5    # "threadId":[Ljava/lang/String;
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_4
    if-eqz v9, :cond_5

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    if-eqz v13, :cond_6

    throw v13

    :catch_0
    move-exception v13

    goto :goto_2

    .line 913
    :cond_6
    return-void

    .line 926
    .restart local v8    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    .restart local v11    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "subIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    :try_start_3
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 928
    .local v7, "address":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 933
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 948
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v11    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "subIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_3
    if-eqz v9, :cond_8

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_8
    :goto_4
    if-eqz v1, :cond_e

    throw v1

    .restart local v8    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    .restart local v11    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "subIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_2
    move-exception v13

    goto :goto_1

    .line 938
    :cond_9
    return-void

    .line 940
    :cond_a
    :try_start_6
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_b

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending read reports messages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 942
    const-string/jumbo v1, " subId: "

    .line 941
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 942
    invoke-virtual {v10}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubscriptionId()I

    move-result v1

    .line 941
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 947
    :cond_b
    const/16 v0, 0x80

    .line 946
    invoke-static {p0, v8, v11, v0, v12}, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 948
    if-eqz v9, :cond_c

    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_c
    :goto_5
    if-eqz v13, :cond_f

    throw v13

    :catch_3
    move-exception v13

    goto :goto_5

    .end local v8    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v11    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "subIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_4
    move-exception v2

    if-nez v1, :cond_d

    move-object v1, v2

    goto :goto_4

    :cond_d
    if-eq v1, v2, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_e
    throw v0

    .line 900
    .restart local v8    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    .restart local v11    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "subIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_f
    return-void

    .line 948
    .end local v8    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v11    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "subIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v1, v13

    goto :goto_3
.end method

.method public static updateMessageSize(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "messageSize"    # J

    .prologue
    const/4 v4, 0x0

    .line 673
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 674
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 675
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "m_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 676
    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method public static updateMmsThreadId(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 781
    new-instance v0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v8

    .line 782
    .local v8, "senderParticipant":Lcom/sonyericsson/conversations/model/Participant;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 784
    .local v7, "sender":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v6

    .line 787
    .local v6, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v6, p0, v7}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v10

    .line 788
    .local v10, "threadId":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 789
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "thread_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 790
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateSubscriptionId(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "subscriptionId"    # I

    .prologue
    const/4 v4, 0x0

    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 667
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 668
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "sub_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 665
    return-void
.end method
