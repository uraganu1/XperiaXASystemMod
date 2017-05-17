.class public Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;
.super Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;
.source "IPCallStreamingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoPlayerEventListener"
.end annotation


# instance fields
.field private session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
    .locals 0
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;-><init>()V

    .line 1087
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .line 1088
    return-void
.end method


# virtual methods
.method public mediaClosed()V
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 1151
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->closeMediaSession()V

    .line 1159
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1, v4}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->terminateSession(I)V

    .line 1162
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 1165
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1174
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteParty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 1176
    return-void

    .line 1152
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 1166
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v3, 0x9d

    invoke-direct {v2, v3, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    .line 1166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mediaOpened()V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 1106
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1110
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1116
    :cond_0
    return-void

    .line 1107
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 1111
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleVideoResized(II)V

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mediaStarted()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    :goto_0
    return-void

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Media renderer is started"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mediaStopped()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;->this$0:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Media renderer is stopped"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
