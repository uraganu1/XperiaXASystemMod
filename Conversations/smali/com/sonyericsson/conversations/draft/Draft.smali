.class public Lcom/sonyericsson/conversations/draft/Draft;
.super Ljava/lang/Object;
.source "Draft.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x53d755624f3f943cL


# instance fields
.field private final mBodyText:Ljava/lang/String;

.field private final mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field mId:J

.field private final mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriority:I

.field private final mSubject:Ljava/lang/String;

.field private final mTimestamp:J

.field private transient mUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JI)V
    .locals 2
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "bodyText"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p4, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .local p5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/conversations/draft/Draft;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 43
    iput-object p2, p0, Lcom/sonyericsson/conversations/draft/Draft;->mSubject:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/conversations/draft/Draft;->mBodyText:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/sonyericsson/conversations/draft/Draft;->mParticipants:Ljava/util/List;

    .line 46
    iput-object p5, p0, Lcom/sonyericsson/conversations/draft/Draft;->mUris:Ljava/util/List;

    .line 47
    iput-wide p6, p0, Lcom/sonyericsson/conversations/draft/Draft;->mTimestamp:J

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/draft/Draft;->mId:J

    .line 49
    iput p8, p0, Lcom/sonyericsson/conversations/draft/Draft;->mPriority:I

    .line 41
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 106
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 107
    .local v2, "uriList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/conversations/draft/Draft;->mUris:Ljava/util/List;

    .line 109
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, "uri":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/conversations/draft/Draft;->mUris:Ljava/util/List;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "uri$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 91
    iget-object v4, p0, Lcom/sonyericsson/conversations/draft/Draft;->mUris:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, "uriList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/draft/Draft;->mUris:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 94
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "uri$iterator":Ljava/util/Iterator;
    .end local v3    # "uriList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 88
    :cond_0
    :goto_1
    return-void

    .line 96
    .restart local v2    # "uri$iterator":Ljava/util/Iterator;
    .restart local v3    # "uriList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getBodyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/Draft;->mBodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/Draft;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/sonyericsson/conversations/draft/Draft;->mId:J

    return-wide v0
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
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/Draft;->mParticipants:Ljava/util/List;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonyericsson/conversations/draft/Draft;->mPriority:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/Draft;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/sonyericsson/conversations/draft/Draft;->mTimestamp:J

    return-wide v0
.end method

.method public getUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/Draft;->mUris:Ljava/util/List;

    return-object v0
.end method

.method setId(J)V
    .locals 1
    .param p1, "draftId"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/sonyericsson/conversations/draft/Draft;->mId:J

    .line 52
    return-void
.end method
