.class public Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;
.super Landroid/widget/RelativeLayout;
.source "ContentSystemMessage.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContent;


# static fields
.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private getSystemMessageString(Lcom/sonyericsson/conversations/model/JoynMessage;)Ljava/lang/StringBuilder;
    .locals 12
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 49
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v0

    .line 50
    .local v0, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v2

    .line 51
    .local v2, "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v5

    .line 52
    .local v5, "imMessageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v6, "systemMessageText":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v5}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown message event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 89
    return-object v6

    .line 55
    :pswitch_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;

    .line 57
    .local v3, "imJoinedChatSystemMessage":Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v7

    .line 58
    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;->getLocalTimestamp()J

    move-result-wide v8

    .line 57
    invoke-virtual {v7, v8, v9, v10}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 59
    const-string/jumbo v8, ", "

    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;->getAffectedContact()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/sonymobile/jms/contact/ImContactApi;->isMe(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 62
    const v8, 0x7f0b01ec

    .line 61
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    return-object v7

    .line 65
    :cond_0
    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;->getAffectedContact()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-virtual {v0, v7}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    .line 68
    aput-object v1, v8, v10

    .line 67
    const v9, 0x7f0b01eb

    .line 66
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    return-object v7

    .line 71
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "imJoinedChatSystemMessage":Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;
    :pswitch_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;

    .line 73
    .local v4, "imLeftChatSystemMessage":Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v7

    .line 74
    invoke-virtual {v4}, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;->getLocalTimestamp()J

    move-result-wide v8

    .line 73
    invoke-virtual {v7, v8, v9, v10}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 74
    const-string/jumbo v8, ", "

    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;

    invoke-virtual {v7}, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;->getAffectedContact()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/sonymobile/jms/contact/ImContactApi;->isMe(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 78
    const v8, 0x7f0b01ee

    .line 77
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    return-object v7

    .line 81
    :cond_1
    invoke-virtual {v4}, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;->getAffectedContact()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1    # "displayName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    .line 85
    aput-object v1, v8, v10

    .line 84
    const v9, 0x7f0b01ed

    .line 83
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    return-object v7

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 44
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    const v2, 0x7f0d010c

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, "textView":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/ContentSystemMessage;->getSystemMessageString(Lcom/sonyericsson/conversations/model/JoynMessage;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
