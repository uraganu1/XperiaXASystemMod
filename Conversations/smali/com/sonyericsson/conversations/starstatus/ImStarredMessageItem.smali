.class public Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;
.super Ljava/lang/Object;
.source "ImStarredMessageItem.java"

# interfaces
.implements Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;


# static fields
.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I


# instance fields
.field private mBodyText:Ljava/lang/String;

.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 34
    .local v1, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->mUri:Landroid/net/Uri;

    .line 35
    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromImConversationIdOnly(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 37
    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v2

    .line 38
    .local v2, "messageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    invoke-static {}, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v4, "Failed to get body text from starred im message of type \'"

    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 31
    .end local v2    # "messageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    :goto_0
    return-void

    .line 40
    .restart local v2    # "messageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    :pswitch_0
    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImFileMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->mBodyText:Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v2    # "messageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v3, "Failed to starred message item from cursor!"

    invoke-static {v3, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 43
    .end local v0    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v2    # "messageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    :pswitch_1
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImTextMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->mBodyText:Ljava/lang/String;
    :try_end_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/starstatus/StarredMessageItem;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 28
    new-instance v0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method public getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->mBodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/conversations/starstatus/ImStarredMessageItem;->mUri:Landroid/net/Uri;

    return-object v0
.end method
