.class public Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;
.super Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;
.source "VideoStreamingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MediaPlayerEventListener"
.end annotation


# instance fields
.field private session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V
    .locals 0
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    .line 174
    return-void
.end method


# virtual methods
.method public mediaClosed()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Media renderer is closed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mediaError(Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 237
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->closeMediaSession()V

    .line 245
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->terminateSession(I)V

    .line 248
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->session:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 251
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 262
    return-void

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media renderer has failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 252
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v3, 0x85

    invoke-direct {v2, v3, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSessionListener;->handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mediaOpened()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Media renderer is opened"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mediaResized(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The size of media has changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 197
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSessionListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSessionListener;->handleVideoResized(II)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mediaStarted()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Media renderer is started"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mediaStopped()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Media renderer is stopped"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
