.class public Lcom/sonyericsson/conversations/conversation/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x75ee4f1b2d50f40dL


# instance fields
.field private final mId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/conversation/Conversation;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;)V
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static getRecipients(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "base":Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 135
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .end local v0    # "base":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "base":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 55
    if-nez p1, :cond_0

    .line 56
    return v5

    .line 58
    :cond_0
    instance-of v3, p1, Lcom/sonyericsson/conversations/conversation/Conversation;

    if-nez v3, :cond_1

    .line 59
    return v5

    :cond_1
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 62
    .local v0, "otherConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    iget-object v3, v0, Lcom/sonyericsson/conversations/conversation/Conversation;->mId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 63
    return v5

    .line 65
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 66
    return v5

    .line 68
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "participant$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 69
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    iget-object v3, v0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 70
    return v5

    .line 73
    .end local v1    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method public getId()Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    return-object v0
.end method

.method public groupChatTerminatedByUserAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/sonyericsson/conversations/conversation/Conversation$1;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/conversation/Conversation$1;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hasEmailParticipants()Z
    .locals 4

    .prologue
    .line 110
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 111
    .local v0, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 112
    const/4 v2, 0x1

    return v2

    .line 116
    .end local v0    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasParticipants()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasValidRecipients()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 121
    return v4

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 124
    .local v0, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 125
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 126
    :cond_2
    return v4

    .line 129
    .end local v0    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_3
    return v5
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setParticipants(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-nez p1, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/Conversation;->mParticipants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    return-void
.end method
