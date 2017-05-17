.class public abstract Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
.source "HttpFileTransferSession.java"


# instance fields
.field private chatSessionId:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field protected resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

.field private sessionState:I

.field private validity:J


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "thumbnail"    # [B
    .param p5, "chatSessionID"    # Ljava/lang/String;
    .param p6, "chatContributionId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V

    .line 55
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->chatSessionId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 97
    iput-object p5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->chatSessionId:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->setContributionID(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 99
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->sessionState:I

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "thumbnail"    # [B
    .param p5, "chatSessionID"    # Ljava/lang/String;
    .param p6, "chatContributionId"    # Ljava/lang/String;
    .param p7, "validity"    # J

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V

    .line 55
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->chatSessionId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 116
    iput-object p5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->chatSessionId:Ljava/lang/String;

    .line 117
    invoke-virtual {p0, p6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->setContributionID(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 118
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->sessionState:I

    .line 119
    iput-wide p7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->validity:J

    .line 120
    return-void
.end method


# virtual methods
.method public abortSession(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    .line 173
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v1

    .line 176
    .local v1, "dao":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;
    if-eqz p1, :cond_2

    .line 218
    :cond_0
    if-nez v1, :cond_8

    .line 221
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->abortSession(I)V

    .line 222
    return-void

    .line 179
    :cond_2
    if-eqz v1, :cond_0

    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, "found":Z
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->queryAll()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "createdFileTransfers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 189
    :goto_1
    if-eqz v2, :cond_0

    .line 193
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-nez v5, :cond_6

    .line 200
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_7

    .line 203
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->pauseFileTransferonNetworkFailure()V

    .line 207
    :goto_3
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->terminateSession(I)V

    .line 210
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v5, 0x2

    .line 211
    iput v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->sessionState:I

    .line 212
    return-void

    .line 182
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .line 183
    .local v3, "ftHttpResume":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    const/4 v2, 0x1

    goto :goto_1

    .line 193
    .end local v3    # "ftHttpResume":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;
    :cond_6
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->isRemoteOriginated()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 194
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeFileTransferSession(Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Pause the session (session terminated, but can be resumed)"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 218
    .end local v0    # "createdFileTransfers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;>;"
    .end local v2    # "found":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-eqz v5, :cond_1

    .line 219
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v1, v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public closeMediaSession()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 167
    return-object v0
.end method

.method public fileTransferAccepted()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "File transfer accepted"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChatSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->chatSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionState()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->sessionState:I

    return v0
.end method

.method public getValidity()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->validity:J

    return-wide v0
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->isSessionInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v1, 0x2

    .line 241
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->sessionState:I

    .line 243
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getErrorCode()I

    move-result v1

    const/16 v2, 0x7d

    if-eq v2, v1, :cond_3

    const/4 v0, 0x0

    .line 249
    .local v0, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 252
    return-void

    .line 236
    .end local v0    # "j":I
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transfer error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeFileTransferSession(Ljava/lang/String;)V

    .line 245
    return-void

    .line 250
    .restart local v0    # "j":I
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleTransferError(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public handleFileTransfered()V
    .locals 8

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->fileTransfered()V

    .line 287
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v2, 0x2

    .line 288
    iput v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->sessionState:I

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    .line 291
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 292
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 295
    .local v1, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 299
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v6

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleFileTransfered(Landroid/net/Uri;Ljava/lang/String;J)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public handleFileUploaded()V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->fileUploaded()V

    .line 309
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v1, 0x4

    .line 310
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->sessionState:I

    const/4 v0, 0x0

    .line 312
    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 315
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getChatSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleFileUploaded(Ljava/lang/String;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public httpTransferPaused()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 347
    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 350
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleFileTransferPaused()V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public httpTransferProgress(JJ)V
    .locals 3
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    const/4 v0, 0x0

    .line 326
    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 329
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleTransferProgress(JJ)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public httpTransferResumed()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 357
    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 360
    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleFileTransferResumed()V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public httpTransferStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 335
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->sessionState:I

    const/4 v0, 0x0

    .line 337
    .local v0, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 340
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;->handleSessionStarted()V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public pauseFileTransfer()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Pausing is not available"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract pauseFileTransferonNetworkFailure()V
.end method

.method public prepareMediaSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public resumeFileTransfer()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Resuming is not available"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setChatSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "chatSessionID"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->chatSessionId:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setValidity(J)V
    .locals 1
    .param p1, "validity"    # J

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->validity:J

    .line 157
    return-void
.end method

.method public startMediaSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    return-void
.end method
