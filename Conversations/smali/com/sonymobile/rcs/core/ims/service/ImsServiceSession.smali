.class public abstract Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
.super Ljava/lang/Thread;
.source "ImsServiceSession.java"


# instance fields
.field private abortSession:Z

.field private authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

.field private contact:Ljava/lang/String;

.field private dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

.field private imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

.field protected invitationStatus:I

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mRemoteOriginator:Z

.field private remoteDisplayName:Ljava/lang/String;

.field private ringingPeriod:I

.field protected sessionId:Ljava/lang/String;

.field private sessionInterrupted:Z

.field private sessionTimer:Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

.field protected updateMgr:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

.field protected waitUserAnswer:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V
    .locals 3
    .param p1, "imsService"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/SessionIdGenerator;->getNewId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionId:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->remoteDisplayName:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 112
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->listeners:Ljava/util/Vector;

    .line 127
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionTimer:Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    .line 137
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRingingPeriod()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->ringingPeriod:I

    .line 142
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionInterrupted:Z

    .line 147
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->abortSession:Z

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 165
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    .line 166
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->contact:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    .line 168
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->updateMgr:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    .line 169
    return-void
.end method

.method private handle415UnsupportedMediaType(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 4
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1260
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v1, 0x86

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 1262
    return-void
.end method


# virtual methods
.method public abortSession(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 540
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->abortSession:Z

    .line 546
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->interruptSession()V

    .line 555
    instance-of v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTransferSession;

    if-eqz v1, :cond_1

    .line 560
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->closeMediaSession()V

    .line 563
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v0, 0x0

    .line 566
    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 569
    return-void

    .line 541
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Abort the session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->terminateSession(I)V

    goto :goto_1

    .line 567
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public acceptSession()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    .line 439
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    .line 442
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 444
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Session invitation has been accepted"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public buildReInviteSdpResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Ljava/lang/String;
    .locals 1
    .param p1, "ReInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "serviceContext"    # I

    .prologue
    const/4 v0, 0x0

    .line 1320
    return-object v0
.end method

.method public abstract closeMediaSession()V
.end method

.method public abstract createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation
.end method

.method public createMobileToMobileSetupOffer()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "active"

    .line 893
    return-object v0
.end method

.method public createOriginatingDialogPath()V
    .locals 10

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->generateCallId()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "callId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getServiceRoutePath()Ljava/util/Vector;

    move-result-object v9

    .line 183
    .local v9, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 189
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setAuthenticationAgent(Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->mRemoteOriginator:Z

    .line 193
    return-void
.end method

.method public createSetupAnswer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "offer"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "actpass"

    .line 903
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "active"

    .line 906
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "passive"

    .line 909
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "passive"

    .line 914
    return-object v0

    :cond_0
    const-string/jumbo v0, "active"

    .line 905
    return-object v0

    :cond_1
    const-string/jumbo v0, "passive"

    .line 908
    return-object v0

    :cond_2
    const-string/jumbo v0, "active"

    .line 911
    return-object v0
.end method

.method public createSetupOffer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->isBehindNat()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "active"

    .line 882
    return-object v0

    :cond_0
    const-string/jumbo v0, "actpass"

    .line 877
    return-object v0
.end method

.method public createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 10
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getCallId()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "callId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContactURI()Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "target":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getTo()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "localParty":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFrom()Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "remoteParty":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getCSeq()J

    move-result-wide v4

    .line 217
    .local v4, "cseq":J
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->routeProcessing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Z)Ljava/util/Vector;

    move-result-object v9

    .line 220
    .local v9, "route":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v2

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 225
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 228
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFromTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteTag(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteContent(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSessionTimerExpire()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setSessionExpireTime(I)V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->mRemoteOriginator:Z

    .line 238
    return-void
.end method

.method public getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->authenticationAgent:Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    return-object v0
.end method

.method public getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    return-object v0
.end method

.method public getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    return-object v0
.end method

.method public getListeners()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->listeners:Ljava/util/Vector;

    return-object v0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->isRemoteOriginated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    return-object v1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->remoteDisplayName:Ljava/lang/String;

    return-object v0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getDisplayNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTimeout()I
    .locals 2

    .prologue
    .line 924
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRingingPeriod()I

    move-result v0

    sget v1, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->TIMEOUT:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionTimer:Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    return-object v0
.end method

.method public getUpdateSessionManager()Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->updateMgr:Lcom/sonymobile/rcs/core/ims/service/UpdateSessionManager;

    return-object v0
.end method

.method public handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 8
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    const/4 v7, 0x1

    .line 1008
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1013
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 1016
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getToTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteTag(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getContactURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setTarget(Ljava/lang/String;)V

    .line 1022
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->routeProcessing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;Z)Ljava/util/Vector;

    move-result-object v2

    .line 1023
    .local v2, "newRoute":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRoute(Ljava/util/Vector;)V

    .line 1026
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteContent(Ljava/lang/String;)V

    const-string/jumbo v4, "Contact"

    .line 1029
    invoke-virtual {p1, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax2/sip/header/ContactHeader;

    .line 1030
    .local v3, "remoteContactHeader":Ljavax2/sip/header/ContactHeader;
    if-nez v3, :cond_1

    .line 1036
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->prepareMediaSession()V

    .line 1039
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1042
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipAck(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V

    .line 1045
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    .line 1048
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->startMediaSession()V

    const/4 v1, 0x0

    .line 1051
    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 1056
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1068
    .end local v1    # "i":I
    .end local v2    # "newRoute":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v3    # "remoteContactHeader":Ljavax2/sip/header/ContactHeader;
    :goto_4
    return-void

    .line 1009
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "200 OK response received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1066
    :goto_5
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_4

    .line 1031
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "newRoute":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v3    # "remoteContactHeader":Ljavax2/sip/header/ContactHeader;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    const-string/jumbo v5, "+sip.instance"

    invoke-interface {v3, v5}, Ljavax2/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteSipInstance(Ljava/lang/String;)V

    goto :goto_1

    .line 1040
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send ACK"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 1052
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v4}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionStarted()V

    .line 1051
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1057
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getSessionTimerRefresher()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getSessionTimerExpire()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->start(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1064
    .end local v1    # "i":I
    .end local v2    # "newRoute":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v3    # "remoteContactHeader":Ljavax2/sip/header/ContactHeader;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Session initiation has failed"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public handle404SessionNotFound(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 0
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleDefaultError(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 1110
    return-void
.end method

.method public handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 5
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1119
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1124
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getToTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setRemoteTag(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->readProxyAuthenticateHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 1130
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 1133
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 1136
    .local v1, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1139
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setProxyAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1142
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1152
    .end local v1    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    :goto_1
    return-void

    .line 1120
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "407 response received"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1150
    :goto_2
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_1

    .line 1146
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Session initiation has failed"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public handle408RequestTimeout(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 4
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1250
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/16 v1, 0x68

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 1252
    return-void
.end method

.method public handle422SessionTooSmall(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 7
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    const/4 v6, 0x1

    .line 1162
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1167
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getMinSessionExpirePeriod(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)I

    move-result v2

    .local v2, "minExpire":I
    const/4 v3, -0x1

    .line 1168
    if-eq v2, v3, :cond_1

    .line 1178
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setMinSessionExpireTime(I)V

    .line 1181
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setSessionExpireTime(I)V

    .line 1184
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 1187
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1190
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v1

    .line 1193
    .local v1, "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getAuthenticationAgent()Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionAuthenticationAgent;->setAuthorizationHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1196
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1199
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 1209
    .end local v1    # "invite":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .end local v2    # "minExpire":I
    :goto_2
    return-void

    .line 1163
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "422 response received"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1208
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1206
    :goto_3
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_2

    .line 1169
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "minExpire":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1172
    :goto_4
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/4 v4, 0x1

    const-string/jumbo v5, "No Min-SE value found"

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 1174
    return-void

    .line 1170
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t read the Min-SE value"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 1188
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Send new INVITE"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1202
    .end local v2    # "minExpire":I
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Session initiation has failed"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public handle480Unavailable(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 0
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1217
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleDefaultError(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 1218
    return-void
.end method

.method public handle486Busy(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 1
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1226
    instance-of v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/ImsFileSharingSession;

    if-eqz v0, :cond_1

    .line 1227
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleSessionTimeOutError(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 1231
    :goto_0
    return-void

    .line 1226
    :cond_1
    instance-of v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    if-nez v0, :cond_0

    .line 1229
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleDefaultError(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto :goto_0
.end method

.method public handle487Cancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 4
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1239
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/16 v1, 0x67

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 1242
    return-void
.end method

.method public handle603Declined(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 4
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1270
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/16 v1, 0x66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 1273
    return-void
.end method

.method public handleDefaultError(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 4
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1077
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 1080
    return-void
.end method

.method public abstract handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
.end method

.method public handleReInvite407ProxyAuthent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;I)V
    .locals 0
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .param p2, "serviceContext"    # I

    .prologue
    .line 1317
    return-void
.end method

.method public handleReInviteAck(II)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 1308
    return-void
.end method

.method public handleReInviteResponse(ILcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;I)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .param p3, "requestType"    # I

    .prologue
    .line 1290
    return-void
.end method

.method public handleReInviteUserAnswer(II)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 1299
    return-void
.end method

.method public handleSessionTimeOutError(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 4
    .param p1, "resp"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .prologue
    .line 1089
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/16 v1, 0x68

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 1092
    return-void
.end method

.method public interruptSession()V
    .locals 3

    .prologue
    .line 507
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 513
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 515
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->isSessionInterrupted()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 532
    :goto_2
    return-void

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Interrupt the session"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 528
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Can\'t interrupt the session correctly"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_5
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->abortSession:Z

    if-nez v1, :cond_3

    .line 522
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->interrupt()V

    goto :goto_1

    .line 520
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionInterrupted:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 530
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Session has been interrupted"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isBehindNat()Z
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isBehindNat()Z

    move-result v0

    return v0
.end method

.method public isRemoteOriginated()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->mRemoteOriginator:Z

    return v0
.end method

.method public isSessionInterrupted()Z
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionInterrupted:Z

    return v0
.end method

.method public abstract prepareMediaSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "bye"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 635
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->closeMediaSession()V

    .line 643
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminated()V

    .line 646
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 649
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->stop()V

    const/4 v0, 0x0

    .line 652
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 656
    instance-of v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    if-nez v2, :cond_2

    .line 667
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 669
    return-void

    .line 636
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Receive a BYE message from the remote"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionTerminatedByRemote()V

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "Reason"

    .line 657
    invoke-virtual {p1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/ReasonHeader;

    .line 658
    .local v1, "reasonHeader":Ljavax2/sip/header/ReasonHeader;
    invoke-interface {v1}, Ljavax2/sip/header/ReasonHeader;->getCause()I

    move-result v2

    const/16 v3, 0x19a

    if-eq v3, v2, :cond_4

    .line 664
    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 659
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 660
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public receiveCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 6
    .param p1, "cancel"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 677
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 681
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSigEstablished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 689
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->closeMediaSession()V

    .line 692
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionCancelled()V

    .line 696
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 699
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e7

    invoke-static {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v2

    .line 701
    .local v2, "terminatedResp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    .end local v2    # "terminatedResp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v3, 0x3

    .line 712
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    .line 715
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v4

    .line 716
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 717
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 720
    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 725
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 726
    return-void

    .line 678
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Receive a CANCEL message from the remote"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 685
    :goto_4
    return-void

    .line 683
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Ignore the received CANCEL message from the remote (session already established)"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_4

    .line 697
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Send 487 Request terminated"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 706
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 704
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Can\'t send 487 error response"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 717
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 721
    .restart local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getListeners()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v3}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionTerminatedByRemote()V

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public receiveReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 1
    .param p1, "reInvite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionTimer:Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->receiveReInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 736
    return-void
.end method

.method public receiveUpdate(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 1
    .param p1, "update"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionTimer:Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->receiveUpdate(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 745
    return-void
.end method

.method public rejectSession(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x2

    .line 416
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    .line 419
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    if-nez v0, :cond_1

    .line 429
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 430
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Session invitation has been rejected"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public removeListener(Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public removeListeners()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 261
    return-void
.end method

.method public send180Ringing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V
    .locals 4
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "localTag"    # Ljava/lang/String;

    .prologue
    .line 774
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-static {v2, p2, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 775
    .local v1, "progress":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v1    # "progress":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t send a 180 Ringing response"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public send415Error(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 854
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const/16 v2, 0x19f

    .line 857
    invoke-static {p1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 859
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 865
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_1
    return-void

    .line 855
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send 415 Unsupported Media Type"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t send 415 error response"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public send486Busy(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V
    .locals 4
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "localTag"    # Ljava/lang/String;

    .prologue
    .line 835
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const/16 v2, 0x1e6

    .line 838
    invoke-static {p1, p2, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 839
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 845
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_1
    return-void

    .line 836
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send 486 Busy"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 842
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t send 486 Busy response"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public send603Decline(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V
    .locals 4
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "localTag"    # Ljava/lang/String;

    .prologue
    .line 814
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const/16 v2, 0x25b

    .line 817
    invoke-static {p1, p2, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 818
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 824
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_1
    return-void

    .line 815
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Send 603 Decline"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t send 603 Decline response"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V
    .locals 5
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "localTag"    # Ljava/lang/String;
    .param p3, "code"    # I

    .prologue
    .line 793
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 796
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 797
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 803
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_1
    return-void

    .line 794
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " error response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t send error response"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public sendInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 4
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getResponseTimeout()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v0

    .line 956
    .local v0, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;

    const/16 v2, 0x65

    const-string/jumbo v3, "timeout"

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionBasedServiceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 998
    :goto_0
    return-void

    .line 958
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 961
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_3

    .line 963
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle404SessionNotFound(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto :goto_0

    .line 960
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle200OK(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto :goto_0

    .line 961
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_1

    .line 964
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_5

    .line 967
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1a6

    if-eq v1, v2, :cond_6

    .line 970
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_7

    .line 973
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1e6

    if-eq v1, v2, :cond_8

    .line 976
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1e7

    if-ne v1, v2, :cond_9

    .line 978
    :cond_4
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle487Cancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto :goto_0

    .line 966
    :cond_5
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle407Authentication(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto :goto_0

    .line 969
    :cond_6
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle422SessionTooSmall(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto :goto_0

    .line 972
    :cond_7
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle480Unavailable(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto :goto_0

    .line 975
    :cond_8
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle486Busy(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto :goto_0

    .line 976
    :cond_9
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1e8

    if-eq v1, v2, :cond_4

    .line 979
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x198

    if-eq v1, v2, :cond_a

    .line 982
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x19f

    if-eq v1, v2, :cond_b

    .line 986
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getStatusCode()I

    move-result v1

    const/16 v2, 0x25b

    if-eq v1, v2, :cond_c

    .line 991
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handleDefaultError(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto/16 :goto_0

    .line 981
    :cond_a
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle408RequestTimeout(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto/16 :goto_0

    .line 984
    :cond_b
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle415UnsupportedMediaType(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto/16 :goto_0

    .line 988
    :cond_c
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->handle603Declined(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    goto/16 :goto_0
.end method

.method public setDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V
    .locals 0
    .param p1, "dialog"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    .line 377
    return-void
.end method

.method public setRemoteDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteDisplayName"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->remoteDisplayName:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setRemoteOriginated(Z)V
    .locals 0
    .param p1, "isRemoteOriginated"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->mRemoteOriginator:Z

    .line 396
    return-void
.end method

.method public abstract startMediaSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public startSession()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->imsService:Lcom/sonymobile/rcs/core/ims/service/ImsService;

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->addSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 307
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->start()V

    .line 308
    return-void
.end method

.method public terminateSession(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 577
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 581
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    if-nez v1, :cond_2

    .line 583
    :cond_0
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Terminate the session (reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSessionTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->stop()V

    const/4 v1, 0x1

    .line 590
    if-eq p1, v1, :cond_4

    .line 593
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminated()V

    .line 597
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v2

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 599
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSigEstablished()Z

    move-result v1

    if-nez v1, :cond_5

    .line 616
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipCancel(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V

    .line 619
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_7

    .line 627
    :cond_3
    :goto_3
    return-void

    .line 591
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->dialogPath:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    const/16 v2, 0xc8

    const-string/jumbo v3, "Call completed"

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionTerminated(ILjava/lang/String;)V

    goto :goto_1

    .line 599
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 605
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->incrementCseq()V

    .line 608
    instance-of v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    if-eqz v1, :cond_6

    .line 611
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipByeAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 626
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Session termination has failed"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 609
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;)V

    goto :goto_2

    .line 620
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "SIP session has been terminated"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method public waitInvitationAnswer()I
    .locals 6

    .prologue
    .line 453
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    if-nez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 464
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "ImsServiceSession: Waiting for Invite response"

    invoke-static {v1, v3}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->ringingPeriod:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 467
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v1, "ImsServiceSession: Waiting for Invite response"

    .line 471
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    .line 474
    :goto_1
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    return v1

    .line 454
    :cond_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    return v1

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Wait session invitation answer"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 472
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionInterrupted:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string/jumbo v1, "ImsServiceSession: Waiting for Invite response"

    .line 471
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_1

    .line 472
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    const-string/jumbo v2, "ImsServiceSession: Waiting for Invite response"

    .line 471
    invoke-static {v2}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    throw v1
.end method

.method public waitInvitationAnswer(J)I
    .locals 3
    .param p1, "ringingPeriod"    # J

    .prologue
    .line 483
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    if-nez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->waitUserAnswer:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 495
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :goto_1
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    return v1

    .line 484
    :cond_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->invitationStatus:I

    return v1

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Wait session invitation answer"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 498
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->sessionInterrupted:Z

    goto :goto_1
.end method
