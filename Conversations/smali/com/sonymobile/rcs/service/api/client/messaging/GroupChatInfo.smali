.class public Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
.super Ljava/lang/Object;
.source "GroupChatInfo.java"


# instance fields
.field private contributionId:Ljava/lang/String;

.field private mQueuedParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejoinId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rejoinId"    # Ljava/lang/String;
    .param p3, "contributionId"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p4, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "queuedParticipants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->sessionId:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->rejoinId:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->contributionId:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->participants:Ljava/util/List;

    .line 75
    iput-object p5, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->mQueuedParticipants:Ljava/util/List;

    .line 76
    iput-object p6, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->subject:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public getAllParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "participantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->participants:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->mQueuedParticipants:Ljava/util/List;

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->mQueuedParticipants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->mQueuedParticipants:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getContributionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->contributionId:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->participants:Ljava/util/List;

    return-object v0
.end method

.method public getRejoinId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->rejoinId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Session ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Contribution ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->contributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Rejoin ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->rejoinId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Participants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;->participants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
