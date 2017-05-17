.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;
.super Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;
.source "OriginatingHttpGroupFileSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadTransferEventListener;


# instance fields
.field private chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

.field private fileInfo:Ljava/lang/String;

.field private fileValidity:J

.field private fired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "conferenceId"    # Ljava/lang/String;
    .param p4, "participants"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .param p5, "thumbnail"    # [B
    .param p6, "chatSessionID"    # Ljava/lang/String;
    .param p7, "chatContributionId"    # Ljava/lang/String;
    .param p8, "messageId"    # Ljava/lang/String;

    .prologue
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 104
    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileInfo:Ljava/lang/String;

    const/4 v2, 0x0

    .line 72
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 77
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, -0x1

    .line 82
    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileValidity:J

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 105
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->setRemoteOriginated(Z)V

    .line 108
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->participants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .line 109
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->setGroupFileTransfer(Z)V

    .line 110
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->setMessageID(Ljava/lang/String;)V

    .line 112
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getThumbnail()[B

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;-><init>(Lcom/sonymobile/rcs/core/content/MmContent;[BLcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    .line 113
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 114
    .local v9, "date":Ljava/util/Date;
    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->setDate(Ljava/util/Date;)V

    .line 115
    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->setSentDate(Ljava/util/Date;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->restartGroupChatSession()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->sendFileTransferInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;
    .param p1, "x1"    # [B

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->sendResultToContact([B)V

    return-void
.end method

.method private rejoinGroupChatSession()V
    .locals 4

    .prologue
    .line 194
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 196
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to rejoin group chat session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v2, 0x81

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unable to rejoin group chat session"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private restartGroupChatSession()V
    .locals 4

    .prologue
    .line 285
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->restartGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 287
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$2;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to restart group chat session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    .line 290
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v2, 0x81

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unable to restart group chat session"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendFileTransferInfo()V
    .locals 10

    .prologue
    const-string/jumbo v8, "message/cpim"

    .line 398
    .local v8, "mime":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicAddress()Ljava/lang/String;

    move-result-object v7

    .local v7, "from":Ljava/lang/String;
    const-string/jumbo v9, "sip:anonymous@anonymous.invalid"

    .line 401
    .local v9, "to":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileInfo:Ljava/lang/String;

    const-string/jumbo v2, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-static {v7, v9, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, "content":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->FileSharing:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v0, v1, v6, v8, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->sendDataChunks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/server/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileValidity:J

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferChatId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 413
    invoke-static {}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getInstance()Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getMessageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->updateFileTransferChatId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void

    .line 410
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendResultToContact([B)V
    .locals 4
    .param p1, "result"    # [B

    .prologue
    .line 147
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseFileTransferHttpDocument([B)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    move-result-object v0

    .line 151
    .local v0, "fileTransferInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    if-nez p1, :cond_2

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_7

    .line 188
    :goto_0
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v2, 0x7c

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 190
    :goto_1
    return-void

    .line 148
    .end local v0    # "fileTransferInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    :cond_1
    return-void

    .line 151
    .restart local v0    # "fileTransferInfo":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    :cond_2
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getTransferValidity()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileValidity:J

    .line 153
    iget-wide v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileValidity:J

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->setValidity(J)V

    .line 154
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileInfo:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 160
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->getChatSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;->getSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .line 163
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->chatSession:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    if-nez v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 180
    :goto_3
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->rejoinGroupChatSession()V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upload done with success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_5

    .line 170
    :goto_4
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->sendFileTransferInfo()V

    .line 173
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->handleFileUploaded()V

    goto :goto_1

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Send file transfer info via an existing chat session"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 176
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "No chat session found to send file transfer info, trying to rejoin/restart"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 184
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Upload has failed"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 3
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    const/4 v2, 0x0

    .line 363
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 364
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-eqz v0, :cond_0

    .line 366
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public handleFileUploaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->handleFileUploaded()V

    .line 374
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->resumeFT:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    goto :goto_0
.end method

.method public httpTransferPaused(Z)V
    .locals 0
    .param p1, "isNetworkPause"    # Z

    .prologue
    .line 383
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->httpTransferPaused()V

    .line 384
    return-void
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;->interrupt()V

    .line 389
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->interrupt()V

    .line 390
    return-void
.end method

.method public pauseFileTransfer()V
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileTransferPaused()V

    .line 423
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->interruptSession()V

    .line 424
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->pauseTransfer()V

    .line 425
    return-void
.end method

.method public pauseFileTransferonNetworkFailure()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public resumeFileTransfer()V
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->fileTransferResumed()V

    .line 433
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;->httpTransferResumed()V

    .line 434
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$3;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 450
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->uploadFile()[B

    move-result-object v1

    .line 129
    .local v1, "result":[B
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->sendResultToContact([B)V

    .line 138
    .end local v1    # "result":[B
    :goto_1
    return-void

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Initiate a new HTTP group file transfer session as originating"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :goto_2
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "File transfer has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public uploadStarted()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method
