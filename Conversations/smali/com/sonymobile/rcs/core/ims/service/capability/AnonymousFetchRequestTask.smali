.class public Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;
.super Ljava/lang/Object;
.source "AnonymousFetchRequestTask.java"


# instance fields
.field private authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

.field private contact:Ljava/lang/String;

.field private dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .param p2, "contact"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 82
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 83
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->contact:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    .line 85
    return-void
.end method

.method private createSubscribe()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;,
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .local v0, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    const-string/jumbo v1, "Privacy"

    const-string/jumbo v2, "id"

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Event"

    const-string/jumbo v2, "presence"

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept"

    const-string/jumbo v2, "application/pidf+xml"

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method private handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "200 OK response received"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v0

    .line 228
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 231
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 234
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->createSubscribe()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 240
    .local v1, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 243
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 244
    return-void

    .line 222
    .end local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v1    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "407 response received"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    .restart local v0    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send second SUBSCRIBE"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->contact:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilitiesTimestamp(Ljava/lang/String;J)V

    .line 261
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subscribe has failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleUserNotFound(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .line 275
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->contact:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    .line 277
    return-void

    .line 270
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User not found ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSubscribe()V
    .locals 12

    .prologue
    .line 98
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->contact:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "contactUri":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "callId":Ljava/lang/String;
    move-object v6, v0

    .line 113
    .local v6, "target":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:anonymous@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "localParty":Ljava/lang/String;
    move-object v8, v0

    .line 119
    .local v8, "remoteParty":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getServiceRoutePath()Ljava/util/Vector;

    move-result-object v9

    .line 122
    .local v9, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 126
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->createSubscribe()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v11

    .line 129
    .local v11, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v11}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "contactUri":Ljava/lang/String;
    .end local v3    # "callId":Ljava/lang/String;
    .end local v6    # "target":Ljava/lang/String;
    .end local v7    # "localParty":Ljava/lang/String;
    .end local v8    # "remoteParty":Ljava/lang/String;
    .end local v9    # "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v11    # "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_1
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send SUBSCRIBE request to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :catch_0
    move-exception v10

    .line 131
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    :goto_2
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    const/4 v2, 0x1

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Subscribe has failed"

    invoke-virtual {v1, v2, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private sendSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 5
    .param p1, "subscribe"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x12d

    .line 167
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 175
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 197
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    invoke-direct {v1, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    .line 199
    :goto_2
    return-void

    .line 168
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send SUBSCRIBE, expire="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getExpires()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .restart local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_3

    .line 180
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_4

    .line 183
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_5

    .line 188
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->handleError(Lcom/sonymobile/rcs/core/ims/service/presence/PresenceError;)V

    goto :goto_2

    .line 177
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_2

    .line 179
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_2

    .line 182
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_2

    .line 185
    :cond_5
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->handleUserNotFound(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_2

    .line 193
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "No response received for SUBSCRIBE"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public start()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->sendSubscribe()V

    .line 92
    return-void
.end method
