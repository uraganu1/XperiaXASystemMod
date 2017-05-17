.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;
.source "OriginatingHttpFileSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadTransferEventListener;


# instance fields
.field private fired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field protected uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "thumbnail"    # [B
    .param p5, "chatSessionId"    # Ljava/lang/String;
    .param p6, "chatContributionId"    # Ljava/lang/String;
    .param p7, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->setRemoteOriginated(Z)V

    .line 90
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getThumbnail()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;-><init>(Lcom/sonymobile/rcs/core/content/MmContent;[BLcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    .line 91
    invoke-virtual {p0, p7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->setMessageID(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 93
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->setDate(Ljava/util/Date;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->setSentDate(Ljava/util/Date;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getUploadManager()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    return-object v0
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 3
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 239
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public handleFileUploaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->handleFileUploaded()V

    .line 249
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public httpTransferPaused(Z)V
    .locals 2
    .param p1, "isNetworkPause"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->httpTransferPaused()V

    .line 262
    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->updateFtHttpPauseReason(ZLcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->interrupt()V

    .line 272
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->interrupt()V

    .line 273
    return-void
.end method

.method public pauseFileTransfer()V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->fileTransferPaused()V

    .line 281
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->interruptSession()V

    .line 282
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->pauseTransfer()V

    .line 283
    return-void
.end method

.method public pauseFileTransferonNetworkFailure()V
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->fileTransferPaused()V

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->interruptSession()V

    .line 293
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->pausedOnNetworkFailure()V

    .line 294
    return-void
.end method

.method public resumeFileTransfer()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->fileTransferResumed()V

    .line 302
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferResumed()V

    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 318
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->uploadFile()[B

    move-result-object v1

    .line 108
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->sendResultToContact([B)V

    .line 116
    .end local v1    # "result":[B
    :goto_1
    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Initiate a new HTTP file transfer session as originating"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    :goto_2
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_1

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "File transfer has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected sendResultToContact([B)V
    .locals 22
    .param p1, "result"    # [B

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    if-nez p1, :cond_3

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 225
    :cond_1
    return-void

    .line 121
    :cond_2
    return-void

    .line 124
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseFileTransferHttpDocument([B)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseFileTransferHttpDocument([B)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    move-result-object v13

    .local v13, "fileTransferInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    const-wide/16 v6, -0x1

    .line 128
    .local v6, "fileValidity":J
    if-nez v13, :cond_5

    .line 132
    :goto_0
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 133
    .local v12, "fileInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_6

    .line 137
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getChatSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 139
    .local v8, "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    if-eqz v8, :cond_7

    .line 154
    .end local v8    # "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    :goto_2
    if-nez v8, :cond_9

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_b

    .line 188
    :goto_3
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v12, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 200
    .restart local v8    # "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->setChatSessionID(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->setContributionID(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferChatId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 207
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatSessionByFtHttp(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 210
    new-instance v17, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    .line 211
    .local v17, "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->addChatSession(Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;)V

    .line 215
    .end local v8    # "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v17    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/messaging/ImSession;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->handleFileUploaded()V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getValidity()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_d

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_4

    .line 220
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getValidity()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v4, v20

    invoke-direct {v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;-><init>(Ljava/lang/String;J)V

    .line 234
    .end local v6    # "fileValidity":J
    .end local v12    # "fileInfo":Ljava/lang/String;
    .end local v13    # "fileTransferInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    :cond_4
    :goto_6
    return-void

    .line 129
    .restart local v6    # "fileValidity":J
    .restart local v13    # "fileTransferInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    :cond_5
    invoke-virtual {v13}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getTransferValidity()J

    move-result-wide v6

    .line 130
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->setValidity(J)V

    goto/16 :goto_0

    .line 134
    .restart local v12    # "fileInfo":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Upload done with success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 140
    .restart local v8    # "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    :cond_7
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImSessionsWith(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v9

    .line 143
    .local v9, "chatSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    :try_start_1
    invoke-virtual {v9}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-object v8, v0

    .line 144
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isMediaEstablished()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v8, 0x0

    .line 148
    .local v8, "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    goto/16 :goto_2

    .line 145
    .local v8, "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    :cond_8
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->setChatSessionID(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->setContributionID(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 152
    :catch_0
    move-exception v16

    .local v16, "nsee":Ljava/util/NoSuchElementException;
    const/4 v8, 0x0

    .line 151
    .local v8, "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    goto/16 :goto_2

    .line 156
    .end local v8    # "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .end local v9    # "chatSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;>;"
    .end local v16    # "nsee":Ljava/util/NoSuchElementException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_a

    :goto_7
    const-string/jumbo v15, "message/cpim"

    .local v15, "mime":Ljava/lang/String;
    const-string/jumbo v14, "sip:anonymous@anonymous.invalid"

    .local v14, "from":Ljava/lang/String;
    const-string/jumbo v18, "sip:anonymous@anonymous.invalid"

    .line 166
    .local v18, "to":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.gsma.rcs-ft-http+xml"

    move-object/from16 v0, v18

    invoke-static {v14, v0, v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 170
    .local v10, "content":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->HttpFileSharing:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v8, v2, v10, v15, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    :try_end_2
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    :goto_8
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferChatId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 157
    .end local v10    # "content":Ljava/lang/String;
    .end local v14    # "from":Ljava/lang/String;
    .end local v15    # "mime":Ljava/lang/String;
    .end local v18    # "to":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send file transfer info via an existing chat session"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 181
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send file transfer info via a new chat session"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 199
    :catch_1
    move-exception v11

    .line 194
    .local v11, "e":Lcom/sonymobile/rcs/core/CoreException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_c

    .line 197
    :goto_9
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v3, 0x7c

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 198
    return-void

    .line 195
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t initiate One to one session :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 219
    .end local v11    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 224
    .end local v6    # "fileValidity":J
    .end local v12    # "fileInfo":Ljava/lang/String;
    .end local v13    # "fileTransferInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isPaused()Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_f

    .line 232
    :goto_a
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v3, 0x7c

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_6

    .line 228
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Upload has failed"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 175
    .restart local v6    # "fileValidity":J
    .restart local v10    # "content":Ljava/lang/String;
    .restart local v12    # "fileInfo":Ljava/lang/String;
    .restart local v13    # "fileTransferInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    .restart local v14    # "from":Ljava/lang/String;
    .restart local v15    # "mime":Ljava/lang/String;
    .restart local v18    # "to":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_8
.end method

.method public uploadStarted()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 323
    new-instance v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getThumbnail()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->getValidity()J

    move-result-wide v10

    move-object v2, p0

    move v8, v7

    move v9, v7

    invoke-direct/range {v1 .. v11}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BZZZJ)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .line 325
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->insert(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)Landroid/net/Uri;

    .line 326
    return-void
.end method
