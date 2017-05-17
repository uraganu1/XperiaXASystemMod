.class public final Lcom/sonymobile/jms/conversation/ImGroupConversationId;
.super Ljava/lang/Object;
.source "ImGroupConversationId.java"

# interfaces
.implements Lcom/sonymobile/jms/conversation/ImConversationId;


# static fields
.field private static final serialVersionUID:J = 0x186e96efefa33b8cL


# instance fields
.field private final mId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "imGroupConversationId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->mId:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .locals 2
    .param p0, "imGroupConversationId"    # Ljava/lang/String;

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 24
    new-instance v0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    invoke-direct {v0, p0}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "imGroupConversationId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "This id is a groupId!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    if-eqz p1, :cond_0

    .line 59
    if-eq p1, p0, :cond_1

    .line 62
    instance-of v3, p1, Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    if-nez v3, :cond_2

    .line 69
    return v1

    .line 57
    :cond_0
    return v1

    .line 60
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .line 64
    .local v0, "otherConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    iget-object v3, p0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->mId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 67
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->mId:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 65
    :cond_3
    iget-object v3, v0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->mId:Ljava/lang/String;

    if-eqz v3, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getGroupChatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 49
    return v0
.end method

.method public isGroupId()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->mId:Ljava/lang/String;

    return-object v0
.end method
