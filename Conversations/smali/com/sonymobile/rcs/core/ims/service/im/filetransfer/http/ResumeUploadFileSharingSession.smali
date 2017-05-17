.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;
.source "ResumeUploadFileSharingSession.java"


# static fields
.field private static final logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;)V
    .locals 8
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "resumeUpload"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getThumbnail()[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->setMessageID(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->updateFtHttpSessionId(Ljava/lang/String;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    .line 59
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferSessionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->getUploadManager()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->setTid(Ljava/lang/String;)V

    .line 61
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .line 62
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->httpTransferStarted()V

    .line 74
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isNetworkPause()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferResumed()V

    .line 83
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->resumeUpload()[B

    move-result-object v1

    .line 84
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->sendResultToContact([B)V

    .line 92
    .end local v1    # "result":[B
    :goto_1
    return-void

    .line 70
    :cond_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Resume a HTTP file transfer session as originating"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    :goto_2
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_1

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->fileTransferPaused()V

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->httpTransferPaused()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    return-void

    .line 87
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Transfer has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public uploadStarted()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
