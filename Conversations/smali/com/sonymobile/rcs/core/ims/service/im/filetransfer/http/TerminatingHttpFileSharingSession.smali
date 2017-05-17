.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;
.source "TerminatingHttpFileSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;


# instance fields
.field protected downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

.field private fired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected isGroup:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field public mFtRetryCount:I

.field protected msgId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;)V
    .locals 10
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "resume"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getContact()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getThumbnail()[B

    move-result-object v5

    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getChatSessionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getFileValidity()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 86
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->mFtRetryCount:I

    .line 149
    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setRemoteDisplayName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->isGroup()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->isGroup:Z

    .line 151
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->isGroup:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setGroupFileTransfer(Z)V

    .line 152
    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->msgId:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->msgId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setMessageID(Ljava/lang/String;)V

    .line 154
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->isAutoAcceptFileTransferEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setFileAutoAccept(Z)V

    .line 157
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getFileUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;-><init>(Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    .line 159
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 151
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "chatSession"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .param p3, "fileTransferInfo"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "contact"    # Ljava/lang/String;
    .param p6, "displayName"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileSize()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v3, v4, v6, v7}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromFilename(Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getTransferValidity()J

    move-result-wide v10

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 86
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    .line 91
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->mFtRetryCount:I

    .line 110
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setRemoteOriginated(Z)V

    .line 111
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setRemoteDisplayName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V

    .line 114
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    :goto_0
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->msgId:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->isGroup:Z

    .line 119
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setMessageID(Ljava/lang/String;)V

    .line 120
    iget-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->isGroup:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setGroupFileTransfer(Z)V

    .line 123
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFilename()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;-><init>(Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    .line 127
    invoke-virtual {p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileThumbnail()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    move-result-object v3

    if-nez v3, :cond_2

    .line 131
    :goto_2
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->isAutoAcceptFileTransferEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setFileAutoAccept(Z)V

    .line 132
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 133
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setDate(Ljava/util/Date;)V

    .line 134
    return-void

    .line 115
    .end local v2    # "date":Ljava/util/Date;
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 120
    goto :goto_1

    .line 128
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {p3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileThumbnail()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->downloadThumbnail(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->setThumbnail([B)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method private isAutoAcceptFileTransferEnabled()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double v2, v6, v8

    .line 367
    .local v2, "length":D
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getWarningMaxFileTransferSize()I

    move-result v1

    .line 368
    .local v1, "warnFileTransferSize":I
    const/4 v0, 0x0

    .line 369
    .local v0, "autoAcceptFileTransfer":Z
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAcceptEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 380
    .end local v0    # "autoAcceptFileTransfer":Z
    :cond_0
    :goto_0
    return v0

    .line 370
    .restart local v0    # "autoAcceptFileTransfer":Z
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/PhoneUtils;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAccept()Z

    move-result v0

    .line 376
    .local v0, "autoAcceptFileTransfer":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 377
    int-to-double v6, v1

    cmpg-double v5, v2, v6

    if-gez v5, :cond_4

    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    .line 370
    .local v0, "autoAcceptFileTransfer":Z
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/PhoneUtils;->isMobileRoaming(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAccept()Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferAutoAcceptInRoaming()Z

    move-result v0

    goto :goto_1

    .local v0, "autoAcceptFileTransfer":Z
    :cond_4
    move v0, v4

    .line 377
    goto :goto_2
.end method

.method private retryFileTransferOnDownloadError()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 476
    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->mFtRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->mFtRetryCount:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_0

    .line 488
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    check-cast v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;

    .line 489
    .local v1, "ftHttpResumeDownload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    .line 490
    .local v2, "imsService":Lcom/sonymobile/rcs/core/ims/service/ImsService;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getMimetype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getSize()J

    move-result-wide v8

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromMime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    .line 493
    .local v0, "downloadContent":Lcom/sonymobile/rcs/core/content/MmContent;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;

    invoke-direct {v3, v2, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;)V

    .line 495
    .local v3, "retryDownloadSession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;
    iget v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->mFtRetryCount:I

    iput v4, v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->mFtRetryCount:I

    .line 496
    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->addSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 497
    invoke-virtual {v3, v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->setRemoteOriginated(Z)V

    .line 499
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isNetworkPause()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 509
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/sonymobile/rcs/core/CoreListener;->handleHttpFileTransferResuming(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    .line 511
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->start()V

    .line 513
    :goto_0
    return-void

    .line 477
    .end local v0    # "downloadContent":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v1    # "ftHttpResumeDownload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
    .end local v2    # "imsService":Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .end local v3    # "retryDownloadSession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 480
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isNetworkPause()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->pauseFileTransferonNetworkFailure()V

    .line 485
    :goto_2
    return-void

    .line 478
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Error retrying file transfer > FT_MAX_RETRY."

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 481
    :cond_2
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    invoke-direct {v4, v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_2

    .line 501
    .restart local v0    # "downloadContent":Lcom/sonymobile/rcs/core/content/MmContent;
    .restart local v1    # "ftHttpResumeDownload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
    .restart local v2    # "imsService":Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .restart local v3    # "retryDownloadSession":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->setDate(Ljava/util/Date;)V

    .line 502
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getSentDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->setSentDate(Ljava/util/Date;)V

    .line 503
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCoreListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->isGroupFileTransfer()Z

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/sonymobile/rcs/core/CoreListener;->handleFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Z)V

    .line 505
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    .line 506
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->startTerminatingSession()V

    goto :goto_0
.end method


# virtual methods
.method public fileTransferAccepted()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->fileTransferAccepted()V

    .line 232
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->setFileAccepted()V

    .line 229
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->updateFtHttpIsFileAccepted(ZLcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 3
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 194
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x7d

    if-eq v1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->retryFileTransferOnDownloadError()V

    .line 199
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Retry File Transfer on error. Retry count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->mFtRetryCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public handleFileTransfered()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->handleFileTransfered()V

    .line 210
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public httpTransferPaused(Z)V
    .locals 2
    .param p1, "isNetworkPause"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->httpTransferPaused()V

    .line 223
    return-void

    .line 220
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->updateFtHttpPauseReason(ZLcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->interrupt()V

    .line 169
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->interrupt()V

    .line 170
    return-void
.end method

.method public pauseFileTransfer()V
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->fileTransferPaused()V

    .line 456
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->interruptSession()V

    .line 458
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->pauseTransfer()V

    .line 459
    return-void
.end method

.method public pauseFileTransferonNetworkFailure()V
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->fileTransferPaused()V

    .line 468
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->interruptSession()V

    .line 469
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->pausedOnNetworkFailure()V

    .line 470
    return-void
.end method

.method public rejectSession(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x2

    .line 179
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->invitationStatus:I

    .line 182
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->waitUserAnswer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 188
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Session invitation has been rejected"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumeFileTransfer()V
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->fileTransferResumed()V

    .line 417
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferResumed()V

    .line 419
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 448
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->startTerminatingSession()V

    .line 239
    return-void
.end method

.method protected sendDeliveryReport(Ljava/lang/String;)V
    .locals 6
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 394
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getChatSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 396
    .local v0, "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    if-nez v0, :cond_3

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImdnManager()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .end local v0    # "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send delivery report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 396
    .restart local v0    # "chatSession":Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isMediaEstablished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected startTerminatingSession()V
    .locals 22

    .prologue
    .line 244
    :try_start_0
    new-instance v5, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getFileUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->msgId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getThumbnail()[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->isGroup:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getValidity()J

    move-result-wide v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v15}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[BZZZJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .line 246
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->insert(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)Landroid/net/Uri;

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 250
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->isFileAutoAccept()Z

    move-result v5

    if-nez v5, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_4

    .line 260
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getValidity()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v20, v6, v8

    .local v20, "ringingPeriod":J
    const-wide/16 v6, 0x0

    .line 261
    cmp-long v5, v20, v6

    if-gtz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_6

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->waitInvitationAnswer(J)I

    move-result v4

    .local v4, "answer":I
    :goto_3
    const/4 v5, 0x2

    .line 262
    if-eq v4, v5, :cond_7

    .line 279
    if-eqz v4, :cond_a

    const/4 v5, 0x3

    .line 296
    if-eq v4, v5, :cond_d

    .line 309
    .end local v4    # "answer":I
    .end local v20    # "ringingPeriod":J
    :cond_0
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/TerminatingFileSharingSession;->isFileCapacityAcceptable(J)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    move-result-object v17

    .line 310
    .local v17, "error":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
    if-nez v17, :cond_f

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->fileTransferAccepted()V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->httpTransferStarted()V

    .line 326
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->downloadFile()Z

    move-result v5

    if-nez v5, :cond_10

    .line 340
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 341
    :cond_1
    return-void

    .line 248
    .end local v17    # "error":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Initiate a new HTTP file transfer session as terminating"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v16

    .line 352
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_14

    .line 357
    :goto_5
    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v6, 0x7d

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 359
    .end local v16    # "e":Ljava/lang/Exception;
    :goto_6
    return-void

    .line 251
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Auto accept file transfer invitation"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 256
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Accept manually file transfer invitation"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 261
    .restart local v20    # "ringingPeriod":J
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->waitInvitationAnswer()I

    move-result v4

    goto :goto_3

    .line 263
    .restart local v4    # "answer":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_8

    .line 268
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 271
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    const/16 v18, 0x0

    .line 274
    .local v18, "i":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    move/from16 v0, v18

    if-lt v0, v5, :cond_9

    .line 278
    return-void

    .line 264
    .end local v18    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Transfer has been rejected by user"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 275
    .restart local v18    # "i":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 274
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 280
    .end local v18    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_b

    .line 285
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 288
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    const/16 v18, 0x0

    .line 291
    .restart local v18    # "i":I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    move/from16 v0, v18

    if-lt v0, v5, :cond_c

    .line 295
    return-void

    .line 281
    .end local v18    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Invitation is not answered before file validity expiration. Aborting FT"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 292
    .restart local v18    # "i":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getListeners()Ljava/util/Vector;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 291
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 297
    .end local v18    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_e

    .line 300
    :goto_b
    return-void

    .line 298
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Transfer has been canceled"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 312
    .end local v4    # "answer":I
    .end local v20    # "ringingPeriod":J
    .restart local v17    # "error":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v6

    const/16 v7, 0x25b

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 315
    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 316
    return-void

    .line 327
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_11

    .line 332
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getFileUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/core/content/MmContent;->setUri(Landroid/net/Uri;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->handleFileTransfered()V

    const-string/jumbo v5, "displayed"

    .line 338
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->sendDeliveryReport(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 328
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Download file with success"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .line 340
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isPaused()Z

    move-result v5

    if-nez v5, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_13

    .line 348
    :goto_d
    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v6, 0x7d

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto/16 :goto_6

    .line 344
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Download file has failed"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    .line 353
    .end local v17    # "error":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
    .restart local v16    # "e":Ljava/lang/Exception;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Unexpected Exception while starting Terminating ft session"

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method
