.class public Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;
.super Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi$Stub;
.source "IPCallApiService.java"


# static fields
.field private static ipCallSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->ipCallSessions:Ljava/util/Hashtable;

    const-class v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi$Stub;-><init>()V

    .line 56
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IP call API is loaded"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static addIPCallSession(Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;)V
    .locals 3
    .param p0, "sessionApi"    # Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;

    .prologue
    .line 76
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->ipCallSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add an IP Call session in the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->ipCallSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static removeIPCallSession(Ljava/lang/String;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->ipCallSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove an IP Call session from the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->ipCallSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->ipCallSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 67
    return-void
.end method

.method public getSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 220
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 228
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 231
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->ipCallSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;

    return-object v0

    .line 221
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get IP call session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSessions()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 241
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_0

    .line 246
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 249
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 252
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/Core;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->getIPCallSessions()Ljava/util/Vector;

    move-result-object v3

    .line 254
    .local v3, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v2, 0x0

    .line 255
    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v2, v7, :cond_1

    .line 266
    return-object v4

    .line 242
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;>;"
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Get IP call sessions"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;>;"
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .line 257
    .local v5, "session":Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    .line 258
    .local v0, "dialog":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    if-nez v0, :cond_3

    .line 255
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSigEstablished()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 260
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->ipCallSessions:Ljava/util/Hashtable;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;

    .line 261
    .local v6, "sessionApi":Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    if-eqz v6, :cond_2

    .line 262
    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 266
    .end local v0    # "dialog":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;>;"
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v5    # "session":Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
    .end local v6    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_4

    .line 271
    :goto_3
    new-instance v7, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    :cond_4
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Unexpected error"

    invoke-virtual {v7, v8, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public initiateCall(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    .locals 10
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "audioPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    .param p3, "audioRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    .param p4, "videoPlayer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .param p5, "videoRenderer"    # Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermission()V

    .line 117
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 120
    if-nez p2, :cond_2

    .line 121
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    const-string/jumbo v1, "Missing audio player or renderer"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initiate an IP call session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    if-eqz p3, :cond_0

    .line 126
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->initiateIPCallSession(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    move-result-object v8

    .line 133
    .local v8, "session":Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
    invoke-static {}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->getInstance()Lcom/sonymobile/rcs/provider/ipcall/IPCall;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioContent()Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    move-result-object v4

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->addCall(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/core/content/MmContent;I)Landroid/net/Uri;

    .line 138
    new-instance v9, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;

    invoke-direct {v9, v8}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    .line 139
    .local v9, "sessionApi":Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;
    invoke-static {v9}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->addIPCallSession(Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-object v9

    .end local v8    # "session":Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
    .end local v9    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;
    :catch_0
    move-exception v7

    .line 142
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveIPCallInvitation(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
    .locals 13
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    const/4 v6, 0x0

    .line 153
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getAudioContent()Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    move-result-object v4

    .local v4, "audiocontent":Lcom/sonymobile/rcs/core/content/AudioContent;
    const/4 v7, 0x0

    .line 163
    .local v7, "audioEncoding":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 169
    .end local v7    # "audioEncoding":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v5

    .local v5, "videocontent":Lcom/sonymobile/rcs/core/content/VideoContent;
    const/4 v10, 0x0

    .local v10, "videoEncoding":Ljava/lang/String;
    const/4 v12, -0x1

    .local v12, "videoWidth":I
    const/4 v11, -0x1

    .line 173
    .local v11, "videoHeight":I
    if-nez v5, :cond_2

    .line 180
    .end local v10    # "videoEncoding":Ljava/lang/String;
    :goto_2
    new-instance v9, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;

    invoke-direct {v9, p1}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    .line 181
    .local v9, "sessionApi":Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;
    invoke-static {v9}, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->addIPCallSession(Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;)V

    .line 184
    invoke-static {}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->getInstance()Lcom/sonymobile/rcs/provider/ipcall/IPCall;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->addCall(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/core/content/MmContent;I)Landroid/net/Uri;

    .line 188
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.sonymobile.rcs.ipcall.IPCALL_INVITATION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "contact"

    .line 189
    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "contactDisplayname"

    .line 190
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "sessionId"

    .line 191
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "audiotype"

    .line 192
    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    if-nez v5, :cond_3

    .line 200
    :goto_3
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_4
    const/high16 v0, 0x10000000

    .line 207
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    return-void

    .line 154
    .end local v1    # "number":Ljava/lang/String;
    .end local v4    # "audiocontent":Lcom/sonymobile/rcs/core/content/AudioContent;
    .end local v5    # "videocontent":Lcom/sonymobile/rcs/core/content/VideoContent;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;
    .end local v11    # "videoHeight":I
    .end local v12    # "videoWidth":I
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive IP call invitation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .restart local v1    # "number":Ljava/lang/String;
    .restart local v4    # "audiocontent":Lcom/sonymobile/rcs/core/content/AudioContent;
    .restart local v7    # "audioEncoding":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/content/AudioContent;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .local v7, "audioEncoding":Ljava/lang/String;
    goto :goto_1

    .line 174
    .end local v7    # "audioEncoding":Ljava/lang/String;
    .restart local v5    # "videocontent":Lcom/sonymobile/rcs/core/content/VideoContent;
    .restart local v10    # "videoEncoding":Ljava/lang/String;
    .restart local v11    # "videoHeight":I
    .restart local v12    # "videoWidth":I
    :cond_2
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/VideoContent;->getEncoding()Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "videoEncoding":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/VideoContent;->getWidth()I

    move-result v12

    .line 176
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/content/VideoContent;->getHeight()I

    move-result v11

    goto/16 :goto_2

    .end local v10    # "videoEncoding":Ljava/lang/String;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallSession;
    :cond_3
    const-string/jumbo v0, "audiotype"

    .line 194
    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "videotype"

    .line 195
    invoke-virtual {v8, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "videowidth"

    .line 196
    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "videoheight"

    .line 197
    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 201
    :cond_4
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "IPCallInvitation Intent "

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audiotype :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videotype :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videowidth :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/ipcall/IPCallApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoheight :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
