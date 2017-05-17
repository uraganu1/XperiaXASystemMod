.class public Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;
.super Lcom/sonymobile/rcs/core/ims/service/ImsService;
.source "TermsConditionsService.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private remoteServer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Z)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 106
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getEndUserConfirmationRequestUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->remoteServer:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private getRemoteIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 385
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isTermsRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z
    .locals 3
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 402
    :goto_0
    return v2

    :cond_0
    const-string/jumbo v1, "application/end-user"

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const-string/jumbo v1, "application/system-request"

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method private sendSipMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "pin"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 276
    invoke-static/range {p2 .. p2}, Lcom/sonymobile/rcs/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 283
    const/16 v16, 0x0

    .line 285
    .local v16, "result":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_6

    .line 290
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<?xml version=\"1.0\" standalone=\"yes\"?><EndUserConfirmationResponse id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" value=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 292
    .local v15, "response":Ljava/lang/String;
    if-nez p4, :cond_7

    .line 295
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 298
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    .line 302
    .local v2, "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    sget-object v8, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getServiceRoutePath()Ljava/util/Vector;

    move-result-object v11

    move-object/from16 v8, p1

    move-object/from16 v10, p1

    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 308
    .local v3, "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_8

    :goto_2
    const-string/jumbo v4, "application/end-user-confirmation-response+xml"

    .line 311
    invoke-static {v3, v4, v15}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v14

    .line 315
    .local v14, "msg":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v12

    .line 318
    .local v12, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    const/16 v5, 0x197

    if-eq v4, v5, :cond_9

    .line 356
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_f

    .line 358
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_10

    .line 361
    :goto_3
    const/16 v16, 0x1

    .line 374
    .end local v2    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .end local v3    # "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .end local v12    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v14    # "msg":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v15    # "response":Ljava/lang/String;
    :cond_1
    :goto_4
    return v16

    .line 270
    .end local v16    # "result":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 273
    :goto_5
    const/4 v4, 0x0

    return v4

    .line 271
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Remote URI not set"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 277
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_5

    .line 280
    :goto_6
    const/4 v4, 0x0

    return v4

    .line 278
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Request ID not set"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_6

    .line 286
    .restart local v16    # "result":Z
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send SIP response"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 373
    :catch_0
    move-exception v13

    .line 370
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t send MESSAGE request"

    invoke-virtual {v4, v5, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 293
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "response":Ljava/lang/String;
    :cond_7
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pin=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 309
    .restart local v2    # "authenticationAgent":Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .restart local v3    # "dialogPath":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send first MESSAGE"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 320
    .restart local v12    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v14    # "msg":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_b

    .line 325
    :goto_7
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 328
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_c

    :goto_8
    const-string/jumbo v4, "application/end-user-confirmation-response+xml"

    .line 334
    invoke-static {v3, v4, v15}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v14

    .line 337
    invoke-virtual {v2, v14}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v12

    .line 343
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_d

    .line 345
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_e

    .line 348
    :goto_9
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 321
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "407 response received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_7

    .line 332
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send second MESSAGE"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_8

    .line 343
    :cond_d
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    const/16 v5, 0xca

    if-eq v4, v5, :cond_a

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Delivery report has failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " response received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 346
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "20x OK response received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_9

    .line 356
    :cond_f
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v4

    const/16 v5, 0xca

    if-eq v4, v5, :cond_0

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Delivery report has failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " response received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 359
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "20x OK response received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method


# virtual methods
.method public acceptTerms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->remoteServer:Ljava/lang/String;

    const-string/jumbo v1, "accept"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->sendSipMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send response for request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiveMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 18
    .param p1, "message"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v17

    .line 154
    .local v17, "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    .line 165
    .local v13, "lang":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/end-user-confirmation-request+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/system-request+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/end-user-confirmation-ack+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/end-user-notification-request+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_8

    .line 225
    .end local v13    # "lang":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 144
    .end local v17    # "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Receive terms message"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Send 200 OK"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v11

    .line 156
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 159
    :goto_3
    return-void

    .line 157
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Can\'t send 200 OK response"

    invoke-virtual {v1, v2, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 167
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v13    # "lang":Ljava/lang/String;
    .restart local v17    # "response":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_4
    :try_start_3
    new-instance v12, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 169
    .local v12, "input":Lorg/xml/sax/InputSource;
    new-instance v16, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v13}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;-><init>(Lorg/xml/sax/InputSource;Ljava/lang/String;)V

    .line 172
    .local v16, "parser":Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getRemoteIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getPin()Z

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getButtonAccept()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getButtonReject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getTimeout()I

    move-result v10

    invoke-interface/range {v1 .. v10}, Lcom/sonymobile/rcs/core/CoreListener;->handleUserConfirmationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 224
    .end local v12    # "input":Lorg/xml/sax/InputSource;
    .end local v13    # "lang":Ljava/lang/String;
    .end local v16    # "parser":Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;
    :catch_1
    move-exception v11

    .line 221
    .restart local v11    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Can\'t parse terms request"

    invoke-virtual {v1, v2, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 181
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v13    # "lang":Ljava/lang/String;
    :cond_5
    :try_start_4
    new-instance v12, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 183
    .restart local v12    # "input":Lorg/xml/sax/InputSource;
    new-instance v16, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v13}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;-><init>(Lorg/xml/sax/InputSource;Ljava/lang/String;)V

    .line 186
    .restart local v16    # "parser":Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getRemoteIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/CoreListener;->handleSystemRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 193
    .end local v12    # "input":Lorg/xml/sax/InputSource;
    .end local v16    # "parser":Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;
    :cond_6
    new-instance v12, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 195
    .restart local v12    # "input":Lorg/xml/sax/InputSource;
    new-instance v15, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;

    invoke-direct {v15, v12}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 198
    .local v15, "parser":Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getRemoteIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/sonymobile/rcs/core/CoreListener;->handleUserConfirmationAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 205
    .end local v12    # "input":Lorg/xml/sax/InputSource;
    .end local v15    # "parser":Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;
    :cond_7
    new-instance v12, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 207
    .restart local v12    # "input":Lorg/xml/sax/InputSource;
    new-instance v14, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;

    invoke-direct {v14, v12, v13}, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;-><init>(Lorg/xml/sax/InputSource;Ljava/lang/String;)V

    .line 210
    .local v14, "parser":Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->getRemoteIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->getButtonOk()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/sonymobile/rcs/core/CoreListener;->handleUserNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 217
    .end local v12    # "input":Lorg/xml/sax/InputSource;
    .end local v14    # "parser":Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown terms request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2
.end method

.method public rejectTerms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->remoteServer:Ljava/lang/String;

    const-string/jumbo v1, "decline"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->sendSipMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send response for request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->setServiceStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 118
    return-void

    :cond_0
    monitor-exit p0

    .line 115
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;->setServiceStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 129
    return-void

    :cond_0
    monitor-exit p0

    .line 126
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
