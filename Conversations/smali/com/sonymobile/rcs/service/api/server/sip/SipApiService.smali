.class public Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;
.super Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;
.source "SipApiService.java"


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private static sipSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->sipSessions:Ljava/util/Hashtable;

    const-class v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;-><init>()V

    .line 66
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "SIP API is loaded"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static addSipSession(Lcom/sonymobile/rcs/service/api/server/sip/SipSession;)V
    .locals 3
    .param p0, "session"    # Lcom/sonymobile/rcs/service/api/server/sip/SipSession;

    .prologue
    .line 85
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->sipSessions:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add a SIP session in the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->sipSessions:Ljava/util/Hashtable;

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

.method protected static removeSipSession(Ljava/lang/String;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->sipSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove a SIP session from the list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->sipSessions:Ljava/util/Hashtable;

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
    .line 76
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->sipSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 77
    return-void
.end method

.method public getSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermissionForExtensions()V

    .line 171
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 174
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->sipSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;

    return-object v0

    .line 164
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get SIP session "

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
    .line 222
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_0

    .line 227
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermissionForExtensions()V

    .line 230
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 233
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/Core;->getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getSipSessions()Ljava/util/Vector;

    move-result-object v3

    .line 234
    .local v3, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v2, 0x0

    .line 235
    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v2, v7, :cond_1

    .line 246
    return-object v4

    .line 223
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Get SIP sessions"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    .line 237
    .local v5, "session":Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v0

    .line 238
    .local v0, "dialog":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    if-nez v0, :cond_3

    .line 235
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->isSigEstablished()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 240
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->sipSessions:Ljava/util/Hashtable;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;

    .line 241
    .local v6, "sessionApi":Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    if-eqz v6, :cond_2

    .line 242
    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 246
    .end local v0    # "dialog":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v5    # "session":Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
    .end local v6    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_4

    .line 251
    :goto_3
    new-instance v7, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 249
    :cond_4
    sget-object v7, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Unexpected error"

    invoke-virtual {v7, v8, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getSessionsWith(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 185
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 190
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermissionForExtensions()V

    .line 193
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 196
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getSipSessionsWith(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 198
    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .line 199
    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v1, v6, :cond_1

    .line 206
    return-object v3

    .line 186
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Get SIP sessions with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    .line 201
    .local v4, "session":Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->sipSessions:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;

    .line 202
    .local v5, "sessionApi":Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    if-nez v5, :cond_2

    .line 199
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :cond_2
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 206
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;>;"
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "session":Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
    .end local v5    # "sessionApi":Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 211
    :goto_3
    new-instance v6, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    :cond_3
    sget-object v6, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Unexpected error"

    invoke-virtual {v6, v7, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public initiateSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "featureTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 128
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermissionForExtensions()V

    .line 136
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testIms()V

    .line 140
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->initiateSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    move-result-object v1

    .line 144
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
    new-instance v2, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;)V

    .line 145
    .local v2, "sessionApi":Lcom/sonymobile/rcs/service/api/server/sip/SipSession;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->addSipSession(Lcom/sonymobile/rcs/service/api/server/sip/SipSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-object v2

    .line 129
    .end local v1    # "session":Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;
    .end local v2    # "sessionApi":Lcom/sonymobile/rcs/service/api/server/sip/SipSession;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Initiate a SIP session with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    :goto_1
    new-instance v3, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_1
    sget-object v3, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Unexpected error"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isBehindNat()Z
    .locals 3

    .prologue
    .line 307
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->isBehindNat()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    :goto_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected error"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public receiveSipInstantMessage(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v0, 0x10000000

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method public receiveSipSessionInvitation(Landroid/content/Intent;Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    .prologue
    .line 111
    new-instance v0, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;

    invoke-direct {v0, p2}, Lcom/sonymobile/rcs/service/api/server/sip/SipSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;)V

    .line 112
    .local v0, "sessionApi":Lcom/sonymobile/rcs/service/api/server/sip/SipSession;
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->addSipSession(Lcom/sonymobile/rcs/service/api/server/sip/SipSession;)V

    const/high16 v1, 0x10000000

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public sendSipInstantMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "featureTag"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 267
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testPermissionForExtensions()V

    .line 275
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->testCore()V

    .line 278
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/ims/service/sip/SipService;->sendInstantMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 268
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send an instant message to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/api/server/sip/SipApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected error"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
