.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;
.source "ResumeDownloadFileSharingSession.java"


# static fields
.field private static final logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;)V
    .locals 3
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "resumeDownload"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;)V

    .line 52
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->updateFtHttpSessionId(Ljava/lang/String;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    .line 53
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferSessionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private resumeFTAsTerminating()V
    .locals 5

    .prologue
    const/16 v4, 0x7d

    .line 70
    :try_start_0
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->httpTransferStarted()V

    .line 75
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isNetworkPause()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferResumed()V

    .line 84
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    iget-object v1, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->streamForFile:Ljava/io/BufferedOutputStream;

    if-nez v1, :cond_5

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 101
    :cond_1
    return-void

    .line 71
    :cond_2
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Resume a HTTP file transfer session as terminating"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_9

    .line 115
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    invoke-direct {v1, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 76
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->fileTransferPaused()V

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->httpTransferPaused()V

    .line 78
    return-void

    .line 84
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->resumeDownload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 89
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/content/MmContent;->setUri(Landroid/net/Uri;)V

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->handleFileTransfered()V

    .line 95
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->isGroup:Z

    if-nez v1, :cond_3

    const-string/jumbo v1, "displayed"

    .line 96
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->sendDeliveryReport(Ljava/lang/String;)V

    goto :goto_2

    .line 86
    :cond_6
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resume download success for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 100
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isPaused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_8

    .line 108
    :goto_4
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v2, 0x7d

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_2

    .line 106
    :cond_8
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Resume Download file has failed"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 112
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_9
    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected Exception while Resuming Terminating ft session"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->startTerminatingSession()V

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->resumeFTAsTerminating()V

    goto :goto_0
.end method
