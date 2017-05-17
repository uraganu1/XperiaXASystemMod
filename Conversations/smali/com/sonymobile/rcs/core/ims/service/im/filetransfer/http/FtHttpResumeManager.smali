.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;
.super Ljava/lang/Object;
.source "FtHttpResumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$4;
    }
.end annotation


# static fields
.field private static final logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# instance fields
.field private dao:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

.field private ftHttpResume:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

.field private imsService:Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

.field private listOfFtHttpResume:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;",
            ">;"
        }
    .end annotation
.end field

.field private terminate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;)V
    .locals 7
    .param p1, "instantMessagingService"    # Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->dao:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    .line 78
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->terminate:Z

    .line 86
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->dao:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    if-eqz v4, :cond_1

    .line 92
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->dao:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->queryAll()Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "listFile2resume":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    .end local v3    # "listFile2resume":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;>;"
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 90
    :goto_1
    return-void

    .line 88
    :cond_2
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Cannot resume FT"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .restart local v3    # "listFile2resume":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;>;"
    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->listOfFtHttpResume:Ljava/util/LinkedList;

    .line 102
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 125
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->listOfFtHttpResume:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 129
    :goto_3
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->processNext()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 136
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listFile2resume":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;>;"
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    sget-object v4, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Exception occurred"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listFile2resume":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;>;"
    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .line 103
    .local v1, "ftHttpResume":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->doesMessageIdAlreadyExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 118
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->dao:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    invoke-virtual {v4, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 111
    :cond_6
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getSessionId()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x23

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 114
    :goto_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->listOfFtHttpResume:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    :cond_7
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getDirection()Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->OUTGOING:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 126
    .end local v1    # "ftHttpResume":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;
    :cond_8
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->listOfFtHttpResume:Ljava/util/LinkedList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->processNext()V

    return-void
.end method

.method private getFileSharingSessionListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;)V

    return-object v0
.end method

.method private processNext()V
    .locals 12

    .prologue
    .line 143
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->listOfFtHttpResume:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 148
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->listOfFtHttpResume:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    iput-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->ftHttpResume:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .line 149
    sget-object v6, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 152
    :goto_0
    sget-object v6, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$4;->$SwitchMap$com$sonymobile$rcs$provider$fthttp$FtHttpDirection:[I

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->ftHttpResume:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getDirection()Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 218
    :cond_0
    :goto_1
    return-void

    .line 144
    :cond_1
    return-void

    .line 150
    :cond_2
    sget-object v6, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Resume FT HTTP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->ftHttpResume:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->ftHttpResume:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    check-cast v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;

    .line 155
    .local v1, "downloadInfo":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getMimetype()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getSize()J

    move-result-wide v10

    invoke-static {v6, v7, v8, v10, v11}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromMime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    .line 158
    .local v0, "downloadContent":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->removeOldFiletransferSessionOnResume(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)V

    .line 160
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-direct {v2, v6, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;)V

    .line 162
    .local v2, "resumeDownload":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->getFileSharingSessionListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 164
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$1;

    invoke-direct {v6, p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;)V

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$1;->start()V

    .line 170
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->ftHttpResume:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 174
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->dao:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->ftHttpResume:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    .line 175
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->setDate(Ljava/util/Date;)V

    .line 176
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->setSentDate(Ljava/util/Date;)V

    .line 177
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->setRemoteOriginated(Z)V

    .line 179
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v6

    iget-boolean v7, v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->isGroup:Z

    invoke-interface {v6, v2, v7}, Lcom/sonymobile/rcs/core/CoreListener;->handleFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Z)V

    .line 185
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->processNext()V

    goto/16 :goto_1

    .line 171
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/sonymobile/rcs/core/CoreListener;->handleHttpFileTransferResuming(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    goto/16 :goto_1

    .line 190
    .end local v0    # "downloadContent":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v1    # "downloadInfo":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
    .end local v2    # "resumeDownload":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;
    :pswitch_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->ftHttpResume:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    check-cast v5, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;

    .line 191
    .local v5, "uploadInfo":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->ftHttpResume:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isGroup()Z

    move-result v6

    if-nez v6, :cond_0

    .line 193
    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getFileUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getMimetype()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getSize()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getFilename()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromMime(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v4

    .line 197
    .local v4, "uploadContent":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-direct {p0, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->removeOldFiletransferSessionOnResume(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)V

    .line 200
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-direct {v3, v6, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;)V

    .line 202
    .local v3, "resumeUpload":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->getFileSharingSessionListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 205
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$2;

    invoke-direct {v6, p0, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$2;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeUploadFileSharingSession;)V

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$2;->start()V

    .line 212
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/sonymobile/rcs/core/CoreListener;->handleHttpFileTransferResuming(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V

    goto/16 :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeOldFiletransferSessionOnResume(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)V
    .locals 4
    .param p1, "ftHttpResume"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getMsgId()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "messageId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .line 232
    .local v2, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getMessageInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/messaging/MessageInfo;

    move-result-object v1

    .line 233
    .local v1, "msgInfo":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    if-nez v1, :cond_2

    .line 236
    .end local v2    # "sessionId":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    .line 239
    invoke-static {v2}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->removeFileTransferSession(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .restart local v2    # "sessionId":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .local v2, "sessionId":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public terminate()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->terminate:Z

    .line 308
    return-void
.end method
