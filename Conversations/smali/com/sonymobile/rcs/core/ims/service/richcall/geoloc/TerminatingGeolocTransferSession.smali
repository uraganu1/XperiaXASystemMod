.class public Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;
.super Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;
.source "TerminatingGeolocTransferSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 75
    invoke-static {p2}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromSdp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 79
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public closeMediaSession()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    if-nez v0, :cond_0

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    :goto_1
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->closeSession()V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "MSRP session has been closed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public msrpDataReceived(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 7
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 336
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->geolocTransfered()V

    .line 340
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    .line 341
    .local v2, "geolocDoc":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseGeolocDocument(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    move-result-object v1

    .local v1, "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    const/4 v3, 0x0

    .line 344
    .local v3, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v3, v4, :cond_2

    .line 356
    .end local v1    # "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .end local v2    # "geolocDoc":Ljava/lang/String;
    :cond_0
    return-void

    .line 332
    .end local v3    # "j":I
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Data received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    .restart local v1    # "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .restart local v2    # "geolocDoc":Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSessionListener;

    invoke-interface {v4, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSessionListener;->handleContentTransfered(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 355
    .end local v1    # "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .end local v2    # "geolocDoc":Ljava/lang/String;
    .end local v3    # "j":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 350
    .restart local v3    # "j":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSessionListener;

    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v6, 0x84

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    invoke-interface {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public msrpDataTransfered(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 321
    return-void
.end method

.method public msrpTransferAborted()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Data transfer aborted"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .prologue
    const/4 v4, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->isSessionInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSessionTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->terminateSession(I)V

    .line 409
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->closeMediaSession()V

    .line 412
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 416
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v0, 0x0

    .line 419
    .local v0, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 424
    return-void

    .line 402
    .end local v0    # "j":I
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data transfer error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    .restart local v0    # "j":I
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v3, 0x84

    invoke-direct {v2, v3, p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public msrpTransferProgress(JJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 366
    return-void
.end method

.method public msrpTransferProgress(JJ[B)Z
    .locals 1
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "data"    # [B

    .prologue
    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public prepareMediaSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 433
    return-void
.end method

.method public run()V
    .locals 34

    .prologue
    .line 87
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->send180Ringing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->waitInvitationAnswer()I

    move-result v8

    .local v8, "answer":I
    const/4 v2, 0x2

    .line 110
    if-eq v8, v2, :cond_4

    .line 124
    if-eqz v8, :cond_7

    const/4 v2, 0x3

    .line 141
    if-eq v8, v2, :cond_a

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSdpContent()Ljava/lang/String;

    move-result-object v26

    .line 150
    .local v26, "remoteSdp":Ljava/lang/String;
    new-instance v25, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 151
    .local v25, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v22

    .local v22, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v2, 0x0

    .line 152
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .local v23, "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v2, "file-selector"

    .line 153
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v9

    .line 154
    .local v9, "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, "fileSelector":Ljava/lang/String;
    const-string/jumbo v2, "file-transfer-id"

    .line 155
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v10

    .line 156
    .local v10, "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, "fileTransferId":Ljava/lang/String;
    const-string/jumbo v2, "path"

    .line 157
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v11

    .line 158
    .local v11, "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "remotePath":Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "remoteHost":Ljava/lang/String;
    move-object/from16 v0, v23

    iget v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .local v4, "remotePort":I
    const-string/jumbo v27, "passive"

    .local v27, "remoteSetup":Ljava/lang/String;
    const-string/jumbo v2, "setup"

    .line 164
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v12

    .line 165
    .local v12, "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v12, :cond_c

    .line 168
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_d

    .line 173
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 174
    .local v21, "localSetup":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_e

    :goto_3
    const-string/jumbo v2, "active"

    .line 180
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 183
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v20

    .line 187
    .local v20, "localMsrpPort":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v19

    .line 189
    .local v19, "localIpAddress":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v24

    .line 193
    .local v24, "ntpTime":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v18

    .line 194
    .local v18, "ipAddress":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "v=0\r\no=- "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "s=-"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "c="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "t=0 0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "m=message "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " TCP/MSRP *"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "a="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "a="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "a=accept-types:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "a=setup:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "a=path:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "a=recvonly"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 204
    .local v29, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    const-string/jumbo v2, "passive"

    .line 207
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 231
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_11

    .line 234
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    sget-object v6, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_IMAGE_SHARE:[Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-static {v2, v6, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v28

    .line 238
    .local v28, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v13

    .line 244
    .local v13, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractFingerprint(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "fingerprint":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v2

    if-nez v2, :cond_12

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_16

    .line 284
    :goto_7
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v6, 0x65

    invoke-direct {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v3    # "remoteHost":Ljava/lang/String;
    .end local v4    # "remotePort":I
    .end local v5    # "remotePath":Ljava/lang/String;
    .end local v7    # "fingerprint":Ljava/lang/String;
    .end local v8    # "answer":I
    .end local v9    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v10    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v11    # "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v12    # "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v13    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v15    # "fileSelector":Ljava/lang/String;
    .end local v16    # "fileTransferId":Ljava/lang/String;
    .end local v18    # "ipAddress":Ljava/lang/String;
    .end local v19    # "localIpAddress":Ljava/lang/String;
    .end local v20    # "localMsrpPort":I
    .end local v21    # "localSetup":Ljava/lang/String;
    .end local v22    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v23    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v24    # "ntpTime":Ljava/lang/String;
    .end local v25    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v26    # "remoteSdp":Ljava/lang/String;
    .end local v27    # "remoteSetup":Ljava/lang/String;
    .end local v28    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v29    # "sdp":Ljava/lang/String;
    :cond_0
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_18

    .line 299
    :goto_9
    return-void

    .line 88
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Initiate a new sharing session as terminating"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 294
    :catch_0
    move-exception v14

    .line 287
    .local v14, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_17

    .line 292
    :goto_a
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/4 v6, 0x1

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v2, v6, v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_8

    .line 96
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->send415Error(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 104
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v6, 0x86

    invoke-direct {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 105
    return-void

    .line 97
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "MIME type is not supported"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 111
    .restart local v8    # "answer":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 116
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/16 v17, 0x0

    .line 119
    .local v17, "i":I
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_6

    .line 123
    return-void

    .line 112
    .end local v17    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session has been rejected by user"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .line 120
    .restart local v17    # "i":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 119
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 125
    .end local v17    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_8

    .line 130
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->send486Busy(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/16 v17, 0x0

    .line 136
    .restart local v17    # "i":I
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_9

    .line 140
    return-void

    .line 126
    .end local v17    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session has been rejected on timeout"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_e

    .line 137
    .restart local v17    # "i":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v6, 0x2

    invoke-interface {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 136
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 142
    .end local v17    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_b

    .line 145
    :goto_10
    return-void

    .line 143
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session has been canceled"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_10

    .line 166
    .restart local v3    # "remoteHost":Ljava/lang/String;
    .restart local v4    # "remotePort":I
    .restart local v5    # "remotePath":Ljava/lang/String;
    .restart local v9    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v10    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v11    # "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v12    # "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v15    # "fileSelector":Ljava/lang/String;
    .restart local v16    # "fileTransferId":Ljava/lang/String;
    .restart local v22    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v23    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v25    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v26    # "remoteSdp":Ljava/lang/String;
    .restart local v27    # "remoteSetup":Ljava/lang/String;
    :cond_c
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_1

    .line 169
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Remote setup attribute is "

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 175
    .restart local v21    # "localSetup":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Local setup attribute is "

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    const/16 v20, 0x9

    .line 181
    .restart local v20    # "localMsrpPort":I
    goto/16 :goto_4

    .line 209
    .restart local v18    # "ipAddress":Ljava/lang/String;
    .restart local v19    # "localIpAddress":Ljava/lang/String;
    .restart local v24    # "ntpTime":Ljava/lang/String;
    .restart local v29    # "sdp":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v5, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpServerSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .line 212
    new-instance v30, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;)V

    .line 227
    .local v30, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    .line 232
    .end local v30    # "thread":Ljava/lang/Thread;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Send 200 OK"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 249
    .restart local v7    # "fingerprint":Ljava/lang/String;
    .restart local v13    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v28    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_13

    :goto_11
    const/16 v17, 0x0

    .line 254
    .restart local v17    # "i":I
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_14

    const-string/jumbo v2, "active"

    .line 259
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 271
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v2

    const-string/jumbo v6, "uas"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v2, v6, v0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->start(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 250
    .end local v17    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "ACK request received"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_11

    .line 255
    .restart local v17    # "i":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionStarted()V

    .line 254
    add-int/lit8 v17, v17, 0x1

    goto :goto_12

    .line 261
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    const/16 v6, 0x1e

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession(I)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->sendEmptyDataChunk()V

    goto :goto_13

    .line 280
    .end local v17    # "i":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "No ACK received for INVITE"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    .line 288
    .end local v3    # "remoteHost":Ljava/lang/String;
    .end local v4    # "remotePort":I
    .end local v5    # "remotePath":Ljava/lang/String;
    .end local v7    # "fingerprint":Ljava/lang/String;
    .end local v8    # "answer":I
    .end local v9    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v10    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v11    # "attr3":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v12    # "attr4":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v13    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v15    # "fileSelector":Ljava/lang/String;
    .end local v16    # "fileTransferId":Ljava/lang/String;
    .end local v18    # "ipAddress":Ljava/lang/String;
    .end local v19    # "localIpAddress":Ljava/lang/String;
    .end local v20    # "localMsrpPort":I
    .end local v21    # "localSetup":Ljava/lang/String;
    .end local v22    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v23    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v24    # "ntpTime":Ljava/lang/String;
    .end local v25    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v26    # "remoteSdp":Ljava/lang/String;
    .end local v27    # "remoteSetup":Ljava/lang/String;
    .end local v28    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v29    # "sdp":Ljava/lang/String;
    .restart local v14    # "e":Ljava/lang/Exception;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Session initiation has failed"

    invoke-virtual {v2, v6, v14}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 297
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "End of thread"

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method public sendEmptyDataChunk()V
    .locals 3

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendEmptyChunk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Problem while sending empty data chunk"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startMediaSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 442
    return-void
.end method
