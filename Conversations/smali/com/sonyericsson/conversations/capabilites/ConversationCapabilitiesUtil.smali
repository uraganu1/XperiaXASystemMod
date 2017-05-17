.class public Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;
.super Ljava/lang/Object;
.source "ConversationCapabilitiesUtil.java"


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImContactNumbers(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "imContactNumbers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 39
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    .end local v1    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    return-object v0
.end method

.method public static isConversationAbleToUseFallBackTechnology(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)Z
    .locals 11
    .param p0, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 137
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    .line 138
    .local v1, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v6

    .line 139
    .local v6, "permissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v3

    .line 140
    .local v3, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v2

    .line 141
    .local v2, "contactsApi":Lcom/sonymobile/jms/contact/ImContactApi;
    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    .line 143
    :cond_0
    return v8

    .line 141
    :cond_1
    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v3}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v7

    sget-object v9, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v7, v9, :cond_0

    .line 145
    invoke-static {}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v7

    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 170
    :cond_2
    return v8

    .line 147
    :pswitch_0
    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAbleToUseGroupFallbackTechnology(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v7

    return v7

    .line 151
    :pswitch_1
    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v4

    .line 152
    .local v4, "imOne2OneConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    invoke-interface {v6, v4}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAbleToUseOne2OneFallbackTechnology(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    invoke-interface {v2, v4}, Lcom/sonymobile/jms/contact/ImContactApi;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v7

    .line 152
    :goto_0
    return v7

    :cond_3
    move v7, v8

    goto :goto_0

    .line 157
    .end local v4    # "imOne2OneConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    :pswitch_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    .line 158
    .local v5, "participantsListSize":I
    if-ne v5, v10, :cond_6

    .line 159
    invoke-static {p1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->isValidImNumbers(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 160
    return v8

    .line 162
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v7

    .line 163
    invoke-interface {v6, v7}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAbleToUseOne2OneFallbackTechnology(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 165
    invoke-static {v0}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/sonymobile/jms/contact/ImContactApi;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v8

    .line 163
    :cond_5
    return v8

    .line 166
    .end local v0    # "address":Ljava/lang/String;
    :cond_6
    if-le v5, v10, :cond_2

    .line 167
    return v8

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isConversationImFileMessageCapable(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)Z
    .locals 9
    .param p0, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 95
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 96
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v3

    .line 97
    .local v3, "imPermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v2

    .line 98
    .local v2, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 100
    :cond_0
    return v7

    .line 99
    :cond_1
    invoke-interface {v2}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v5, v6, :cond_0

    .line 102
    invoke-static {}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v5

    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 124
    :cond_2
    return v7

    .line 104
    :pswitch_0
    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToSendGroupFileMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v5

    return v5

    .line 107
    :pswitch_1
    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToSendOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v5

    return v5

    .line 111
    :pswitch_2
    invoke-static {p1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->isValidImNumbers(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 112
    return v7

    .line 114
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 116
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-static {v5}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v4

    .line 117
    .local v4, "one2OneConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    invoke-interface {v3, v4}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToSendOne2OneFileMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v5

    return v5

    .line 119
    .end local v4    # "one2OneConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 120
    invoke-static {p1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->getImContactNumbers(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 121
    .local v1, "imContactNumbers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {v3, v1}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToSendGroupFileMessageTo(Ljava/util/Collection;)Z

    move-result v5

    return v5

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isConversationImTextMessageCapable(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)Z
    .locals 9
    .param p0, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 54
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v3

    .line 55
    .local v3, "imPermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v2

    .line 56
    .local v2, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 58
    :cond_0
    return v7

    .line 57
    :cond_1
    invoke-interface {v2}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v5, v6, :cond_0

    .line 60
    invoke-static {}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v5

    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 82
    :cond_2
    return v7

    .line 62
    :pswitch_0
    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToSendGroupTextMessageTo(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v5

    return v5

    .line 65
    :pswitch_1
    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToSendOne2OneTextMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v5

    return v5

    .line 68
    :pswitch_2
    invoke-static {p1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->isValidImNumbers(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 69
    return v7

    .line 72
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v5}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v4

    .line 75
    .local v4, "one2OneConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    invoke-interface {v3, v4}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToSendOne2OneTextMessageTo(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z

    move-result v5

    return v5

    .line 77
    .end local v4    # "one2OneConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 78
    invoke-static {p1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->getImContactNumbers(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 79
    .local v1, "imContactNumbers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {v3, v1}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToSendGroupTextMessageTo(Ljava/util/Collection;)Z

    move-result v5

    return v5

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static isValidImNumbers(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "participant$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 28
    .local v0, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    const/4 v2, 0x0

    return v2

    .line 32
    .end local v0    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
