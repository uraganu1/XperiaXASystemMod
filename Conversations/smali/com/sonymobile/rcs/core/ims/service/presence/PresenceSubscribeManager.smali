.class public Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;
.super Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;
.source "PresenceSubscribeManager.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 62
    return-void
.end method


# virtual methods
.method public createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 3
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .param p2, "expirePeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createSubscribe(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    .local v0, "subscribe":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    const-string/jumbo v1, "Event"

    const-string/jumbo v2, "presence"

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept"

    const-string/jumbo v2, "application/pidf+xml, application/rlmi+xml, multipart/related"

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Supported"

    const-string/jumbo v2, "eventlist"

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v0
.end method

.method public getPresentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";pres-list=rcs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 23
    .param p1, "notify"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->isNotifyForThisSubscriber(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_2

    .line 114
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "content":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 197
    :cond_0
    :goto_1
    return-void

    .line 106
    .end local v4    # "content":Ljava/lang/String;
    :cond_1
    return-void

    .line 110
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "New presence notification received"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .restart local v4    # "content":Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getBoundaryContentType()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "boundary":Ljava/lang/String;
    new-instance v8, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;

    invoke-direct {v8, v4, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v8, "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->isMultipart()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v21

    if-nez v21, :cond_5

    .end local v2    # "boundary":Ljava/lang/String;
    .end local v8    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    :cond_4
    :goto_2
    const-string/jumbo v21, "Subscription-State"

    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v20

    check-cast v20, Ljavax2/sip/header/SubscriptionStateHeader;

    .line 190
    .local v20, "stateHeader":Ljavax2/sip/header/SubscriptionStateHeader;
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Ljavax2/sip/header/SubscriptionStateHeader;->getState()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "terminated"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_c

    .line 194
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->terminatedByServer()V

    goto :goto_1

    .end local v20    # "stateHeader":Ljavax2/sip/header/SubscriptionStateHeader;
    .restart local v2    # "boundary":Ljava/lang/String;
    .restart local v8    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    :cond_5
    :try_start_1
    const-string/jumbo v21, "application/rlmi+xml"

    .line 121
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 122
    .local v18, "rlmiPart":Ljava/lang/String;
    if-nez v18, :cond_7

    :cond_6
    :goto_4
    const-string/jumbo v21, "application/pidf+xml"

    .line 161
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 164
    .local v11, "pidfPart":Ljava/lang/String;
    :try_start_2
    new-instance v9, Lorg/xml/sax/InputSource;

    new-instance v21, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 166
    .local v9, "pidfInput":Lorg/xml/sax/InputSource;
    new-instance v10, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;

    invoke-direct {v10, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 167
    .local v10, "pidfParser":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;
    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->getPresence()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    move-result-object v12

    .line 170
    .local v12, "presenceInfo":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v21

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->getEntity()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v12}, Lcom/sonymobile/rcs/core/CoreListener;->handlePresenceInfoNotification(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 179
    .end local v9    # "pidfInput":Lorg/xml/sax/InputSource;
    .end local v10    # "pidfParser":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;
    .end local v12    # "presenceInfo":Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;
    :catch_0
    move-exception v5

    .line 176
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Can\'t parse PIDF notification"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 185
    .end local v2    # "boundary":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    .end local v11    # "pidfPart":Ljava/lang/String;
    .end local v18    # "rlmiPart":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 182
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Can\'t parse presence notification"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 125
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "boundary":Ljava/lang/String;
    .restart local v8    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    .restart local v18    # "rlmiPart":Ljava/lang/String;
    :cond_7
    :try_start_4
    new-instance v16, Lorg/xml/sax/InputSource;

    new-instance v21, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 127
    .local v16, "rlmiInput":Lorg/xml/sax/InputSource;
    new-instance v17, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 128
    .local v17, "rlmiParser":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->getResourceInfo()Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;

    move-result-object v15

    .line 129
    .local v15, "rlmiInfo":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;->getResourceList()Ljava/util/Vector;

    move-result-object v7

    .local v7, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;>;"
    const/4 v6, 0x0

    .line 130
    .local v6, "i":I
    :goto_5
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_6

    .line 131
    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    .line 132
    .local v14, "res":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->getUri()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "contact":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->getState()Ljava/lang/String;

    move-result-object v19

    .line 134
    .local v19, "state":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->getReason()Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, "reason":Ljava/lang/String;
    if-nez v3, :cond_9

    .line 130
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 136
    :cond_9
    if-eqz v19, :cond_8

    if-eqz v13, :cond_8

    const-string/jumbo v21, "terminated"

    .line 137
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 147
    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1, v13}, Lcom/sonymobile/rcs/core/CoreListener;->handlePresenceSharingNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 158
    .end local v3    # "contact":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;>;"
    .end local v13    # "reason":Ljava/lang/String;
    .end local v14    # "res":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;
    .end local v15    # "rlmiInfo":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;
    .end local v16    # "rlmiInput":Lorg/xml/sax/InputSource;
    .end local v17    # "rlmiParser":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;
    .end local v19    # "state":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 155
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Can\'t parse RLMI notification"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "contact":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;>;"
    .restart local v13    # "reason":Ljava/lang/String;
    .restart local v14    # "res":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;
    .restart local v15    # "rlmiInfo":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;
    .restart local v16    # "rlmiInput":Lorg/xml/sax/InputSource;
    .restart local v17    # "rlmiParser":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;
    .restart local v19    # "state":Ljava/lang/String;
    :cond_b
    :try_start_6
    const-string/jumbo v21, "rejected"

    .line 137
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getPresenceService()Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->getXdmManager()Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->removeContactFromGrantedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    .line 192
    .end local v2    # "boundary":Ljava/lang/String;
    .end local v3    # "contact":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;>;"
    .end local v8    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    .end local v13    # "reason":Ljava/lang/String;
    .end local v14    # "res":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;
    .end local v15    # "rlmiInfo":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;
    .end local v16    # "rlmiInput":Lorg/xml/sax/InputSource;
    .end local v17    # "rlmiParser":Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;
    .end local v18    # "rlmiPart":Ljava/lang/String;
    .end local v19    # "state":Ljava/lang/String;
    .restart local v20    # "stateHeader":Ljavax2/sip/header/SubscriptionStateHeader;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Presence subscription has been terminated by server"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
