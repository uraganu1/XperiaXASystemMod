.class public Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;
.super Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
.source "TerminatingSipSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 3
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 60
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFeatureTags()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 63
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 66
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->setRemoteSdp(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 74
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->send180Ringing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->waitInvitationAnswer()I

    move-result v8

    .local v8, "answer":I
    const/4 v2, 0x2

    .line 83
    if-eq v8, v2, :cond_3

    .line 97
    if-eqz v8, :cond_6

    const/4 v2, 0x3

    .line 114
    if-eq v8, v2, :cond_9

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSdpContent()Ljava/lang/String;

    move-result-object v19

    .line 123
    .local v19, "remoteSdp":Ljava/lang/String;
    new-instance v18, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 124
    .local v18, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v16

    .local v16, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v2, 0x0

    .line 125
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .local v17, "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v2, "path"

    .line 126
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v9

    .line 127
    .local v9, "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "remotePath":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "remoteHost":Ljava/lang/String;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .local v4, "remotePort":I
    const/4 v7, 0x0

    .local v7, "fingerprint":Ljava/lang/String;
    const-string/jumbo v2, "fingerprint"

    .line 133
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "fingerprint"

    .line 135
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v2

    if-nez v2, :cond_c

    .end local v7    # "fingerprint":Ljava/lang/String;
    :goto_1
    const-string/jumbo v20, "passive"

    .local v20, "remoteSetup":Ljava/lang/String;
    const-string/jumbo v2, "setup"

    .line 140
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v10

    .line 141
    .local v10, "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v10, :cond_d

    .line 144
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_e

    .line 149
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 150
    .local v15, "localSetup":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_f

    .line 155
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->generateSdp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 158
    .local v22, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->isSessionInterrupted()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_11

    .line 165
    :goto_5
    return-void

    .line 75
    .end local v3    # "remoteHost":Ljava/lang/String;
    .end local v4    # "remotePort":I
    .end local v5    # "remotePath":Ljava/lang/String;
    .end local v8    # "answer":I
    .end local v9    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v10    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v15    # "localSetup":Ljava/lang/String;
    .end local v16    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v17    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v18    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v19    # "remoteSdp":Ljava/lang/String;
    .end local v20    # "remoteSetup":Ljava/lang/String;
    .end local v22    # "sdp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Initiate a new session as terminating"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 262
    :catch_0
    move-exception v12

    .line 256
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_19

    .line 261
    :goto_6
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;

    const/4 v6, 0x1

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v2, v6, v0}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 263
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_7
    return-void

    .line 84
    .restart local v8    # "answer":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 89
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v13, 0x0

    .line 92
    .local v13, "i":I
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v13, v2, :cond_5

    .line 96
    return-void

    .line 85
    .end local v13    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session has been rejected by user"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 93
    .restart local v13    # "i":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 92
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 98
    .end local v13    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_7

    .line 103
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->send486Busy(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v14, 0x0

    .line 109
    .local v14, "j":I
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v14, v2, :cond_8

    .line 113
    return-void

    .line 99
    .end local v14    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session has been rejected on timeout"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 110
    .restart local v14    # "j":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v6, 0x2

    invoke-interface {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 109
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 115
    .end local v14    # "j":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_a

    .line 118
    :goto_c
    return-void

    .line 116
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session has been canceled"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .restart local v3    # "remoteHost":Ljava/lang/String;
    .restart local v4    # "remotePort":I
    .restart local v5    # "remotePath":Ljava/lang/String;
    .restart local v7    # "fingerprint":Ljava/lang/String;
    .restart local v9    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v16    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v17    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v18    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v19    # "remoteSdp":Ljava/lang/String;
    :cond_b
    const-string/jumbo v2, "fingerprint"

    .line 134
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    .local v7, "fingerprint":Ljava/lang/String;
    goto/16 :goto_1

    .local v7, "fingerprint":Ljava/lang/String;
    :cond_c
    const-string/jumbo v2, "fingerprint"

    .line 136
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    .local v7, "fingerprint":Ljava/lang/String;
    goto/16 :goto_1

    .line 142
    .end local v7    # "fingerprint":Ljava/lang/String;
    .restart local v10    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v20    # "remoteSetup":Ljava/lang/String;
    :cond_d
    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 145
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Remote setup attribute is "

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 151
    .restart local v15    # "localSetup":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Local setup attribute is "

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 161
    .restart local v22    # "sdp":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "passive"

    .line 169
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 199
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_13

    .line 203
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->create200OKResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v21

    .line 206
    .local v21, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v11

    .line 210
    .local v11, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v2

    if-nez v2, :cond_14

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_18

    .line 253
    :goto_f
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;

    const/16 v6, 0x65

    invoke-direct {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/sip/SipSessionError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_7

    .line 163
    .end local v11    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v21    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session has been interrupted: end of processing"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 171
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v5, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpServerSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v23

    .line 172
    .local v23, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->mMsrpFailureReportOption:Z

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 173
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->mMsrpSuccessReportOption:Z

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 176
    new-instance v24, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;)V

    .line 191
    .local v24, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->start()V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    goto :goto_d

    .line 200
    .end local v23    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .end local v24    # "thread":Ljava/lang/Thread;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Send 200 OK"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_e

    .line 212
    .restart local v11    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v21    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_15

    .line 217
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    const-string/jumbo v2, "active"

    .line 220
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 238
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z

    move-result v2

    if-nez v2, :cond_17

    :goto_12
    const/4 v14, 0x0

    .line 244
    .restart local v14    # "j":I
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionStarted()V

    .line 244
    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    .line 213
    .end local v14    # "j":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "ACK request received"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_10

    .line 222
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v23

    .line 224
    .restart local v23    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->mMsrpFailureReportOption:Z

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->mMsrpSuccessReportOption:Z

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->sendEmptyDataChunk()V

    goto :goto_11

    .line 239
    .end local v23    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v2

    const-string/jumbo v6, "uas"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v2, v6, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->start(Ljava/lang/String;I)V

    goto :goto_12

    .line 249
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "No ACK received for INVITE"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_f

    .line 257
    .end local v3    # "remoteHost":Ljava/lang/String;
    .end local v4    # "remotePort":I
    .end local v5    # "remotePath":Ljava/lang/String;
    .end local v8    # "answer":I
    .end local v9    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v10    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v11    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v15    # "localSetup":Ljava/lang/String;
    .end local v16    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v17    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v18    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v19    # "remoteSdp":Ljava/lang/String;
    .end local v20    # "remoteSetup":Ljava/lang/String;
    .end local v21    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v22    # "sdp":Ljava/lang/String;
    .restart local v12    # "e":Ljava/lang/Exception;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session initiation has failed"

    invoke-virtual {v2, v6, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method
