.class public Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;
.super Ljava/lang/Object;
.source "AnonymousFetchManager.java"


# instance fields
.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 61
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 62
    return-void
.end method


# virtual methods
.method public receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 15
    .param p1, "notify"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 85
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_1

    .line 90
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v2

    .line 91
    .local v2, "content":[B
    if-nez v2, :cond_2

    .line 143
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_b

    .line 146
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "contact":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .line 152
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v12

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v12, v1, v0, v13, v14}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    .line 156
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v12

    invoke-interface {v12, v1, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 158
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v1    # "contact":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 86
    .end local v2    # "content":[B
    :cond_1
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Anonymous fetch notification received"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .restart local v2    # "content":[B
    :cond_2
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_3

    .line 96
    :goto_3
    :try_start_0
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v12}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 97
    .local v6, "pidfInput":Lorg/xml/sax/InputSource;
    new-instance v7, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;

    invoke-direct {v7, v6}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 98
    .local v7, "pidfParser":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->getPresence()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    move-result-object v8

    .line 99
    .local v8, "presence":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;
    if-eqz v8, :cond_0

    .line 101
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .line 105
    .restart local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPresenceDiscoverySupport(Z)V

    .line 107
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getEntity()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1    # "contact":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getTuplesList()Ljava/util/Vector;

    move-result-object v11

    .local v11, "tuples":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;>;"
    const/4 v4, 0x0

    .line 109
    .local v4, "i":I
    :goto_4
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v12

    if-lt v4, v12, :cond_4

    .line 130
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v1, v0, v13, v14}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    .line 134
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v12

    invoke-interface {v12, v1, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 141
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v1    # "contact":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "pidfInput":Lorg/xml/sax/InputSource;
    .end local v7    # "pidfParser":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;
    .end local v8    # "presence":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;
    .end local v11    # "tuples":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;>;"
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 139
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Can\'t parse XML notification"

    invoke-virtual {v12, v13, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 93
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Anonymous fetch notification with PIDF document"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 110
    .restart local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .restart local v1    # "contact":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "pidfInput":Lorg/xml/sax/InputSource;
    .restart local v7    # "pidfParser":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;
    .restart local v8    # "presence":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;
    .restart local v11    # "tuples":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v11, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    .line 111
    .local v10, "tuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    const/4 v9, 0x0

    .line 112
    .local v9, "state":Z
    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->getStatus()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;->getBasic()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "open"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 115
    :goto_5
    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->getService()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;->getId()Ljava/lang/String;

    move-result-object v5

    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v12, "org.gsma.videoshare"

    .line 116
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string/jumbo v12, "org.gsma.imageshare"

    .line 118
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string/jumbo v12, "org.openmobilealliance:File-Transfer"

    .line 120
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string/jumbo v12, "org.3gpp.cs-videotelephony"

    .line 122
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "org.openmobilealliance:IM-session"

    .line 124
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 109
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 113
    .end local v5    # "id":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x1

    goto :goto_5

    .line 117
    .restart local v5    # "id":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v9}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setVideoSharingSupport(Z)V

    goto :goto_6

    .line 119
    :cond_7
    invoke-virtual {v0, v9}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    goto :goto_6

    .line 121
    :cond_8
    invoke-virtual {v0, v9}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferSupport(Z)V

    goto :goto_6

    .line 123
    :cond_9
    invoke-virtual {v0, v9}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCsVideoSupport(Z)V

    goto :goto_6

    .line 125
    :cond_a
    invoke-virtual {v0, v9}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImSessionSupport(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 144
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v1    # "contact":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "pidfInput":Lorg/xml/sax/InputSource;
    .end local v7    # "pidfParser":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;
    .end local v8    # "presence":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;
    .end local v9    # "state":Z
    .end local v10    # "tuple":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;
    .end local v11    # "tuples":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;>;"
    :cond_b
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Anonymous fetch notification is empty"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public requestCapabilities(Ljava/lang/String;)Z
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-direct {v0, v1, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Ljava/lang/String;)V

    .line 75
    .local v0, "task":Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;->start()V

    .line 76
    const/4 v1, 0x1

    return v1

    .line 72
    .end local v0    # "task":Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchRequestTask;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Request capabilities in background for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
