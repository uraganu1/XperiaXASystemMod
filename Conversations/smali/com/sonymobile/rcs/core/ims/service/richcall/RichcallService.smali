.class public Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;
.super Lcom/sonymobile/rcs/core/ims/service/ImsService;
.source "RichcallService.java"


# static fields
.field public static final FEATURE_TAGS_GEOLOC_SHARE:[Ljava/lang/String;

.field public static FEATURE_TAGS_IMAGE_SHARE:[Ljava/lang/String;

.field public static FEATURE_TAGS_PRE_VIDEO_SHARE:[Ljava/lang/String;

.field public static final FEATURE_TAGS_VIDEO_SHARE:[Ljava/lang/String;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "+g.3gpp.cs-voice"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_VIDEO_SHARE:[Ljava/lang/String;

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "+g.3gpp.cs-voice"

    aput-object v1, v0, v2

    const-string/jumbo v1, "+g.3gpp.iari-ref"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_PRE_VIDEO_SHARE:[Ljava/lang/String;

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "+g.3gpp.cs-voice"

    aput-object v1, v0, v2

    const-string/jumbo v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_IMAGE_SHARE:[Ljava/lang/String;

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "+g.3gpp.cs-voice"

    aput-object v1, v0, v2

    const-string/jumbo v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_GEOLOC_SHARE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Z)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method private logSessionDetails(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V
    .locals 3
    .param p1, "imsServiceSession"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .prologue
    .line 620
    instance-of v0, p1, Lcom/sonymobile/rcs/core/ims/service/richcall/image/OriginatingImageTransferSession;

    if-nez v0, :cond_4

    .line 626
    :cond_0
    :goto_0
    instance-of v0, p1, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    if-nez v0, :cond_5

    .line 632
    :cond_1
    :goto_1
    instance-of v0, p1, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;

    if-nez v0, :cond_6

    .line 638
    :cond_2
    :goto_2
    instance-of v0, p1, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingLiveVideoStreamingSession;

    if-nez v0, :cond_7

    .line 644
    :cond_3
    :goto_3
    return-void

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding an instance of OriginatingImageTransferSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding an instance of TerminatingImageTransferSession"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 633
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding an instance of TerminatingVideoStreamingSession"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 639
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding an instance of OriginatingLiveVideoStreamingSession"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public abortAllSessions()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 617
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Abort all pending sessions"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCShSessions()Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 150
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .line 151
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    :goto_1
    return-object v1

    .line 152
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 153
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logSessionDetails(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 154
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCShSessions list:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCShSessions(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 170
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .line 171
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    return-object v1

    .line 172
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 173
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public initiateGeolocSharingSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/OriginatingGeolocTransferSession;

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p3}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/OriginatingGeolocTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)V

    .line 519
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/OriginatingGeolocTransferSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/OriginatingGeolocTransferSession;->startSession()V

    .line 520
    return-object v0

    .line 503
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/OriginatingGeolocTransferSession;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initiate geoloc sharing session with contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 511
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v2, "Call not established"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Rich call not established: cancel the initiation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public initiateImageSharingSession(Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;Z)Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;
    .locals 10
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "thumbnail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_4

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 206
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getMaxImageSharingSize()I

    move-result v2

    .line 207
    .local v2, "maxSize":I
    if-gtz v2, :cond_7

    .line 216
    :cond_1
    const/4 v3, 0x0

    .line 217
    .local v3, "rejectInvitation":Z
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getCShSessions()Ljava/util/Vector;

    move-result-object v1

    .line 218
    .local v1, "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_a

    .line 224
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    .line 250
    :cond_2
    :goto_1
    if-nez v3, :cond_10

    const/4 v5, 0x0

    .line 259
    .local v5, "thumbnailImage":[B
    if-nez p3, :cond_12

    .line 264
    .end local v5    # "thumbnailImage":[B
    :cond_3
    :goto_2
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/richcall/image/OriginatingImageTransferSession;

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, p2, v6, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/OriginatingImageTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V

    .line 268
    .local v4, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/image/OriginatingImageTransferSession;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/OriginatingImageTransferSession;->startSession()V

    .line 269
    return-object v4

    .line 192
    .end local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v2    # "maxSize":I
    .end local v3    # "rejectInvitation":Z
    .end local v4    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/image/OriginatingImageTransferSession;
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Initiate image sharing session with contact "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/content/MmContent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->isCallConnectedWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 199
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_6

    .line 202
    :goto_3
    new-instance v6, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v7, "Call not established"

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    :cond_6
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "No call (CS call or IP call) has been established: cancel the initiation"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 207
    .restart local v2    # "maxSize":I
    :cond_7
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v6

    int-to-long v8, v2

    cmp-long v6, v6, v8

    if-gtz v6, :cond_8

    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_1

    .line 208
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_9

    .line 211
    :goto_5
    new-instance v6, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v7, "File exceeds max size"

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 207
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 209
    :cond_9
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "File exceeds max size: cancel the initiation"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 220
    .restart local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .restart local v3    # "rejectInvitation":Z
    :cond_a
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_b

    .line 223
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 221
    :cond_b
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Max sessions reached"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    .line 225
    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .line 226
    .local v0, "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_d

    .line 231
    :goto_7
    instance-of v6, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    if-eqz v6, :cond_e

    .line 242
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 244
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_f

    .line 247
    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 227
    :cond_d
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Inside initiateImageSharingSession, existing session remote contact"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  Existing session id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_7

    .line 233
    :cond_e
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Max originating sessions reached"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :cond_f
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Only bidirectional session with same contact authorized"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 251
    .end local v0    # "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    :cond_10
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_11

    .line 254
    :goto_9
    new-instance v6, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v7, "Max content sharing sessions achieved"

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 252
    :cond_11
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "The max number of sharing sessions is achieved: cancel the initiation"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 259
    .restart local v5    # "thumbnailImage":[B
    :cond_12
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 260
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->createThumbnail(Landroid/net/Uri;)[B

    move-result-object v5

    .local v5, "thumbnailImage":[B
    goto/16 :goto_2
.end method

.method public initiateLiveVideoSharingSession(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "player"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 368
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 373
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, "rejectInvitation":Z
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getCShSessions()Ljava/util/Vector;

    move-result-object v1

    .line 384
    .local v1, "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 390
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    .line 412
    :cond_0
    :goto_1
    if-nez v2, :cond_a

    .line 420
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingLiveVideoStreamingSession;

    invoke-static {}, Lcom/sonymobile/rcs/core/content/ContentManager;->createGenericLiveVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v4

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p2, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingLiveVideoStreamingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/core/content/LiveVideoContent;Ljava/lang/String;)V

    .line 425
    .local v3, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingLiveVideoStreamingSession;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingLiveVideoStreamingSession;->startSession()V

    .line 426
    return-object v3

    .line 369
    .end local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v2    # "rejectInvitation":Z
    .end local v3    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/video/OriginatingLiveVideoStreamingSession;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Initiate a live video sharing session"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 377
    :goto_2
    new-instance v4, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v5, "Call not established"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 375
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Rich call not established: cancel the initiation"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 386
    .restart local v1    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .restart local v2    # "rejectInvitation":Z
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_5

    .line 389
    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    .line 387
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Max sessions reached"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 391
    :cond_6
    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .line 392
    .local v0, "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_7

    .line 398
    :goto_4
    instance-of v4, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;

    if-eqz v4, :cond_8

    .line 404
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 406
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 409
    :goto_5
    const/4 v2, 0x1

    goto :goto_1

    .line 393
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Inside initiateLiveVideoSharingSession, existing session remote contact"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  Existing session id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_4

    .line 400
    :cond_8
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Max originating sessions reached"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    :cond_9
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Only bidirectional session with same contact authorized"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 413
    .end local v0    # "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    :cond_a
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_b

    .line 416
    :goto_6
    new-instance v4, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v5, "Max content sharing sessions achieved"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 414
    :cond_b
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "The max number of sharing sessions is achieved: cancel the initiation"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public receiveCapabilityRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 11
    .param p1, "options"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 558
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "contact":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 566
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isRichcallSupportedWith(Ljava/lang/String;)Z

    move-result v5

    .line 569
    .local v5, "richcall":Z
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getContact()Ljavax2/sip/header/ContactHeader;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->getSupportedFeatureTags(ZZ)Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v5}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->buildSdp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkOptionsResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljavax2/sip/header/ContactHeader;Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    .line 575
    .local v4, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v4    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v5    # "richcall":Z
    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->extractCapabilities(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 584
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v6

    if-nez v6, :cond_2

    .line 590
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    invoke-virtual {v6, v1, v0, v10, v9}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    .line 595
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v6

    invoke-interface {v6, v1, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 597
    return-void

    .line 561
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OPTIONS request received during a call from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :catch_0
    move-exception v2

    .line 577
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 578
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Can\'t send 200 OK for OPTIONS"

    invoke-virtual {v6, v7, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 586
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    invoke-virtual {v6, v1, v0, v9, v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;II)V

    goto :goto_2
.end method

.method public receiveGeolocSharingInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 3
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 529
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/TerminatingGeolocTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 546
    .local v0, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->startSession()V

    .line 549
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleContentSharingTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;)V

    .line 550
    return-void

    .line 530
    .end local v0    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Receive a geoloc sharing session invitation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    const/16 v1, 0x25e

    .line 538
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 539
    return-void

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Rich call not established: reject the invitation"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public receiveImageSharingInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 12
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 278
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_2

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 293
    const/4 v4, 0x0

    .line 294
    .local v4, "rejectInvitation":Z
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getCShSessions()Ljava/util/Vector;

    move-result-object v2

    .line 296
    .local v2, "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    .line 302
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    if-eq v8, v6, :cond_7

    .line 323
    :cond_0
    :goto_1
    if-nez v4, :cond_c

    .line 332
    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    invoke-direct {v5, p0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 335
    .local v5, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getMaxImageSharingSize()I

    move-result v3

    .line 336
    .local v3, "maxSize":I
    if-gtz v3, :cond_e

    .line 350
    :cond_1
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->startSession()V

    .line 353
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/sonymobile/rcs/core/CoreListener;->handleContentSharingTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;)V

    .line 354
    return-void

    .line 279
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "maxSize":I
    .end local v4    # "rejectInvitation":Z
    .end local v5    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Receive an image sharing session invitation"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    const/16 v6, 0x25e

    .line 287
    invoke-virtual {p0, p1, v6}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 288
    return-void

    .line 285
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Rich call not established: reject the invitation"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 298
    .restart local v0    # "contact":Ljava/lang/String;
    .restart local v2    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .restart local v4    # "rejectInvitation":Z
    :cond_5
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_6

    .line 301
    :goto_3
    const/4 v4, 0x1

    goto :goto_1

    .line 299
    :cond_6
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Max sessions reached"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 303
    :cond_7
    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .line 304
    .local v1, "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_8

    .line 309
    :goto_4
    instance-of v8, v1, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    if-nez v8, :cond_9

    .line 315
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 317
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_b

    .line 320
    :goto_5
    const/4 v4, 0x1

    goto :goto_1

    .line 305
    :cond_8
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Inside receiveImageSharingInvitation, existing session remote contact"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  Existing session id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_4

    .line 311
    :cond_9
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_a

    .line 314
    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 312
    :cond_a
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Max terminating sessions reached"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 318
    :cond_b
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Only bidirectional session with same contact authorized"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 324
    .end local v1    # "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    :cond_c
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_d

    :goto_7
    const/16 v6, 0x1e6

    .line 327
    invoke-virtual {p0, p1, v6}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 328
    return-void

    .line 325
    :cond_d
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "The max number of sharing sessions is achieved: reject the invitation"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 336
    .restart local v3    # "maxSize":I
    .restart local v5    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;
    :cond_e
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v8

    int-to-long v10, v3

    cmp-long v8, v8, v10

    if-gtz v8, :cond_f

    :goto_8
    if-nez v6, :cond_1

    .line 337
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_10

    .line 342
    :goto_9
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x25b

    invoke-virtual {v5, p1, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    .line 345
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v7, 0x88

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 346
    return-void

    :cond_f
    move v6, v7

    .line 336
    goto :goto_8

    .line 338
    :cond_10
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Auto reject image sharing invitation"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public receiveVideoSharingInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 8
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v7, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, "rejectInvitation":Z
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getCShSessions()Ljava/util/Vector;

    move-result-object v2

    .line 449
    .local v2, "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 455
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 476
    :cond_0
    :goto_0
    if-nez v3, :cond_a

    .line 485
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;

    invoke-direct {v4, p0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 488
    .local v4, "session":Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->startSession()V

    .line 489
    return-void

    .line 437
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .end local v3    # "rejectInvitation":Z
    .end local v4    # "session":Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    const/16 v5, 0x25e

    .line 440
    invoke-virtual {p0, p1, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 441
    return-void

    .line 438
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Rich call not established: reject the invitation"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 451
    .restart local v0    # "contact":Ljava/lang/String;
    .restart local v2    # "currentSessions":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;>;"
    .restart local v3    # "rejectInvitation":Z
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_4

    .line 454
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 452
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Max sessions reached"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 456
    :cond_5
    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;

    .line 457
    .local v1, "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_6

    .line 462
    :goto_3
    instance-of v5, v1, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;

    if-nez v5, :cond_7

    .line 468
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_9

    .line 473
    :goto_4
    const/4 v3, 0x1

    goto :goto_0

    .line 458
    :cond_6
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Inside receiveVideoSharingInvitation, existing session remote contact"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  Existing session id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 464
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_8

    .line 467
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 465
    :cond_8
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Max terminating sessions reached"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 471
    :cond_9
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Only bidirectional session with same contact authorized"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 477
    .end local v1    # "currentSession":Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
    :cond_a
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_b

    :goto_6
    const/16 v5, 0x1e6

    .line 480
    invoke-virtual {p0, p1, v5}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V

    .line 481
    return-void

    .line 478
    :cond_b
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "The max number of sharing sessions is achieved: reject the invitation"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public resetSessions()V
    .locals 5

    .prologue
    .line 647
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    return-void

    .line 648
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Removing all session when call is connected"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 651
    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 652
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 655
    :goto_2
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->removeListeners()V

    .line 656
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->removeSession(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/richcall/RichCallApiService;->close()V

    goto :goto_1

    .line 653
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing the session when call is connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->isServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->setServiceStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 124
    return-void

    :cond_0
    monitor-exit p0

    .line 121
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->setServiceStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 135
    return-void

    :cond_0
    monitor-exit p0

    .line 132
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
