.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private disconnectionMethod:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private entity:Ljava/lang/String;

.field private failureReason:Ljava/lang/String;

.field private me:Z

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "me"    # Z

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "unknown"

    .line 48
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->state:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->displayName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->disconnectionMethod:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->failureReason:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->entity:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->me:Z

    .line 59
    return-void
.end method

.method public static isConnected(Ljava/lang/String;)Z
    .locals 2
    .param p0, "state"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "connected"

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "pending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isDisconnected(Ljava/lang/String;)Z
    .locals 2
    .param p0, "state"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "disconnected"

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "departed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "declined"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "busy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "booted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getDisconnectionMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->disconnectionMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->entity:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->failureReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->state:Ljava/lang/String;

    return-object v0
.end method

.method public isMe()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->me:Z

    return v0
.end method

.method public setDisconnectionMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->disconnectionMethod:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->displayName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setFailureReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->failureReason:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->state:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->entity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->disconnectionMethod:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->failureReason:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 109
    :goto_1
    return-object v0

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->disconnectionMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->failureReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
