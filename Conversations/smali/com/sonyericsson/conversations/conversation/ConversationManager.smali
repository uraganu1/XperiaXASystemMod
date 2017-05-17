.class public Lcom/sonyericsson/conversations/conversation/ConversationManager;
.super Ljava/lang/Object;
.source "ConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/conversation/ConversationManager$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

.field private static final DEBUG:Z


# instance fields
.field private mAttachmentSummaryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/model/AttachmentSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

.field private mConversationVisibility:Z

.field private mConversationsProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/conversation/ConversationProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

.field private mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

.field private mLastOpenedConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mThreadIdInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/conversation/ConversationManager;)Lcom/sonyericsson/conversations/conversation/ConversationCache;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/conversation/ConversationManager;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mLastOpenedConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/sonyericsson/conversations/conversation/ConversationManager;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mLastOpenedConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->DEBUG:Z

    .line 43
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/jms/environment/ImEnvironmentApi;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    .prologue
    const/16 v1, 0x64

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->CONVERSATION_ID_NONE:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mLastOpenedConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationsProperties:Ljava/util/Map;

    .line 65
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 64
    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mThreadIdInfoCache:Landroid/util/LruCache;

    .line 68
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 67
    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mAttachmentSummaryCache:Landroid/util/LruCache;

    .line 73
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationManager;)V

    .line 72
    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .line 103
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/conversation/ConversationCache;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    .line 105
    if-eqz p2, :cond_0

    .line 106
    iput-object p2, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    invoke-interface {p2, v0}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->registerImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 102
    :cond_0
    return-void
.end method

.method private createEmptyConversation()Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 4

    .prologue
    .line 266
    new-instance v0, Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 267
    const-wide/16 v2, -0x1

    .line 268
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 266
    invoke-static {v2, v3, v1}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/Conversation;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;)V

    return-object v0
.end method

