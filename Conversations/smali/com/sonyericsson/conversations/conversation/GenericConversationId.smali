.class public Lcom/sonyericsson/conversations/conversation/GenericConversationId;
.super Ljava/lang/Object;
.source "GenericConversationId.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/ConversationId;


# static fields
.field public static final CONVERSATION_ID_NONE:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private final mKey:Ljava/lang/String;

.field private final mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-wide/16 v0, -0x1

    sget-object v2, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 15
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->CONVERSATION_ID_NONE:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 11
    return-void
.end method

.method private constructor <init>(JLcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 1
    .param p1, "threadId"    # J
    .param p3, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    .line 26
    iput-object p3, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 27
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->fromConversationSources(Lcom/sonyericsson/conversations/conversation/ConversationId$Type;JLcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mKey:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 2
    .param p1, "threadIdInfo"    # Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 34
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationIdKeyFactory;->fromConversationSources(Lcom/sonyericsson/conversations/conversation/ConversationId$Type;Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mKey:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    .line 40
    sget-object v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mKey:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static fromImConversationIdOnly(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 4
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 62
    new-instance v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3, p0}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;-><init>(JLcom/sonymobile/jms/conversation/ImConversationId;)V

    return-object v0
.end method

.method public static fromKeyOnly(Ljava/lang/String;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 2
    .param p0, "threadId"    # J
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 67
    new-instance v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;-><init>(JLcom/sonymobile/jms/conversation/ImConversationId;)V

    return-object v0
.end method

.method public static fromThreadIdInfo(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 2
    .param p0, "threadIdInfo"    # Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;

    .prologue
    .line 58
    new-instance v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;-><init>(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;Lcom/sonymobile/jms/conversation/ImConversationId;)V

    return-object v0
.end method

.method public static fromThreadIdOnly(J)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 2
    .param p0, "threadId"    # J

    .prologue
    .line 54
    new-instance v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-direct {v0, p0, p1, v1}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;-><init>(JLcom/sonymobile/jms/conversation/ImConversationId;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 120
    return v1

    .line 122
    :cond_0
    instance-of v2, p1, Lcom/sonyericsson/conversations/conversation/GenericConversationId;

    if-nez v2, :cond_1

    .line 123
    return v1

    :cond_1
    move-object v0, p1

    .line 125
    check-cast v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;

    .line 126
    .local v0, "otherGenericConversationId":Lcom/sonyericsson/conversations/conversation/GenericConversationId;
    iget-wide v2, v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    iget-wide v4, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 127
    return v1

    .line 129
    :cond_2
    iget-object v2, v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    sget-object v3, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne v2, v3, :cond_4

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    sget-object v3, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 132
    :cond_4
    iget-object v1, v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    return-wide v0
.end method

.method public getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    sget-object v1, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne v0, v1, :cond_0

    .line 74
    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    return-object v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    sget-object v1, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne v0, v1, :cond_2

    .line 81
    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    return-object v0

    .line 83
    :cond_2
    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne v0, v1, :cond_0

    .line 111
    iget-wide v0, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    iget-wide v2, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "conversationId = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "threadId = "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    iget-wide v2, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mThreadId:J

    .line 98
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, " imConversationId = \'"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "\'"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
