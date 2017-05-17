.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/ImsFileSharingSession;
.source "OriginatingFileSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "thumbnail"    # [B

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/ImsFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V

    const/4 v2, 0x0

    .line 68
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->createOriginatingDialogPath()V

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ContributionIdGenerator;->getContributionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->setContributionID(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 94
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->setDate(Ljava/util/Date;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->setSentDate(Ljava/util/Date;)V

    .line 96
    return-void
.end method


# virtual methods
.method public closeMediaSession()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :goto_1
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->closeSession()V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "MSRP session has been closed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public msrpDataReceived(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 308
    return-void
.end method

.method public msrpDataTransfered(Ljava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->fileTransfered()V

    .line 276
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->closeMediaSession()V

    const/4 v1, 0x1

    .line 279
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->terminateSession(I)V

    .line 282
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v0, 0x0

    .line 285
    .local v0, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "delivered"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "displayed"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void

    .line 269
    .end local v0    # "j":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Data transfered"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .restart local v0    # "j":I
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleFileTransfered(Landroid/net/Uri;Ljava/lang/String;J)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public msrpTransferAborted()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Data transfer aborted"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public msrpTransferProgress(JJ)V
    .locals 3
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    const/4 v0, 0x0

    .line 318
    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 322
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleTransferProgress(JJ)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public msrpTransferProgress(JJ[B)Z
    .locals 1
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "data"    # [B

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public prepareMediaSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 212
    .local v0, "sdp":[B
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v2, v0, p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpSession([BLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v1

    .line 214
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 215
    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 219
    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setMapMsgIdFromTransationId(Z)V

    .line 220
    return-void
.end method

.method public run()V
    .locals 19

    .prologue
    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->createSetupOffer()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "localSetup":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    const-string/jumbo v3, "active"

    .line 115
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v2

    .line 122
    .local v2, "localMsrpPort":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v15

    .line 124
    .local v15, "localIpAddress":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v5

    invoke-direct {v3, v15, v2, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/ImsService;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "ipAddress":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "encoding":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->getMaxFileSharingSize()I

    move-result v11

    .line 132
    .local v11, "maxSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getFileSelectorAttribute()Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "selector":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getFileTransferId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "attachment"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "sendonly"

    invoke-static/range {v1 .. v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildFileSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 140
    .local v18, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getFileLocationAttribute()Ljava/lang/String;

    move-result-object v16

    .line 141
    .local v16, "location":Ljava/lang/String;
    if-nez v16, :cond_3

    .line 145
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getThumbnail()[B

    move-result-object v3

    if-nez v3, :cond_4

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 173
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_5

    .line 176
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v14

    .line 179
    .local v14, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 185
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "localMsrpPort":I
    .end local v4    # "encoding":Ljava/lang/String;
    .end local v6    # "selector":Ljava/lang/String;
    .end local v8    # "localSetup":Ljava/lang/String;
    .end local v11    # "maxSize":I
    .end local v14    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v15    # "localIpAddress":Ljava/lang/String;
    .end local v16    # "location":Ljava/lang/String;
    .end local v18    # "sdp":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_7

    .line 198
    :goto_7
    return-void

    .line 104
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Initiate a file transfer session as originating"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 193
    :catch_0
    move-exception v12

    .line 187
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_6

    .line 192
    :goto_8
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/4 v5, 0x1

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_6

    .line 110
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "localSetup":Ljava/lang/String;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Local setup attribute is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x9

    .line 116
    .restart local v2    # "localMsrpPort":I
    goto/16 :goto_2

    .line 142
    .restart local v1    # "ipAddress":Ljava/lang/String;
    .restart local v4    # "encoding":Ljava/lang/String;
    .restart local v6    # "selector":Ljava/lang/String;
    .restart local v11    # "maxSize":I
    .restart local v15    # "localIpAddress":Ljava/lang/String;
    .restart local v16    # "location":Ljava/lang/String;
    .restart local v18    # "sdp":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "a=file-location:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    .line 146
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "a=file-icon:cid:image@joyn.com\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getThumbnail()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/utils/Base64;->encodeBase64ToString([B)Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, "imageEncoded":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--boundary1\r\nContent-Type: application/sdp\r\nContent-Length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "boundary1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "Content-Type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "Content-Transfer-Encoding"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": base64"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "Content-ID"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": <image@joyn.com>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "Content-Length"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "Content-Disposition"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": icon"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "boundary1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 166
    .local v17, "multipart":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 174
    .end local v13    # "imageEncoded":Ljava/lang/String;
    .end local v17    # "multipart":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send INVITE"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 188
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "localMsrpPort":I
    .end local v4    # "encoding":Ljava/lang/String;
    .end local v6    # "selector":Ljava/lang/String;
    .end local v8    # "localSetup":Ljava/lang/String;
    .end local v11    # "maxSize":I
    .end local v15    # "localIpAddress":Ljava/lang/String;
    .end local v16    # "location":Ljava/lang/String;
    .end local v18    # "sdp":Ljava/lang/String;
    .restart local v12    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session initiation has failed"

    invoke-virtual {v3, v5, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 196
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "End of thread"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public startMediaSession()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession()V

    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v7

    .line 234
    .local v7, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/content/MmContent;->getData()[B

    move-result-object v8

    .line 236
    .local v8, "data":[B
    if-eqz v8, :cond_0

    .line 246
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 248
    .local v1, "stream":Ljava/io/InputStream;
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v4

    sget-object v6, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->FileSharing:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendChunks(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 260
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v7    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v8    # "data":[B
    :goto_1
    return-void

    .line 237
    .restart local v7    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .restart local v8    # "data":[B
    :cond_0
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/platform/file/FileFactory;->openFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 239
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/platform/file/FileFactory;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 259
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v7    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v8    # "data":[B
    :catch_0
    move-exception v9

    .line 253
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    :goto_2
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v2, 0x67

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_1

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/OriginatingFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Session initiation has failed"

    invoke-virtual {v0, v2, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
