.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;
.source "TerminatingStoreAndForwardNotifSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;


# instance fields
.field private final direction:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 87
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 68
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "recvonly"

    .line 78
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->direction:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkRessourceManager;->generateLocalMsrpPort()I

    move-result v1

    .line 91
    .local v1, "localMsrpPort":I
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "localIpAddress":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;-><init>(Ljava/lang/String;ILcom/sonymobile/rcs/core/ims/service/ImsService;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    .line 96
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public closeMsrpSession()V
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->closeSession()V

    .line 265
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "MSRP session has been closed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "recvonly"

    .line 467
    return-object v0
.end method

.method public getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    return-object v0
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 3
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->closeMediaSession()V

    .line 286
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 287
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Session error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public msrpDataReceived(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 9
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 311
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getActivityManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->updateActivity()V

    .line 313
    if-nez p2, :cond_2

    .line 315
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_4

    .line 318
    :goto_1
    return-void

    .line 307
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data received (type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    array-length v6, p2

    if-eqz v6, :cond_0

    .line 321
    invoke-static {p3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isMessageCpimType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 347
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_8

    .line 351
    :cond_3
    :goto_2
    return-void

    .line 316
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "By-pass received empty data"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_5
    :try_start_0
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;

    invoke-direct {v2, p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;-><init>([B)V

    .line 325
    .local v2, "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->getCpimMessage()Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    move-result-object v1

    .line 326
    .local v1, "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    if-eqz v1, :cond_3

    .line 327
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    .local v0, "contentType":Ljava/lang/String;
    const-string/jumbo v6, "From"

    .line 328
    invoke-virtual {v1, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "from":Ljava/lang/String;
    const-string/jumbo v6, "anonymous@anonymous.invalid"

    .line 329
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    .line 335
    :cond_6
    :goto_3
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isMessageImdnType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 337
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->receiveMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 344
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .end local v2    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .end local v4    # "from":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 341
    .local v3, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 342
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Can\'t parse the CPIM message"

    invoke-virtual {v6, v7, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 330
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "contentType":Ljava/lang/String;
    .restart local v1    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .restart local v2    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .restart local v4    # "from":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "remoteContact":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-nez v6, :cond_6

    .line 332
    move-object v4, v5

    goto :goto_3

    .line 348
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .end local v2    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .end local v4    # "from":Ljava/lang/String;
    .end local v5    # "remoteContact":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not supported content "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in chat session"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public msrpDataTransfered(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 296
    return-void
.end method

.method public msrpTransferAborted()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public msrpTransferProgress(JJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 361
    return-void
.end method

.method public receiveMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "xml"    # Ljava/lang/String;

    .prologue
    .line 404
    :try_start_0
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseDeliveryReport(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    move-result-object v1

    .line 405
    .local v1, "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    if-nez v1, :cond_1

    .line 462
    .end local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 405
    .restart local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 407
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getMessageInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/messaging/MessageInfo;

    move-result-object v2

    .line 408
    .local v2, "msgInfo":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    if-eqz v2, :cond_2

    .line 411
    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 416
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5}, Lcom/sonymobile/rcs/core/CoreListener;->handleOne2OneMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    .end local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .end local v2    # "msgInfo":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t parse IMDN document"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .restart local v2    # "msgInfo":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    :cond_2
    return-void

    :pswitch_2
    :try_start_1
    const-string/jumbo v3, "0"

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getGsmaRelease()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v3

    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, p1, v5, v6}, Lcom/sonymobile/rcs/core/CoreListener;->handleGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, p1, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->receiveGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public run()V
    .locals 27

    .prologue
    .line 104
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    :goto_0
    new-instance v20, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 110
    .local v20, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v18

    .local v18, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v4, 0x0

    .line 111
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .local v19, "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v4, "path"

    .line 112
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v14

    .line 113
    .local v14, "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, "remotePath":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v21

    .line 115
    .local v21, "remoteHost":Ljava/lang/String;
    move-object/from16 v0, v19

    iget v10, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .local v10, "remotePort":I
    const/4 v13, 0x0

    .local v13, "fingerprint":Ljava/lang/String;
    const-string/jumbo v4, "fingerprint"

    .line 119
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "fingerprint"

    .line 121
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    if-nez v4, :cond_3

    .end local v13    # "fingerprint":Ljava/lang/String;
    :goto_1
    const-string/jumbo v22, "passive"

    .local v22, "remoteSetup":Ljava/lang/String;
    const-string/jumbo v4, "setup"

    .line 127
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v15

    .line 128
    .local v15, "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v15, :cond_4

    .line 131
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_5

    .line 136
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "localSetup":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_4
    const-string/jumbo v4, "active"

    .line 143
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPort()I

    move-result v3

    .line 150
    .local v3, "localMsrpPort":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalSocketProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getAcceptTypes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getWrappedTypes()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->getLocalMsrpPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getDirection()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildChatSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 155
    .local v24, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->isSessionInterrupted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 162
    :goto_6
    return-void

    .line 105
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "localMsrpPort":I
    .end local v7    # "localSetup":Ljava/lang/String;
    .end local v10    # "remotePort":I
    .end local v11    # "remotePath":Ljava/lang/String;
    .end local v14    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v15    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v18    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v19    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v20    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v21    # "remoteHost":Ljava/lang/String;
    .end local v22    # "remoteSetup":Ljava/lang/String;
    .end local v24    # "sdp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Initiate a new store & forward session for notifications"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 247
    :catch_0
    move-exception v17

    .line 241
    .local v17, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_10

    .line 246
    :goto_7
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/4 v5, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 248
    .end local v17    # "e":Ljava/lang/Exception;
    :goto_8
    return-void

    .restart local v10    # "remotePort":I
    .restart local v11    # "remotePath":Ljava/lang/String;
    .restart local v13    # "fingerprint":Ljava/lang/String;
    .restart local v14    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v18    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v19    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v20    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v21    # "remoteHost":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "fingerprint"

    .line 120
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v13

    .local v13, "fingerprint":Ljava/lang/String;
    goto/16 :goto_1

    .local v13, "fingerprint":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "fingerprint"

    .line 122
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v13

    .local v13, "fingerprint":Ljava/lang/String;
    goto/16 :goto_1

    .line 129
    .end local v13    # "fingerprint":Ljava/lang/String;
    .restart local v15    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v22    # "remoteSetup":Ljava/lang/String;
    :cond_4
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    .line 132
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remote setup attribute is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 138
    .restart local v7    # "localSetup":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Local setup attribute is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const/16 v3, 0x9

    .line 144
    .restart local v3    # "localMsrpPort":I
    goto/16 :goto_5

    .line 158
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v24    # "sdp":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "passive"

    .line 166
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 192
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_b

    .line 195
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->CHAT_FEATURE_TAGS:[Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v23

    .line 199
    .local v23, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v16

    .line 206
    .local v16, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v4

    if-nez v4, :cond_c

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_f

    .line 238
    :goto_b
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;

    const/16 v5, 0x65

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_8

    .line 160
    .end local v16    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v23    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session has been interrupted: end of processing"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 168
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v11, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpServerSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v25

    .line 169
    .local v25, "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 170
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 173
    new-instance v26, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession$1;

    invoke-direct/range {v26 .. v27}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;)V

    .line 188
    .local v26, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V

    goto :goto_9

    .line 193
    .end local v25    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .end local v26    # "thread":Ljava/lang/Thread;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send 200 OK"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_a

    .line 208
    .restart local v16    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v23    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_d

    .line 213
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    const-string/jumbo v4, "active"

    .line 216
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 230
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getActivityManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatActivityManager;->start()V

    goto/16 :goto_8

    .line 209
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "ACK request received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_c

    .line 217
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v8

    move-object/from16 v9, v21

    move-object/from16 v12, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->createMsrpClientSession(Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v25

    .line 219
    .restart local v25    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setFailureReportOption(Z)V

    .line 220
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setSuccessReportOption(Z)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession()V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->sendEmptyDataChunk()V

    goto :goto_d

    .line 234
    .end local v25    # "session":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "No ACK received for INVITE"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    .line 242
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "localMsrpPort":I
    .end local v7    # "localSetup":Ljava/lang/String;
    .end local v10    # "remotePort":I
    .end local v11    # "remotePath":Ljava/lang/String;
    .end local v14    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v15    # "attr2":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v16    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v18    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v19    # "mediaDesc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v20    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v21    # "remoteHost":Ljava/lang/String;
    .end local v22    # "remoteSetup":Ljava/lang/String;
    .end local v23    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v24    # "sdp":Ljava/lang/String;
    .restart local v17    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session initiation has failed"

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7
.end method

.method public sendEmptyDataChunk()V
    .locals 3

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->sendEmptyChunk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardNotifSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Problem while sending empty data chunk"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
