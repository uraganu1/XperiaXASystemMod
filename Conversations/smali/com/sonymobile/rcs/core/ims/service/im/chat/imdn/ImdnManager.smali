.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;
.super Ljava/lang/Thread;
.source "ImdnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;
    }
.end annotation


# instance fields
.field private activated:Z

.field private buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

.field private imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;)V
    .locals 1
    .param p1, "imsService"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 55
    new-instance v0, Lcom/sonymobile/rcs/utils/FifoBuffer;

    invoke-direct {v0}, Lcom/sonymobile/rcs/utils/FifoBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 73
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    .line 74
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImReportsActivated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->activated:Z

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;
    .param p1, "x1"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendSipMessageDeliveryStatus(Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;Ljava/lang/String;)V

    return-void
.end method

.method private sendSipMessageDeliveryStatus(Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;Ljava/lang/String;)V
    .locals 22
    .param p1, "deliveryStatus"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;
    .param p2, "remoteInstanceId"    # Ljava/lang/String;

    .prologue
    .line 164
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isReadNotification()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_0
    const-string/jumbo v17, "sip:anonymous@anonymous.invalid"

    .local v17, "from":Ljava/lang/String;
    const-string/jumbo v21, "sip:anonymous@anonymous.invalid"

    .line 175
    .local v21, "to":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getMsgId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildDeliveryReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 177
    .local v18, "imdn":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getMsgId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getIMDNRecordRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 178
    .local v20, "route":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimDeliveryReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 179
    .local v14, "cpim":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getContact()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 182
    .local v10, "contactUri":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    .line 186
    .local v4, "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    new-instance v5, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x1

    sget-object v11, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getServiceRoutePath()Ljava/util/Vector;

    move-result-object v13

    move-object v12, v10

    invoke-direct/range {v5 .. v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 191
    .local v5, "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteSipInstance(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_5

    :goto_1
    const-string/jumbo v6, "+g.oma.sip-im"

    const-string/jumbo v7, "message/cpim"

    .line 197
    invoke-static {v5, v6, v7, v14}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v19

    .line 201
    .local v19, "msg":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v15

    .line 205
    .local v15, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0x197

    if-eq v6, v7, :cond_6

    .line 243
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_b

    .line 245
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_c

    .line 260
    .end local v4    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .end local v5    # "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .end local v10    # "contactUri":Ljava/lang/String;
    .end local v14    # "cpim":Ljava/lang/String;
    .end local v15    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v17    # "from":Ljava/lang/String;
    .end local v18    # "imdn":Ljava/lang/String;
    .end local v19    # "msg":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v20    # "route":Ljava/lang/String;
    .end local v21    # "to":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v6, "displayed"

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    return-void

    .line 168
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Send delivery status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getMsgId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 259
    :catch_0
    move-exception v16

    .line 256
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Delivery report has failed"

    move-object/from16 v0, v16

    invoke-virtual {v6, v7, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 195
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v4    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .restart local v5    # "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .restart local v10    # "contactUri":Ljava/lang/String;
    .restart local v14    # "cpim":Ljava/lang/String;
    .restart local v17    # "from":Ljava/lang/String;
    .restart local v18    # "imdn":Ljava/lang/String;
    .restart local v20    # "route":Ljava/lang/String;
    .restart local v21    # "to":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Send first MESSAGE"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 207
    .restart local v15    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v19    # "msg":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_8

    .line 212
    :goto_3
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 215
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 218
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_9

    :goto_4
    const-string/jumbo v6, "+g.oma.sip-im"

    const-string/jumbo v7, "message/cpim"

    .line 221
    invoke-static {v5, v6, v7, v14}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v19

    .line 225
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v15

    .line 231
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_a

    .line 233
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "20x OK response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 208
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "407 response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 219
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Send second MESSAGE"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_4

    .line 231
    :cond_a
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0xca

    if-eq v6, v7, :cond_7

    .line 238
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Delivery report has failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " response received"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 243
    :cond_b
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    const/16 v7, 0xca

    if-eq v6, v7, :cond_1

    .line 250
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Delivery report has failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " response received"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 246
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "20x OK response received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public isImdnActivated()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->activated:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 100
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const/4 v0, 0x0

    .line 104
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/FifoBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;

    .local v0, "delivery":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;
    if-nez v0, :cond_2

    .line 118
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 121
    :goto_2
    return-void

    .line 101
    .end local v0    # "delivery":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Start background processing"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "delivery":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;
    :cond_2
    const/4 v2, 0x0

    .line 107
    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendSipMessageDeliveryStatus(Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->getContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Unexpected exception"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "End of background processing"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public sendMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v0, "delivery":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/utils/FifoBuffer;->addObject(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public sendMessageDeliveryStatusImmediately(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "remoteInstanceId"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v0, "delivery":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$1;

    invoke-direct {v1, p0, v0, p4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;Ljava/lang/String;)V

    .line 153
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->buffer:Lcom/sonymobile/rcs/utils/FifoBuffer;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/FifoBuffer;->close()V

    .line 85
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terminate the IMDN manager"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
