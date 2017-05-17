.class public Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;
.super Ljava/lang/Object;
.source "OptionsRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

.field private contact:Ljava/lang/String;

.field private dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

.field private featureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mOptionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .param p2, "optionsManager"    # Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;
    .param p3, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/ImsModule;",
            "Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p4, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 91
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 92
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->mOptionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    .line 93
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->featureTags:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    .line 96
    return-void
.end method

.method private handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 7
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 245
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 251
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->extractCapabilities(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 257
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 263
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v6, v5}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    .line 268
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 269
    return-void

    .line 246
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "200 OK response received for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .restart local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .restart local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isSipAutomata()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v5, v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    goto :goto_1
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
    .line 279
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 286
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 289
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 292
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->featureTags:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createOptions(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .line 298
    .local v0, "options":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 301
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->sendOptions(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 302
    return-void

    .line 280
    .end local v0    # "options":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "407 response received"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .restart local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send second OPTIONS"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleError(Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isRcsAssociated(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    :goto_1
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Options has failed for contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilitiesTimestamp(Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private handleUserNotFound(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .line 231
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    .line 235
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 236
    return-void

    .line 226
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleUserNotRegistered(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V
    .locals 7
    .param p1, "ctx"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x2

    .line 194
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v1

    .line 199
    .local v1, "info":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 210
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    .line 214
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/rcs/core/CoreListener;->handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 216
    return-void

    .line 195
    .end local v1    # "info":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .restart local v1    # "info":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    :cond_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .line 203
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v5, v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    goto :goto_1
.end method

.method private sendOptions()V
    .locals 11

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "contactUri":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    sget-object v7, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getServiceRoutePath()Ljava/util/Vector;

    move-result-object v9

    move-object v8, v6

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 128
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 131
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->featureTags:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createOptions(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/util/List;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v10

    .line 134
    .local v10, "options":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-direct {p0, v10}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->sendOptions(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v6    # "contactUri":Ljava/lang/String;
    .end local v10    # "options":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_2
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send an OPTIONS message to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    :goto_3
    return-void

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "IMS not registered, do nothing"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 141
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 139
    :goto_4
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->handleError(Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;)V

    .line 140
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->mOptionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->optionsResponseReceived(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "contactUri":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Send first OPTIONS"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 137
    .end local v6    # "contactUri":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "OPTIONS request has failed"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private sendOptions(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 5
    .param p1, "options"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 159
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_7

    .line 182
    :goto_1
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->handleUserNotRegistered(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    .line 184
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->mOptionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->contact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->optionsResponseReceived(Ljava/lang/String;)V

    .line 185
    return-void

    .line 152
    .end local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Send OPTIONS"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .restart local v0    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 164
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_4

    .line 167
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_5

    .line 169
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->handleUserNotRegistered(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_2

    .line 163
    :cond_3
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_2

    .line 166
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_2

    .line 167
    :cond_5
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x198

    if-eq v1, v2, :cond_2

    .line 170
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_6

    .line 175
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;

    const/16 v2, 0xc9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->handleError(Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityError;)V

    goto :goto_2

    .line 172
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->handleUserNotFound(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;)V

    goto :goto_2

    .line 180
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "No response received for OPTIONS"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;->sendOptions()V

    .line 103
    return-void
.end method
