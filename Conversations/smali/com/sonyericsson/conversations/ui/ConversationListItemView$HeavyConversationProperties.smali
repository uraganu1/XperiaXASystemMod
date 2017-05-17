.class public Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;
.super Lcom/sonymobile/forklift/HeavyProperty;
.source "ConversationListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeavyConversationProperties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/forklift/HeavyProperty",
        "<",
        "Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mRecipientIds:Ljava/lang/String;

.field private mSnippetType:I


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "recipientIds"    # Ljava/lang/String;
    .param p5, "snippetType"    # I

    .prologue
    .line 214
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/forklift/HeavyProperty;-><init>(Ljava/lang/Object;)V

    .line 215
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 216
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mAddress:Ljava/lang/String;

    .line 217
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mRecipientIds:Ljava/lang/String;

    .line 218
    iput p5, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mSnippetType:I

    .line 212
    return-void
.end method

.method private createConversation(Lcom/sonyericsson/conversations/conversation/ConversationManager;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 6
    .param p1, "cm"    # Lcom/sonyericsson/conversations/conversation/ConversationManager;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v5, 0x1

    .line 266
    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v3

    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create conversation from conversation id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 305
    const/4 v3, 0x0

    return-object v3

    .line 269
    :pswitch_0
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v3

    .line 268
    invoke-virtual {p1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    return-object v3

    .line 271
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v1, "participant":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mAddress:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 273
    invoke-virtual {p1, v4, v5, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLjava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    return-object v3

    .line 277
    .end local v1    # "participant":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :pswitch_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mRecipientIds:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mRecipientIds:Ljava/lang/String;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-eq v3, v5, :cond_0

    .line 279
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 280
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mRecipientIds:Ljava/lang/String;

    .line 279
    invoke-virtual {p1, v4, v5, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLjava/lang/String;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    return-object v3

    .line 282
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v2, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mAddress:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLjava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    return-object v3

    .line 289
    .end local v2    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :pswitch_3
    invoke-virtual {p1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createEmptyConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 291
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mRecipientIds:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mRecipientIds:Ljava/lang/String;

    .line 294
    const-string/jumbo v4, ":"

    .line 293
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getParticipantList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 292
    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->setParticipants(Ljava/util/List;)V

    .line 300
    :cond_1
    :goto_0
    return-object v0

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mAddress:Ljava/lang/String;

    .line 298
    const-string/jumbo v4, ":"

    .line 297
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getParticipantList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->setParticipants(Ljava/util/List;)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isGroupChatTerminatedByUser(Lcom/sonyericsson/conversations/conversation/ConversationId;)Z
    .locals 6
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v5, 0x0

    .line 249
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v3, v4, :cond_0

    .line 250
    return v5

    .line 255
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v1

    .line 257
    .local v1, "imConversationStorageApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    .line 258
    .local v2, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    invoke-interface {v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi;->isLeftByLocalUser(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 259
    .end local v1    # "imConversationStorageApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    .end local v2    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    return v5
.end method


# virtual methods
.method protected onBackground()Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 223
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;

    invoke-direct {v0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)V

    .line 225
    .local v0, "bundle":Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 227
    .local v1, "cm":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 229
    .local v3, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getCachedConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    .line 230
    .local v2, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-nez v2, :cond_0

    .line 231
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->createConversation(Lcom/sonyericsson/conversations/conversation/ConversationManager;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    .line 233
    if-nez v2, :cond_0

    .line 234
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-set2(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;Ljava/util/List;)Ljava/util/List;

    .line 241
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v4

    .line 242
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-get2(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mAddress:Ljava/lang/String;

    .line 243
    iget v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->mSnippetType:I

    .line 241
    invoke-interface {v4, v3, v5, v6, v7}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getConversationName(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-set0(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    .line 244
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->isGroupChatTerminatedByUser(Lcom/sonyericsson/conversations/conversation/ConversationId;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;->-set1(Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;Z)Z

    .line 245
    return-object v0
.end method

.method protected bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListItemView$HeavyConversationProperties;->onBackground()Lcom/sonyericsson/conversations/ui/ConversationListItemView$ItemPropertiesBundle;

    move-result-object v0

    return-object v0
.end method
