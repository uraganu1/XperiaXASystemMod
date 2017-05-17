.class public Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;
.super Ljava/lang/Object;
.source "OptionsManager.java"


# instance fields
.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 80
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 81
    return-void
.end method


# virtual methods
.method optionsResponseReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public receiveCapabilityRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 10
    .param p1, "options"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 189
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "contact":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 197
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "ipAddress":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->getSupportedFeatureTags(ZZ)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->buildSdp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkOptionsResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljavax2/sip/header/ContactHeader;Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    .line 205
    .local v4, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v4    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->extractCapabilities(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 216
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v5

    if-nez v5, :cond_2

    .line 222
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v9, v8}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    .line 227
    :goto_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 228
    return-void

    .line 192
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OPTIONS request received from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t send 200 OK for OPTIONS"

    invoke-virtual {v5, v6, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v8, v9}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    goto :goto_2
.end method

.method public requestCapabilities(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 169
    .local v2, "setContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_5

    .line 173
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 181
    :cond_3
    :goto_2
    return-void

    .line 162
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "setContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Invalid request capabilities. No contacts present."

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .restart local v2    # "setContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Request capabilities for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 173
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->requestCapabilities(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Processing has been stopped"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public requestCapabilities(Ljava/lang/String;)Z
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->requestCapabilities(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public requestCapabilities(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "forceRequest"    # Z

    .prologue
    const/4 v8, 0x0

    .line 127
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, p1, v6, v7}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilitiesTimestamp(Ljava/lang/String;J)V

    .line 137
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 138
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isRichcallSupportedWith(Ljava/lang/String;)Z

    move-result v2

    .line 139
    .local v2, "richcall":Z
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->isCallConnectedWith(Ljava/lang/String;)Z

    move-result v1

    .line 140
    .local v1, "ipcall":Z
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-static {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->getSupportedFeatureTags(ZZ)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, p0, p1, v5}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;Ljava/lang/String;Ljava/util/List;)V

    .line 142
    .local v3, "task":Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 143
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "ipcall":Z
    .end local v2    # "richcall":Z
    .end local v3    # "task":Lcom/sonymobile/rcs/core/ims/service/capability/OptionsRequestTask;
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 128
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Request capabilities in background for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    if-nez p2, :cond_0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 150
    :goto_2
    return v8

    .line 148
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t submit task"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public start()V
    .locals 1

    .prologue
    const/16 v0, 0x19

    .line 87
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 104
    :goto_1
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 102
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    goto :goto_1

    .line 99
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Could not stop all threads"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 104
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    .line 102
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_3

    .line 104
    :goto_3
    throw v1

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 104
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->mOngoingOptionsRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_3
.end method
