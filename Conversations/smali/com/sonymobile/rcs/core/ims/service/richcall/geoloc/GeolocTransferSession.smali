.class public abstract Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;
.super Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
.source "GeolocTransferSession.java"


# instance fields
.field private geolocTransfered:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "contact"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->geolocTransfered:Z

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 62
    return-void
.end method


# virtual methods
.method public createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_GEOLOC_SHARE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public geolocTransfered()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->geolocTransfered:Z

    .line 69
    return-void
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->isSessionInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->closeMediaSession()V

    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v0, 0x0

    .line 129
    .local v0, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 133
    return-void

    .line 119
    .end local v0    # "j":I
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Session error: "

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

    .line 130
    .restart local v0    # "j":I
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isGeolocTransfered()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->geolocTransfered:Z

    return v0
.end method

.method public receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 2
    .param p1, "bye"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->isGeolocTransfered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    goto :goto_0
.end method
