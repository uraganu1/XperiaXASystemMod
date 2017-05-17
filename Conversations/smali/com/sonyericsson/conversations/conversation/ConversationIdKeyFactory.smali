.class public Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;
.super Ljava/lang/Object;
.source "ConversationIdKeyFactory.java"


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createConversationIdKeyJoynGroup(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;
    .locals 2
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "chat-group:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createConversationIdKeyJoynOne2One(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;
    .locals 5
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 78
    invoke-interface {p0}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "number":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatNumberToKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    .local v1, "id":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "one2one:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 82
    .end local v1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException;
    move-object v1, v2

    .restart local v1    # "id":Ljava/lang/String;
    goto :goto_0
.end method

.method private static createConversationIdKeyXms(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;)Ljava/lang/String;
    .locals 8
    .param p0, "threadIdInfo"    # Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "group":Z
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 92
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 94
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v4

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getThreadId()J

    move-result-wide v6

    .line 95
    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getThreadIdInfoFromThreadId(J)Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;

    move-result-object p0

    .line 99
    :cond_0
    if-nez p0, :cond_1

    .line 100
    const-string/jumbo v4, "invalid-conversation-id"

    return-object v4

    .line 104
    .end local v0    # "apis":Lcom/sonyericsson/conversations/Apis;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "id":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xms-group:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 109
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 119
    .restart local v3    # "id":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "one2one:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 113
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatNumberToKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "id":Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v3    # "id":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "id":Ljava/lang/String;
    goto :goto_0
.end method

.method private static forIndeterminateConversation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "indeterminate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromConversationSources(Lcom/sonyericsson/conversations/conversation/ConversationId$Type;JLcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .param p1, "threadId"    # J
    .param p3, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 43
    .local v0, "threadIdInfo":Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;
    invoke-static {p0, v0, p3}, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->fromConversationSources(Lcom/sonyericsson/conversations/conversation/ConversationId$Type;Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromConversationSources(Lcom/sonyericsson/conversations/conversation/ConversationId$Type;Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .param p1, "threadIdInfo"    # Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne p2, v0, :cond_0

    .line 51
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->forIndeterminateConversation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 56
    const-string/jumbo v0, "sim:all"

    return-object v0

    .line 59
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Couldn\'t create ConversationId for conversation type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "invalid-conversation-id"

    return-object v0

    .line 61
    :pswitch_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->createConversationIdKeyXms(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :pswitch_1
    invoke-static {p2}, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->createConversationIdKeyJoynOne2One(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :pswitch_2
    invoke-static {p2}, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->createConversationIdKeyJoynGroup(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
