.class public Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;
.super Ljava/lang/Thread;
.source "ImsServiceDispatcher.java"


# instance fields
.field private buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private intentMgr:Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "imsModule"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    const-string/jumbo v0, "SipDispatcher"

    .line 88
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/sonymobile/rcs/utils/FifoBuffer;

    invoke-direct {v0}, Lcom/sonymobile/rcs/utils/FifoBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

    .line 75
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->intentMgr:Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 90
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 91
    return-void
.end method

.method private dispatch(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 24
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_5

    .line 148
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, "localIpAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v8

    .line 151
    .local v8, "imsNetIntf":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    const/4 v11, 0x0

    .line 154
    .local v11, "isMatchingRegistered":Z
    :try_start_0
    sget-object v21, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljavax2/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax2/sip/address/SipURI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 165
    .local v17, "requestURI":Ljavax2/sip/address/SipURI;
    invoke-interface/range {v17 .. v17}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 169
    .local v11, "isMatchingRegistered":Z
    if-eqz v11, :cond_7

    .line 184
    .end local v11    # "isMatchingRegistered":Z
    :cond_0
    :goto_1
    if-eqz v11, :cond_c

    .line 199
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getInstanceID(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "instanceId":Ljava/lang/String;
    if-nez v9, :cond_e

    .line 217
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getPublicGruu(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, "publicGruu":Ljava/lang/String;
    if-nez v15, :cond_10

    .line 229
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getCallId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->searchSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v20

    .line 230
    .local v20, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    if-nez v20, :cond_12

    .line 238
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "OPTIONS"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "INVITE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16

    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "MESSAGE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_54

    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "NOTIFY"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5a

    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BYE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5b

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "CANCEL"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5e

    .line 562
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "UPDATE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_61

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_62

    .line 573
    :cond_4
    :goto_3
    return-void

    .line 145
    .end local v8    # "imsNetIntf":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    .end local v9    # "instanceId":Ljava/lang/String;
    .end local v12    # "localIpAddress":Ljava/lang/String;
    .end local v15    # "publicGruu":Ljava/lang/String;
    .end local v17    # "requestURI":Ljavax2/sip/address/SipURI;
    .end local v20    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Receive "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " request"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .restart local v8    # "imsNetIntf":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
    .local v11, "isMatchingRegistered":Z
    .restart local v12    # "localIpAddress":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 156
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_6

    :goto_4
    const/16 v21, 0x190

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 160
    return-void

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unable to parse request URI "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 169
    .end local v6    # "e":Ljava/lang/Exception;
    .local v11, "isMatchingRegistered":Z
    .restart local v17    # "requestURI":Ljavax2/sip/address/SipURI;
    :cond_7
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isBehindNat()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 173
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNatPublicAddress()Ljava/lang/String;

    move-result-object v13

    .line 174
    .local v13, "natPublicIpAddress":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNatPublicPort()I

    move-result v14

    .local v14, "natPublicUdpPort":I
    const/16 v21, -0x1

    .line 175
    move/from16 v0, v21

    if-ne v14, v0, :cond_9

    .line 180
    :cond_8
    const/4 v11, 0x0

    .local v11, "isMatchingRegistered":Z
    goto/16 :goto_1

    .line 175
    .local v11, "isMatchingRegistered":Z
    :cond_9
    if-eqz v13, :cond_8

    .line 176
    invoke-interface/range {v17 .. v17}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    :cond_a
    const/4 v11, 0x0

    :goto_5
    goto/16 :goto_1

    :cond_b
    invoke-interface/range {v17 .. v17}, Ljavax2/sip/address/SipURI;->getPort()I

    move-result v21

    move/from16 v0, v21

    if-ne v14, v0, :cond_a

    const/4 v11, 0x1

    goto :goto_5

    .line 186
    .end local v11    # "isMatchingRegistered":Z
    .end local v13    # "natPublicIpAddress":Ljava/lang/String;
    .end local v14    # "natPublicUdpPort":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_d

    :goto_6
    const/16 v21, 0x194

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 190
    return-void

    .line 187
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Request-URI address and port do not match with registered contact: reject the request"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 200
    .restart local v9    # "instanceId":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getInstanceId()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/StringUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_f

    :goto_7
    const/16 v21, 0x1e6

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 208
    return-void

    .line 205
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "SIP instance ID doesn\'t match: reject the request"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 218
    .restart local v15    # "publicGruu":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getPublicGruu()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_11

    :goto_8
    const/16 v21, 0x1e6

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 225
    return-void

    .line 222
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "SIP public-gruu doesn\'t match: reject the request"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .restart local v20    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    :cond_12
    const-string/jumbo v21, "Contact"

    .line 231
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v5

    check-cast v5, Ljavax2/sip/header/ContactHeader;

    .line 232
    .local v5, "contactHeader":Ljavax2/sip/header/ContactHeader;
    if-eqz v5, :cond_3

    const-string/jumbo v21, "+sip.instance"

    .line 233
    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljavax2/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 234
    .local v16, "remoteInstanceId":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteSipInstance(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 240
    .end local v5    # "contactHeader":Ljavax2/sip/header/ContactHeader;
    .end local v16    # "remoteInstanceId":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v21

    if-nez v21, :cond_14

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->isCallConnected()Z

    move-result v21

    if-nez v21, :cond_15

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->receiveCapabilityRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 242
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->receiveCapabilityRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 245
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->receiveCapabilityRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 255
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getTo()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsUserName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 265
    if-nez v20, :cond_20

    .line 272
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->send100Trying(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSdpContent()Ljava/lang/String;

    move-result-object v19

    .line 276
    .local v19, "sdp":Ljava/lang/String;
    if-eqz v19, :cond_21

    .line 284
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v21, "msrp"

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_23

    :cond_17
    :goto_9
    const-string/jumbo v21, "msrp"

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_29

    :cond_18
    const-string/jumbo v21, "msrp"

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2d

    :cond_19
    const-string/jumbo v21, "rtp"

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_40

    :cond_1a
    const-string/jumbo v21, "msrp"

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_44

    :cond_1b
    const-string/jumbo v21, "+g.gsma.rcs.ipcall"

    .line 437
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_48

    :cond_1c
    const-string/jumbo v21, "+g.gsma.rcs.ipcall"

    .line 455
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4c

    .line 472
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->intentMgr:Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;->isSipRequestResolved(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Landroid/content/Intent;

    move-result-object v10

    .line 473
    .local v10, "intent":Landroid/content/Intent;
    if-nez v10, :cond_50

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_52

    .line 483
    :goto_a
    invoke-static {}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isEnrichedCallingEnabled()Z

    move-result v21

    if-nez v21, :cond_53

    const/16 v21, 0x1e8

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 257
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v19    # "sdp":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_1f

    :goto_b
    const/16 v21, 0x194

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 261
    return-void

    .line 258
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Request number doesn\'t match with the contact: reject the request"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 267
    :cond_20
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->receiveReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 268
    return-void

    .line 278
    .restart local v19    # "sdp":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_22

    :goto_c
    const/16 v21, 0x25e

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 282
    return-void

    .line 279
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "No SDP found: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    :cond_23
    const-string/jumbo v21, "+g.3gpp.cs-voice"

    .line 287
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_17

    const-string/jumbo v21, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 292
    :cond_24
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImageSharingSupported()Z

    move-result v21

    if-nez v21, :cond_26

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_28

    :goto_d
    const/16 v21, 0x25b

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    :cond_25
    const-string/jumbo v21, "+g.3gpp.app_ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    .line 287
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_24

    goto/16 :goto_9

    .line 293
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_27

    .line 296
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->receiveImageSharingInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 294
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Image content sharing transfer invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_e

    .line 301
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Image share service not supported: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_d

    :cond_29
    const-string/jumbo v21, "+g.oma.sip-im"

    .line 305
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_18

    const-string/jumbo v21, "file-selector"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 309
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferSupported()Z

    move-result v21

    if-nez v21, :cond_2a

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_2c

    :goto_f
    const/16 v21, 0x25b

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 310
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_2b

    .line 313
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 311
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "File transfer invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_10

    .line 318
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "File transfer service not supported: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_f

    :cond_2d
    const-string/jumbo v21, "+g.oma.sip-im"

    .line 322
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 325
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImSessionSupported()Z

    move-result v21

    if-eqz v21, :cond_2f

    .line 334
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isFileTransferOverHttp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v21

    if-nez v21, :cond_31

    .line 362
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "rcse-standfw"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_37

    .line 371
    :cond_2e
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isGroupChatInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v21

    if-nez v21, :cond_39

    .line 388
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getReferredByHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_3d

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_3f

    .line 400
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveOne2OneChatSession(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 328
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_30

    :goto_12
    const/16 v21, 0x25b

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 332
    return-void

    .line 329
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "IM service not supported: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_12

    .line 335
    :cond_31
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getHttpFTInfo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    move-result-object v7

    .line 336
    .local v7, "ftHttpInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    if-nez v7, :cond_32

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_36

    :goto_13
    const/16 v21, 0x25e

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 338
    :cond_32
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getReferredByHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_33

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_35

    .line 349
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveHttpFileTranferInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;)V

    goto/16 :goto_3

    .line 339
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_34

    .line 342
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveStoredAndForwardHttpFileTranferInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;)V

    goto/16 :goto_3

    .line 340
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Single S&F file transfer over HTTP invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_15

    .line 347
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Single file transfer over HTTP invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_14

    .line 357
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Malformed xml for FToHTTP: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_13

    .line 362
    .end local v7    # "ftHttpInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentType()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "multipart"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2e

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_38

    .line 369
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveStoredAndForwardPushNotifications(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 367
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Store & Forward push notifications"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_16

    .line 373
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_3a

    .line 376
    :goto_17
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getContributionId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->isIdleGroupChatSessionTerminated(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_3b

    .line 381
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3c

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveAdhocGroupChatSession(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 374
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Ad-hoc group chat session invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_17

    :cond_3b
    const/16 v21, 0x25b

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 379
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getContributionId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatSessionTerminatedByUser(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3c
    const/16 v21, 0x25b

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 390
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_3e

    .line 393
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveStoredAndForwardPushMessages(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 391
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Store & Forward push messages session"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_18

    .line 398
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "1-1 chat session invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_40
    const-string/jumbo v21, "+g.3gpp.cs-voice"

    .line 403
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 406
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isVideoSharingSupported()Z

    move-result v21

    if-nez v21, :cond_41

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_43

    :goto_19
    const/16 v21, 0x25b

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 407
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_42

    .line 410
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->receiveVideoSharingInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 408
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Video content sharing streaming invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1a

    .line 415
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Video share service not supported: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_19

    :cond_44
    const-string/jumbo v21, "+g.3gpp.cs-voice"

    .line 419
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1b

    const-string/jumbo v21, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 424
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGeoLocationPushSupported()Z

    move-result v21

    if-nez v21, :cond_45

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_47

    :goto_1b
    const/16 v21, 0x25b

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 425
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_46

    .line 428
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->receiveGeolocSharingInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 426
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Geoloc content sharing transfer invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1c

    .line 433
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Geoloc share service not supported: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1b

    :cond_48
    const-string/jumbo v21, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    .line 437
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1c

    const-string/jumbo v21, "video"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1c

    .line 442
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isIPVoiceCallSupported()Z

    move-result v21

    if-nez v21, :cond_49

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_4b

    :goto_1d
    const/16 v21, 0x25b

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 443
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_4a

    .line 446
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->receiveIPCallInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ZZ)V

    goto/16 :goto_3

    .line 444
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "IP Voice call invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1e

    .line 451
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "IP Voice call service not supported: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1d

    :cond_4c
    const-string/jumbo v21, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    .line 455
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1d

    const-string/jumbo v21, "video"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->isFeatureTagPresent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 459
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isIPVideoCallSupported()Z

    move-result v21

    if-nez v21, :cond_4d

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_4f

    :goto_1f
    const/16 v21, 0x25b

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 460
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_4e

    .line 463
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->receiveIPCallInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;ZZ)V

    goto/16 :goto_3

    .line 461
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "IP video call invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_20

    .line 467
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "IP video call service not supported: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1f

    .line 475
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_51

    .line 478
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->receiveSessionInvitation(Landroid/content/Intent;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 476
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Generic SIP session invitation"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_21

    .line 481
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Unknown IMS service: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_53
    const/16 v21, 0x193

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 496
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v19    # "sdp":Ljava/lang/String;
    :cond_54
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isImdnService(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v21

    if-nez v21, :cond_55

    .line 499
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->isTermsRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v21

    if-nez v21, :cond_56

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->intentMgr:Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;->isSipRequestResolved(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Landroid/content/Intent;

    move-result-object v10

    .line 504
    .restart local v10    # "intent":Landroid/content/Intent;
    if-nez v10, :cond_57

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_59

    :goto_22
    const/16 v21, 0x25e

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    goto/16 :goto_3

    .line 498
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveMessageDeliveryStatus(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 501
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getTermsConditionsService()Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->receiveMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 506
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_58

    .line 509
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->receiveInstantMessage(Landroid/content/Intent;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 507
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Generic instant message"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_23

    .line 514
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Unknown IMS service: automatically reject"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_22

    .line 521
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_5a
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->dispatchNotify(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 527
    :cond_5b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_5d

    :goto_24
    const/16 v21, 0xc8

    .line 530
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v18

    .line 531
    .local v18, "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 539
    .end local v18    # "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_5c
    :goto_25
    if-eqz v20, :cond_4

    .line 540
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 528
    :cond_5d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Send 200 OK"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_24

    .line 536
    :catch_1
    move-exception v6

    .line 533
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-eqz v21, :cond_5c

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Can\'t send 200 OK response"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 547
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-nez v21, :cond_60

    :goto_26
    const/16 v21, 0xc8

    .line 550
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    .line 551
    .local v4, "cancelResp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 559
    .end local v4    # "cancelResp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_5f
    :goto_27
    if-eqz v20, :cond_4

    .line 560
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->receiveCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 548
    :cond_60
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Send 200 OK"

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_26

    .line 556
    :catch_2
    move-exception v6

    .line 553
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v21

    if-eqz v21, :cond_5f

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    const-string/jumbo v22, "Can\'t send 200 OK response"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    .line 564
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_61
    if-eqz v20, :cond_4

    .line 565
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->receiveUpdate(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto/16 :goto_3

    .line 570
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unknown request "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private dispatchNotify(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 5
    .param p1, "notify"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/16 v3, 0xc8

    .line 583
    :try_start_0
    invoke-static {p1, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v2

    .line 586
    .local v2, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_0
    const-string/jumbo v3, "Event"

    .line 594
    invoke-virtual {p1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/EventHeader;

    .line 595
    .local v1, "eventHeader":Ljavax2/sip/header/EventHeader;
    if-eqz v1, :cond_2

    .line 603
    invoke-interface {v1}, Ljavax2/sip/header/EventHeader;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "presence.winfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 610
    invoke-interface {v1}, Ljavax2/sip/header/EventHeader;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "presence"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 618
    invoke-interface {v1}, Ljavax2/sip/header/EventHeader;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "conference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 623
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_8

    .line 627
    :cond_1
    :goto_1
    return-void

    .line 591
    .end local v1    # "eventHeader":Ljavax2/sip/header/EventHeader;
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t send 200 OK for NOTIFY"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 596
    .end local v0    # "e":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
    .restart local v1    # "eventHeader":Ljavax2/sip/header/EventHeader;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 599
    :goto_2
    return-void

    .line 597
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Unknown notification event type"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 605
    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSocialPresenceSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getPresenceService()Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->isServiceStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 607
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getPresenceService()Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->getWatcherInfoSubscriber()Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_1

    .line 611
    :cond_5
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getTo()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "anonymous"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 616
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getPresenceService()Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->getPresenceSubscriber()Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_1

    .line 613
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_1

    .line 620
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveConferenceNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    goto :goto_1

    .line 624
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Not supported notification event type"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private isTagPresent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 637
    if-nez p1, :cond_1

    .line 640
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 637
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method private searchSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 651
    if-eqz p1, :cond_0

    .line 654
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsServices()[Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    .local v2, "list":[Lcom/sonymobile/rcs/core/ims/service/ImsService;
    const/4 v1, 0x0

    .line 655
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    .line 664
    return-object v5

    .line 652
    .end local v1    # "i":I
    .end local v2    # "list":[Lcom/sonymobile/rcs/core/ims/service/ImsService;
    :cond_0
    return-object v5

    .line 656
    .restart local v1    # "i":I
    .restart local v2    # "list":[Lcom/sonymobile/rcs/core/ims/service/ImsService;
    :cond_1
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_3

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 658
    .local v3, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 659
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 660
    return-object v3
.end method

.method private send100Trying(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 675
    :try_start_0
    invoke-static {p1, v3, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 676
    .local v1, "trying":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v1    # "trying":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t send a 100 Trying response"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendFinalResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V
    .locals 5
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "code"    # I

    .prologue
    .line 692
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 694
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 697
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t send a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public postSipRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/utils/FifoBuffer;->addObject(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 119
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const/4 v1, 0x0

    .line 123
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/FifoBuffer;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .local v1, "request":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    if-nez v1, :cond_2

    .line 133
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    :goto_2
    return-void

    .line 120
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Start background processing"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .restart local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_2
    :try_start_0
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->dispatch(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Unexpected exception"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "End of background processing"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/FifoBuffer;->close()V

    .line 101
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :goto_1
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terminate the multi-session manager"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceDispatcher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Multi-session manager has been terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method
