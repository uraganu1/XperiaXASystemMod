.class public abstract Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;
.super Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;
.source "ImageTransferSession.java"


# instance fields
.field private imageTransfered:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private thumbnail:[B


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "thumbnail"    # [B

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->imageTransfered:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->thumbnail:[B

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 76
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->thumbnail:[B

    .line 77
    return-void
.end method

.method public static getMaxImageSharingSize()I
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxImageSharingSize()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method


# virtual methods
.method public createInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->thumbnail:[B

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_IMAGE_SHARE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_IMAGE_SHARE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalContent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "boundary1"

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createMultipartInvite(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->thumbnail:[B

    return-object v0
.end method

.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->isSessionInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->closeMediaSession()V

    .line 156
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v0, 0x0

    .line 159
    .local v0, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 163
    return-void

    .line 149
    .end local v0    # "j":I
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 160
    .restart local v0    # "j":I
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    invoke-direct {v2, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public imageTransfered()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->imageTransfered:Z

    .line 84
    return-void
.end method

.method public isImageTransfered()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->imageTransfered:Z

    return v0
.end method

.method public receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 2
    .param p1, "bye"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingSession;->receiveBye(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->isImageTransfered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    goto :goto_0
.end method