.method private createImConversationIdIfRcseConfigured(Ljava/util/List;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/sonymobile/jms/conversation/ImConversationId;"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 274
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v1

    .line 277
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    invoke-static {v0}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromImContactNumber(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    return-object v1

    .line 282
    :cond_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v1
.end method

.method private createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 3
    .param p1, "threadId"    # J
    .param p3, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/sonyericsson/conversations/conversation/Conversation;"
        }
    .end annotation

    .prologue
    .line 122
    .local p4, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v0, Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-static {p1, p2, p3}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lcom/sonyericsson/conversations/conversation/Conversation;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;)V

    .line 124
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->put(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 127
    :cond_0
    return-object v0
.end method

.method private getParticipants(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recipientIdSpaceSeparated"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v11, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 138
    .local v12, "recipientIds":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 145
    .local v3, "selection":Ljava/lang/String;
    array-length v0, v12

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 147
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v10, "idArray":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    array-length v2, v12

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v9, v12, v0

    .line 149
    .local v9, "id":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v9    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v0, "content://mms-sms/canonical-addresses/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    .end local v3    # "selection":Ljava/lang/String;
    .end local v10    # "idArray":Ljava/lang/StringBuilder;
    .local v1, "uri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 164
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_6

    .line 168
    :try_start_0
    const-string/jumbo v0, "address"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 169
    .local v7, "addressColumnIndex":I
    :cond_1
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "address":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 173
    new-instance v0, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v0, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 184
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "addressColumnIndex":I
    :catchall_0
    move-exception v0

    .line 185
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 184
    throw v0

    .line 159
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "c":Landroid/database/Cursor;
    .local v3, "selection":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content://mms-sms/canonical-address/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 175
    .end local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v7    # "addressColumnIndex":I
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 177
    const-string/jumbo v0, "null canonical-address, id = "

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 179
    const-string/jumbo v2, "_id"

    .line 178
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 177
    invoke-virtual {v0, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 185
    .end local v6    # "address":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 191
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "addressColumnIndex":I
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v12    # "recipientIds":[Ljava/lang/String;
    :cond_5
    :goto_3
    return-object v11

    .line 188
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v12    # "recipientIds":[Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "Fail on create cursor to get participants"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private getParticipantsFromThreadId(J)Ljava/util/List;
    .locals 13
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 195
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 198
    :cond_0
    const/4 v8, 0x0

    .line 200
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 202
    const-string/jumbo v3, "address"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 203
    const-string/jumbo v3, "recipient_ids"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 200
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 205
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const-string/jumbo v0, "recipient_ids"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 210
    .local v11, "recipientIdsColIndex":I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, "recipientIds":Ljava/lang/String;
    const-string/jumbo v0, " "

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eq v0, v12, :cond_4

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v10}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getParticipants(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 224
    if-eqz v8, :cond_1

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_1
    return-object v0

    .line 206
    .end local v10    # "recipientIds":Ljava/lang/String;
    .end local v11    # "recipientIdsColIndex":I
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    if-eqz v8, :cond_3

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_3
    return-object v0

    .line 216
    .restart local v10    # "recipientIds":Ljava/lang/String;
    .restart local v11    # "recipientIdsColIndex":I
    :cond_4
    :try_start_2
    const-string/jumbo v0, "address"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 217
    .local v7, "addressColIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "address":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 219
    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v9, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v0, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v0, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    if-eqz v8, :cond_5

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_5
    return-object v9

    .line 224
    .end local v9    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_6
    if-eqz v8, :cond_7

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 223
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "addressColIndex":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "recipientIds":Ljava/lang/String;
    .end local v11    # "recipientIdsColIndex":I
    :catchall_0
    move-exception v0

    .line 224
    if-eqz v8, :cond_8

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_8
    throw v0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .line 113
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->unregisterImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 111
    :cond_0
    return-void
.end method

.method public clearConversationsCache()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->clearAll()V

    .line 582
    return-void
.end method

.method public createConversationFromParticipants(Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/sonyericsson/conversations/conversation/Conversation;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createEmptyConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    return-object v6

    .line 307
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 309
    .local v3, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 310
    .local v0, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    .end local v0    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_2
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v2

    .line 314
    .local v2, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    iget-object v6, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-interface {v2, v6, v3}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    .line 317
    .local v4, "threadId":J
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createImConversationIdIfRcseConfigured(Ljava/util/List;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v6

    .line 316
    invoke-direct {p0, v4, v5, v6, p1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    return-object v6
.end method

.method public createEmptyConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 2
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 292
    new-instance v0, Lcom/sonyericsson/conversations/conversation/Conversation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/conversations/conversation/Conversation;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;)V

    return-object v0
.end method

.method public getCachedAttachmentSummary(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/model/AttachmentSummary;
    .locals 2
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mAttachmentSummaryCache:Landroid/util/LruCache;

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/AttachmentSummary;

    return-object v0
.end method

.method public getCachedConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getCachedConversationProperties(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    .locals 2
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationsProperties:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    return-object v0
.end method

.method public getConversationProperties(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    .locals 4
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 603
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationsProperties:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    .line 604
    .local v1, "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    if-eqz v1, :cond_0

    .line 605
    return-object v1

    .line 608
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getConversationPropertiesManager()Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;

    move-result-object v0

    .line 609
    .local v0, "conversationPropertiesApi":Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;
    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;->getProperties(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    move-result-object v1

    .line 610
    if-nez v1, :cond_1

    .line 611
    invoke-static {p1}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->createDefault(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    move-result-object v1

    .line 613
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationsProperties:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-object v1
.end method

.method public getLastOpenedConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mLastOpenedConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method public getThreadIdFromOne2OneParticipantAddress(Ljava/lang/String;)J
    .locals 11
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v8, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "address"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v0, "OR PHONE_NUMBERS_EQUAL("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    const-string/jumbo v1, ", ?)"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v10

    aput-object p1, v4, v9

    .line 237
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 238
    new-array v2, v2, [Ljava/lang/String;

    .line 239
    const-string/jumbo v3, "_id"

    aput-object v3, v2, v10

    .line 240
    const-string/jumbo v3, "recipient_ids"

    aput-object v3, v2, v9

    .line 241
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 247
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    const-string/jumbo v0, "recipient_ids"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 248
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "recipientIds":Ljava/lang/String;
    const-string/jumbo v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v9, :cond_0

    .line 254
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 258
    if-eqz v6, :cond_1

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_1
    return-wide v0

    .line 258
    .end local v7    # "recipientIds":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_3
    const-wide/16 v0, -0x1

    return-wide v0

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    if-eqz v6, :cond_4

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_4
    throw v0
.end method

.method getThreadIdInfoFromThreadId(J)Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;
    .locals 17
    .param p1, "threadId"    # J

    .prologue
    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mThreadIdInfoCache:Landroid/util/LruCache;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;

    .line 656
    .local v11, "cachedThreadIdInfo":Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;
    if-eqz v11, :cond_0

    .line 657
    return-object v11

    .line 660
    :cond_0
    const/4 v10, 0x0

    .line 662
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 663
    sget-object v3, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 664
    const-string/jumbo v5, "address"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 665
    const-string/jumbo v5, "recipient_ids"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 662
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 667
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 670
    const-string/jumbo v2, "recipient_ids"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 671
    .local v14, "recipientIdsColIndex":I
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 672
    .local v13, "recipientIds":Ljava/lang/String;
    const/4 v12, 0x0

    .line 673
    .local v12, "isGroup":Z
    const-string/jumbo v2, " "

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 675
    const/4 v12, 0x1

    .line 678
    :cond_1
    const-string/jumbo v2, "address"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 679
    .local v9, "addressColIndex":I
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 681
    .local v8, "address":Ljava/lang/String;
    new-instance v15, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;

    move-wide/from16 v0, p1

    invoke-direct {v15, v8, v12, v0, v1}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;-><init>(Ljava/lang/String;ZJ)V

    .line 682
    .local v15, "threadIdInfo":Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mThreadIdInfoCache:Landroid/util/LruCache;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    if-eqz v10, :cond_2

    .line 686
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 683
    :cond_2
    return-object v15

    .line 668
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "addressColIndex":I
    .end local v12    # "isGroup":Z
    .end local v13    # "recipientIds":Ljava/lang/String;
    .end local v14    # "recipientIdsColIndex":I
    .end local v15    # "threadIdInfo":Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;
    :cond_3
    const/4 v2, 0x0

    .line 685
    if-eqz v10, :cond_4

    .line 686
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 668
    :cond_4
    return-object v2

    .line 684
    .end local v10    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 685
    if-eqz v10, :cond_5

    .line 686
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 684
    :cond_5
    throw v2
.end method

.method public isConversationVisibile()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationVisibility:Z

    return v0
.end method

.method public isGroupChatMuted(Lcom/sonyericsson/conversations/conversation/ConversationId;)Z
    .locals 2
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 623
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 624
    const-string/jumbo v1, "conversationId: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 626
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getConversationProperties(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    move-result-object v0

    .line 627
    .local v0, "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->isMuted()Z

    move-result v1

    return v1
.end method

.method public putAttachmentSummaryToCache(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/AttachmentSummary;)V
    .locals 2
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "attachmentSummary"    # Lcom/sonyericsson/conversations/model/AttachmentSummary;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mAttachmentSummaryCache:Landroid/util/LruCache;

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-void
.end method

.method public removeConversationFromCache(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->remove(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public removeConversationFromCache(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->remove(Ljava/util/List;)V

    .line 577
    return-void
.end method

.method public reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 3
    .param p1, "threadId"    # J

    .prologue
    .line 330
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 331
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 332
    return-object v0

    .line 335
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getParticipantsFromThreadId(J)Ljava/util/List;

    move-result-object v1

    .line 337
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createImConversationIdIfRcseConfigured(Ljava/util/List;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    .line 336
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    return-object v2
.end method

.method public reuseOrCreateConversation(JLcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 3
    .param p1, "threadId"    # J
    .param p3, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 388
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 389
    return-object v0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_1

    .line 393
    return-object v0

    .line 396
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getParticipantsFromThreadId(J)Ljava/util/List;

    move-result-object v1

    .line 395
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1
.end method

.method public reuseOrCreateConversation(JLjava/lang/String;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 3
    .param p1, "threadId"    # J
    .param p3, "recipientIdsSpaceSeparated"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 412
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 413
    return-object v0

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getParticipants(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 417
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    sget-object v2, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    return-object v2
.end method

.method public reuseOrCreateConversation(JLjava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 3
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/sonyericsson/conversations/conversation/Conversation;"
        }
    .end annotation

    .prologue
    .line 430
    .local p3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 431
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 432
    return-object v0

    .line 436
    :cond_0
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createImConversationIdIfRcseConfigured(Ljava/util/List;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 435
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1
.end method

.method public reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 6
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 466
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 467
    return-object v0

    .line 470
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v1

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create conversation from conversation id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 491
    return-object v3

    .line 473
    :pswitch_0
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    .line 472
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 475
    :pswitch_1
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 477
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    .line 476
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 480
    :cond_1
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    .line 481
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    .line 479
    invoke-virtual {p0, v2, v3, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 484
    :pswitch_2
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 486
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createEmptyConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 4
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/sonyericsson/conversations/conversation/Conversation;"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 450
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 451
    return-object v0

    .line 454
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    .line 455
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 454
    invoke-direct {p0, v2, v3, v1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1
.end method

.method public reuseOrCreateConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 12
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    const-wide/16 v10, -0x1

    .line 348
    iget-object v7, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v7, p1}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 349
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 350
    return-object v0

    .line 353
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    .line 357
    .local v2, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getRecipients(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;

    move-result-object v6

    .line 358
    .local v6, "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "recipient$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 359
    .local v4, "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    new-instance v7, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v4}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v4    # "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v5    # "recipient$iterator":Ljava/util/Iterator;
    .end local v6    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v7, "Unable to get participants for ImGroupConversationId "

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 371
    new-instance v0, Lcom/sonyericsson/conversations/conversation/Conversation;

    .end local v0    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-static {v10, v11, p1}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v7

    invoke-direct {v0, v7, v3}, Lcom/sonyericsson/conversations/conversation/Conversation;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;)V

    .line 375
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v0    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :goto_1
    return-object v0

    .line 361
    .restart local v5    # "recipient$iterator":Ljava/util/Iterator;
    .restart local v6    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :cond_1
    const-wide/16 v8, -0x1

    :try_start_1
    invoke-direct {p0, v8, v9, p1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public reuseOrCreateConversationAndGetOrCreateThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonyericsson/conversations/model/Participant;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 10
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .param p2, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 529
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 530
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    .line 532
    return-object v0

    .line 534
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->remove(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 540
    :cond_1
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v2

    .line 541
    .local v2, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 542
    .local v4, "threadId":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-direct {p0, v4, v5, p1, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    return-object v3
.end method

.method public reuseOrCreateConversationAndGetThreadId(Lcom/sonyericsson/conversations/model/Participant;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 5
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 555
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getThreadIdFromOne2OneParticipantAddress(Ljava/lang/String;)J

    move-result-wide v2

    .line 556
    .local v2, "threadId":J
    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v4, v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 557
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 558
    return-object v0

    .line 560
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createImConversationIdIfRcseConfigured(Ljava/util/List;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v4

    .line 562
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    return-object v4
.end method

.method public reuseOrCreateConversationAndGetThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 6
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 504
    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationCache:Lcom/sonyericsson/conversations/conversation/ConversationCache;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 505
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 506
    return-object v0

    .line 509
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getThreadIdFromOne2OneParticipantAddress(Ljava/lang/String;)J

    move-result-wide v2

    .line 515
    .local v2, "threadId":J
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createNewCachedConversation(JLcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    return-object v4
.end method

.method public setActiveConversationVisibility(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationVisibility:Z

    .line 598
    return-void
.end method

.method public setConversationIsMuted(Lcom/sonyericsson/conversations/conversation/ConversationId;Z)V
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "isMuted"    # Z

    .prologue
    .line 636
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getConversationProperties(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    move-result-object v0

    .line 637
    .local v0, "cp":Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->setIsMuted(Z)V

    .line 638
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->updateConversationProperties(Lcom/sonyericsson/conversations/conversation/ConversationProperties;)V

    .line 635
    return-void
.end method

.method public setLastOpenedConversationId(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mLastOpenedConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 590
    return-void
.end method

.method public updateConversationProperties(Lcom/sonyericsson/conversations/conversation/ConversationProperties;)V
    .locals 3
    .param p1, "conversationProperties"    # Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    .prologue
    .line 646
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager;->mConversationsProperties:Ljava/util/Map;

    .line 647
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationPropertiesManager()Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;

    move-result-object v0

    .line 651
    .local v0, "conversationPropertiesApi":Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;
    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;->replaceProperties(Lcom/sonyericsson/conversations/conversation/ConversationProperties;)V

    .line 645
    return-void
.end method
