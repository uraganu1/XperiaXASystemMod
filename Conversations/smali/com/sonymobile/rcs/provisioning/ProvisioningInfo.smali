.class public Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;
.super Ljava/lang/Object;
.source "ProvisioningInfo.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mAcceptBtn:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mRejectBtn:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTokenValidity:J

.field private mValidity:J

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mVersion:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mValidity:J

    .line 46
    iput-wide v2, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mTokenValidity:J

    .line 51
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mTitle:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mMessage:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mAcceptBtn:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mRejectBtn:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenValidity()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mTokenValidity:J

    return-wide v0
.end method

.method public getValidity()J
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    iget-wide v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mValidity:J

    return-wide v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getValidity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mValidity:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mVersion:Ljava/lang/String;

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAcceptBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "acceptBtn"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mAcceptBtn:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mMessage:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setRejectBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "rejectBtn"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mRejectBtn:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mTitle:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mToken:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setTokenValidity(J)V
    .locals 1
    .param p1, "validity"    # J

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mTokenValidity:J

    .line 139
    return-void
.end method

.method public setValidity(J)V
    .locals 1
    .param p1, "validity"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mValidity:J

    .line 81
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->mVersion:Ljava/lang/String;

    .line 77
    return-void
.end method
