.class public Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;
.super Lcom/sonymobile/rcs/core/ims/service/ImsService;
.source "PresenceService.java"

# interfaces
.implements Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field public permanentState:Z

.field private presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

.field private presenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

.field private publisher:Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;

.field private watcherInfoSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

.field private xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSocialPresenceSupported()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Z)V

    .line 61
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 98
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isPermanentStateModeActivated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->permanentState:Z

    .line 101
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    .line 104
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->publisher:Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;

    .line 107
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/WatcherInfoSubscribeManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->watcherInfoSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    .line 110
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceSubscribeManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    .line 111
    return-void
.end method

.method private buildBooleanStatus(Z)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 427
    if-nez p1, :cond_0

    const-string/jumbo v0, "closed"

    .line 430
    return-object v0

    :cond_0
    const-string/jumbo v0, "open"

    .line 428
    return-object v0
.end method

.method private buildCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)Ljava/lang/String;
    .locals 2
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<tuple id=\"t1\">\r\n  <status><basic>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isFileTransferSupported()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildBooleanStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</basic></status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "org.openmobilealliance:File-Transfer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:version>1.0</op:version>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  </op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</tuple>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<tuple id=\"t2\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <status><basic>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImageSharingSupported()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildBooleanStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</basic></status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "org.gsma.imageshare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:version>1.0</op:version>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  </op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</tuple>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<tuple id=\"t3\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <status><basic>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isVideoSharingSupported()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildBooleanStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</basic></status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "org.gsma.videoshare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:version>1.0</op:version>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  </op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</tuple>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<tuple id=\"t4\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <status><basic>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isImSessionSupported()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildBooleanStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</basic></status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "org.openmobilealliance:IM-session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:version>1.0</op:version>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  </op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</tuple>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<tuple id=\"t5\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <status><basic>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isCsVideoSupported()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildBooleanStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</basic></status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "org.3gpp.cs-videotelephony"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</op:service-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    <op:version>1.0</op:version>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  </op:service-description>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</contact>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  <timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</tuple>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildGeoloc(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;)Ljava/lang/String;
    .locals 4
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "geolocInfo"    # Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    .prologue
    const-string/jumbo v0, ""

    .line 494
    .local v0, "document":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 507
    :goto_0
    return-object v0

    .line 495
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<tuple id=\"g1\">\r\n  <status><basic>open</basic></status>\r\n   <gp:geopriv>\r\n    <gp:location-info><gml:location>\r\n        <gml:Point srsDimension=\"3\"><gml:pos>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</gml:pos>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "        </gml:Point></gml:location>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    </gp:location-info>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    <gp:method>GPS</gp:method>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   </gp:geopriv>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  <contact>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</contact>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  <timestamp>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</timestamp>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</tuple>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private buildPartialPresenceInfoDocument(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .prologue
    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<presence xmlns=\"urn:ietf:params:xml:ns:pidf\" xmlns:op=\"urn:oma:xml:prs:pidf:oma-pres\" xmlns:opd=\"urn:oma:xml:pde:pidf:ext\" xmlns:pdm=\"urn:ietf:params:xml:ns:pidf:data-model\" xmlns:ci=\"urn:ietf:params:xml:ns:pidf:cipid\" xmlns:rpid=\"urn:ietf:params:xml:ns:pidf:rpid\" xmlns:gp=\"urn:ietf:params:xml:ns:pidf:geopriv10\" xmlns:gml=\"urn:opengis:specification:gml:schema-xsd:feature:v3.0\" entity=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "document":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "timestamp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMyCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getGeoloc()Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildGeoloc(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</presence>\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    return-object v0
.end method

.method private buildPermanentPresenceInfoDocument(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .prologue
    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<presence xmlns=\"urn:ietf:params:xml:ns:pidf\" xmlns:op=\"urn:oma:xml:prs:pidf:oma-pres\" xmlns:opd=\"urn:oma:xml:pde:pidf:ext\" xmlns:pdm=\"urn:ietf:params:xml:ns:pidf:data-model\" xmlns:ci=\"urn:ietf:params:xml:ns:pidf:cipid\" xmlns:rpid=\"urn:ietf:params:xml:ns:pidf:rpid\" entity=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "document":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "timestamp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<pdm:person id=\"p1\">\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildPersonInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  <pdm:timestamp>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</pdm:timestamp>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</pdm:person>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</presence>\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    return-object v0
.end method

.method private buildPersonInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "info"    # Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .prologue
    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  <op:overriding-willingness>\r\n    <op:basic>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPresenceStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</op:basic>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  </op:overriding-willingness>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "document":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFavoriteLink()Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    move-result-object v1

    .line 522
    .local v1, "favoriteLink":Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;
    if-nez v1, :cond_2

    .line 528
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v3

    .line 529
    .local v3, "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    if-nez v3, :cond_3

    .line 536
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getFreetext()Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "freetext":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 542
    :goto_2
    return-object v0

    .line 522
    .end local v2    # "freetext":Ljava/lang/String;
    .end local v3    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->getLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  <ci:homepage>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</ci:homepage>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 529
    .restart local v3    # "photoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_3
    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getEtag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  <rpid:status-icon opd:etag=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getEtag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" opd:fsize=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" opd:contenttype=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" opd:resolution=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getResolution()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->getEndUserPhotoIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</rpid:status-icon>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 538
    .restart local v2    # "freetext":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  <pdm:note>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</pdm:note>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private buildPresenceInfoDocument(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .prologue
    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<presence xmlns=\"urn:ietf:params:xml:ns:pidf\" xmlns:op=\"urn:oma:xml:prs:pidf:oma-pres\" xmlns:opd=\"urn:oma:xml:pde:pidf:ext\" xmlns:pdm=\"urn:ietf:params:xml:ns:pidf:data-model\" xmlns:ci=\"urn:ietf:params:xml:ns:pidf:cipid\" xmlns:rpid=\"urn:ietf:params:xml:ns:pidf:rpid\" xmlns:gp=\"urn:ietf:params:xml:ns:pidf:geopriv10\" xmlns:gml=\"urn:opengis:specification:gml:schema-xsd:feature:v3.0\" entity=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "document":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "timestamp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMyCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getGeoloc()Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildGeoloc(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<pdm:person id=\"p1\">\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildPersonInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  <pdm:timestamp>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</pdm:timestamp>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</pdm:person>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</presence>\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    return-object v0
.end method

.method private updatePhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)Z
    .locals 10
    .param p1, "photoIcon"    # Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    .prologue
    const/4 v4, 0x0

    .line 654
    const/4 v2, 0x0

    .line 657
    .local v2, "result":Z
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v0

    .line 658
    .local v0, "currentPhoto":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    if-nez p1, :cond_2

    .line 673
    :cond_0
    if-eqz p1, :cond_8

    .line 681
    :cond_1
    const/4 v2, 0x1

    .line 684
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 658
    .restart local v2    # "result":Z
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getEtag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 660
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxPhotoIconSize()I

    move-result v3

    mul-int/lit16 v1, v3, 0x400

    .line 661
    .local v1, "maxSize":I
    if-nez v1, :cond_4

    .line 669
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_7

    .line 672
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->uploadPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 661
    .local v2, "result":Z
    :cond_4
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getSize()J

    move-result-wide v6

    int-to-long v8, v1

    cmp-long v3, v6, v8

    if-gtz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_3

    .line 662
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_6

    .line 665
    :goto_3
    return v4

    :cond_5
    move v3, v4

    .line 661
    goto :goto_2

    .line 663
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Max photo size achieved"

    invoke-virtual {v3, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 670
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Upload the photo-icon"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 673
    .end local v1    # "maxSize":I
    :cond_8
    if-eqz v0, :cond_1

    .line 675
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_9

    .line 678
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->deletePhotoIcon()Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 676
    .local v2, "result":Z
    :cond_9
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Delete the photo-icon"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public acceptPresenceSharingInvitation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 836
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "contactUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->addContactToGrantedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v1

    .line 838
    .local v1, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v1, :cond_1

    .line 841
    :cond_0
    return v3

    .line 838
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    const/4 v2, 0x1

    return v2
.end method

.method public blockPresenceSharingInvitation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 853
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "contactUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->addContactToBlockedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v1

    .line 855
    .local v1, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v1, :cond_1

    .line 858
    :cond_0
    return v3

    .line 855
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    const/4 v2, 0x1

    return v2
.end method

.method public deletePhotoIcon()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 772
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->deleteEndUserPhoto()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v0

    .line 773
    .local v0, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v0, :cond_0

    .line 777
    :goto_0
    return v2

    .line 773
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 773
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isNotFoundResponse()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public firstLaunchOrAccountChangedCheck(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "grantedContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "blockedContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->flushContactProvider()V

    const/4 v3, 0x0

    .line 215
    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    const/4 v3, 0x0

    .line 247
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_6

    .line 280
    return-void

    .line 208
    .end local v3    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "First launch or account change check procedure"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .restart local v3    # "i":I
    :cond_1
    sget-object v6, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "me":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 215
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    :cond_2
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "rcsNumber":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/rcs/utils/ContactUtils;->isNumberInAddressBook(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 241
    :cond_3
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v5, v7}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyRcsContactInProvider(Ljava/lang/String;I)V

    goto :goto_3

    .line 223
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_5

    .line 230
    :goto_5
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/sonymobile/rcs/utils/ContactUtils;->createRcsContactIfNeeded(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 237
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 234
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Something went wrong when creating contact "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 224
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The RCS number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " was not found in the address book: add it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 249
    .end local v0    # "contact":Ljava/lang/String;
    .end local v4    # "me":Ljava/lang/String;
    .end local v5    # "rcsNumber":Ljava/lang/String;
    :cond_6
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
    .restart local v5    # "rcsNumber":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/rcs/utils/ContactUtils;->isNumberInAddressBook(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 247
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 252
    :cond_7
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_a

    .line 259
    :goto_7
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/sonymobile/rcs/utils/ContactUtils;->createRcsContactIfNeeded(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :cond_8
    :goto_8
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->blockContact(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sonymobile/rcs/provider/eab/ContactsManagerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 276
    :cond_9
    :goto_9
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v5, v7}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyRcsContactInProvider(Ljava/lang/String;I)V

    goto :goto_6

    .line 253
    :cond_a
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The RCS number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " was not found in the address book: add it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 265
    :catch_1
    move-exception v2

    .line 262
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 263
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Something went wrong when creating contact "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 273
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 270
    .local v1, "e":Lcom/sonymobile/rcs/provider/eab/ContactsManagerException;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 271
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Something went wrong when blocking contact "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    return-object v0
.end method

.method public getPresenceSubscriber()Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    return-object v0
.end method

.method public getWatcherInfoSubscriber()Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->watcherInfoSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    return-object v0
.end method

.method public getXdmManager()Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    return-object v0
.end method

.method public handleAddressBookHasChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 906
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRcsContactsWithSocialPresence()Ljava/util/List;

    move-result-object v2

    .local v2, "rcsNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 907
    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 978
    return-void

    .line 909
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 910
    .local v1, "rcsNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/ContactUtils;->isNumberInAddressBook(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 907
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 912
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    .line 917
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isNumberShared(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 920
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_6

    .line 925
    :goto_3
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->revokeSharedContact(Ljava/lang/String;)Z

    move-result v3

    .line 926
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 932
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->removeRevokedContact(Ljava/lang/String;)Z

    move-result v3

    .line 933
    if-nez v3, :cond_7

    .line 938
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 939
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Something went wrong when revoking shared contact"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 913
    .end local v3    # "result":Z
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The RCS number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " was not found in the address book any more."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 917
    :cond_5
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isNumberInvited(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 943
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isNumberBlocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 960
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isNumberWilling(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 966
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isNumberCancelled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 968
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_c

    .line 973
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyRcsContactInProvider(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 921
    :cond_6
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is either active or invited"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 922
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "We remove it from the buddy list"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 935
    .restart local v3    # "result":Z
    :cond_7
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyRcsContactInProvider(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 945
    .end local v3    # "result":Z
    :cond_8
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 950
    :goto_5
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->removeBlockedContact(Ljava/lang/String;)Z

    move-result v3

    .line 951
    .restart local v3    # "result":Z
    if-nez v3, :cond_a

    .line 956
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 957
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Something went wrong when removing blocked contact"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 946
    .end local v3    # "result":Z
    :cond_9
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is blocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 947
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "We remove it from the blocked list"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 953
    .restart local v3    # "result":Z
    :cond_a
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->modifyRcsContactInProvider(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 962
    .end local v3    # "result":Z
    :cond_b
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 963
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is willing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 964
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Nothing to do"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 969
    :cond_c
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is cancelled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 970
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "We remove it from rich address book provider"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public inviteContactToSharePresence(Ljava/lang/String;)Z
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 789
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "contactUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->removeContactFromBlockedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    .line 793
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->removeContactFromRevokedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    .line 796
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->addContactToGrantedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v1

    .line 797
    .local v1, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v1, :cond_1

    .line 800
    :cond_0
    return v3

    .line 797
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    const/4 v2, 0x1

    return v2
.end method

.method public isPermanentState()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->permanentState:Z

    return v0
.end method

.method public publishPresenceInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Z
    .locals 5
    .param p1, "info"    # Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .prologue
    .line 695
    const/4 v1, 0x0

    .line 698
    .local v1, "result":Z
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->updatePhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)Z

    move-result v1

    .line 699
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->resetTimestamp()V

    .line 708
    iget-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->permanentState:Z

    if-nez v3, :cond_1

    .line 722
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_5

    .line 725
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildPresenceInfoDocument(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, "xml":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->publisher:Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->publish(Ljava/lang/String;)Z

    move-result v1

    .line 730
    .end local v1    # "result":Z
    :goto_1
    if-nez v1, :cond_6

    .line 734
    :goto_2
    return v1

    .line 701
    .end local v2    # "xml":Ljava/lang/String;
    .restart local v1    # "result":Z
    :cond_0
    return v1

    .line 710
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 713
    :goto_3
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildPermanentPresenceInfoDocument(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;

    move-result-object v2

    .line 714
    .restart local v2    # "xml":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->setPresenceInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v0

    .line 715
    .local v0, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v0, :cond_4

    .line 718
    :cond_2
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_1

    .line 711
    .end local v0    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v2    # "xml":Ljava/lang/String;
    .local v1, "result":Z
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Publish presence info via XDM request (permanent state)"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 715
    .restart local v0    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v2    # "xml":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 716
    const/4 v1, 0x1

    .local v1, "result":Z
    goto :goto_1

    .line 723
    .end local v0    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v2    # "xml":Ljava/lang/String;
    .local v1, "result":Z
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Publish presence info via SIP request"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 731
    .end local v1    # "result":Z
    .restart local v2    # "xml":Ljava/lang/String;
    :cond_6
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    goto :goto_2
.end method

.method public removeBlockedContact(Ljava/lang/String;)Z
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 888
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "contactUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->removeContactFromBlockedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v1

    .line 890
    .local v1, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v1, :cond_0

    .line 894
    :goto_0
    return v3

    .line 890
    :cond_0
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 892
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 890
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isNotFoundResponse()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public removeRevokedContact(Ljava/lang/String;)Z
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 870
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "contactUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->removeContactFromRevokedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v1

    .line 872
    .local v1, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v1, :cond_0

    .line 876
    :goto_0
    return v3

    .line 872
    :cond_0
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 874
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 872
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isNotFoundResponse()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public revokeSharedContact(Ljava/lang/String;)Z
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 812
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "contactUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->addContactToRevokedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v1

    .line 814
    .local v1, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v1, :cond_1

    .line 815
    :cond_0
    return v3

    .line 814
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->removeContactFromGrantedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v1

    .line 820
    if-nez v1, :cond_2

    .line 824
    :goto_0
    return v3

    .line 820
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 822
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 820
    :cond_4
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isNotFoundResponse()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 7

    .prologue
    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->isServiceStarted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 121
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->setServiceStarted(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/Core;->getAddressBookManager()Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->addAddressBookListener(Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;)V

    .line 127
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getMyPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .line 128
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    .line 133
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->initialize()V

    .line 136
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->getGrantedContacts()Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, "grantedContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "me":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/service/StartService;->getNewUserAccount(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 153
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->watcherInfoSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribe()Z

    move-result v4

    if-nez v4, :cond_8

    .line 158
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_9

    .line 164
    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->subscribe()Z

    move-result v4

    if-nez v4, :cond_a

    .line 169
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_b

    .line 176
    :cond_1
    :goto_4
    iget-boolean v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->permanentState:Z

    if-nez v4, :cond_c

    .line 179
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-direct {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildPresenceInfoDocument(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "xml":Ljava/lang/String;
    :goto_5
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->publisher:Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->publish(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 186
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_e

    .line 192
    :cond_2
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->handleAddressBookHasChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 193
    return-void

    .end local v1    # "grantedContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "me":Ljava/lang/String;
    .end local v3    # "xml":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    .line 119
    return-void

    .line 129
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Last presence info:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 139
    .restart local v1    # "grantedContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "me":Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_6

    .line 142
    :goto_7
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v4, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->addContactToGrantedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    goto :goto_1

    .line 140
    :cond_6
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "The enduser is not in the granted list: add it now"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 148
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->getBlockedContacts()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "blockedContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->firstLaunchOrAccountChangedCheck(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_2

    .line 154
    .end local v0    # "blockedContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Subscribe manager is started with success for watcher-info"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 159
    :cond_9
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Subscribe manager can\'t be started for watcher-info"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 165
    :cond_a
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Subscribe manager is started with success for presence"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 170
    :cond_b
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Subscribe manager can\'t be started for presence"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 177
    :cond_c
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-direct {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildPartialPresenceInfoDocument(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "xml":Ljava/lang/String;
    goto/16 :goto_5

    .line 182
    :cond_d
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Publish manager is started with success"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 187
    :cond_e
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Publish manager can\'t be started"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->isServiceStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->setServiceStarted(Z)V

    .line 293
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getAddressBookManager()Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->removeAddressBookListener(Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;)V

    .line 295
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->permanentState:Z

    if-eqz v1, :cond_2

    .line 307
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->publisher:Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->terminate()V

    .line 310
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->watcherInfoSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->terminate()V

    .line 311
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceSubscriber:Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/presence/SubscribeManager;->terminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 312
    return-void

    :cond_1
    monitor-exit p0

    .line 288
    return-void

    .line 298
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->publisher:Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->isPublished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->buildPresenceInfoDocument(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "xml":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->publisher:Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/PublishManager;->publish(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "xml":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public uploadPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)Z
    .locals 6
    .param p1, "photo"    # Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    .prologue
    const/4 v3, 0x0

    .line 745
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->xdm:Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->uploadEndUserPhoto(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v1

    .line 746
    .local v1, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v1, :cond_1

    .line 761
    :cond_0
    return v3

    .line 746
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Etag"

    .line 748
    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "etag":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    :goto_0
    invoke-virtual {p1, v0}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->setEtag(Ljava/lang/String;)V

    .line 759
    const/4 v2, 0x1

    return v2

    .line 751
    :cond_2
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/StringUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
