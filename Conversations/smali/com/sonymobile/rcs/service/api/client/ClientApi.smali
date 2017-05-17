.class public abstract Lcom/sonymobile/rcs/service/api/client/ClientApi;
.super Ljava/lang/Object;
.source "ClientApi.java"


# instance fields
.field protected ctx:Landroid/content/Context;

.field protected imsApiConnection:Landroid/content/ServiceConnection;

.field protected imsConnectionReceiver:Landroid/content/BroadcastReceiver;

.field protected imsCoreApi:Lcom/sonymobile/rcs/service/api/client/IImsApi;

.field private imsListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/ImsEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private lastImsStatus:Z

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/ClientApiListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->listeners:Ljava/util/Vector;

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsListeners:Ljava/util/Vector;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->lastImsStatus:Z

    .line 122
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;-><init>(Lcom/sonymobile/rcs/service/api/client/ClientApi;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsApiConnection:Landroid/content/ServiceConnection;

    .line 221
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/ClientApi$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/service/api/client/ClientApi$2;-><init>(Lcom/sonymobile/rcs/service/api/client/ClientApi;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/service/api/client/ClientApi;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/ClientApi;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->lastImsStatus:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/rcs/service/api/client/ClientApi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/ClientApi;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->lastImsStatus:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/service/api/client/ClientApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/ClientApi;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->notifyEventImsConnected()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/rcs/service/api/client/ClientApi;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/ClientApi;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->notifyEventImsDisconnected(I)V

    return-void
.end method

.method private notifyEventImsConnected()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 244
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 248
    return-void

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsListeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/ImsEventListener;

    .line 246
    .local v1, "imsListener":Lcom/sonymobile/rcs/service/api/client/ImsEventListener;
    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/ImsEventListener;->handleImsConnected()V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyEventImsDisconnected(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v0, 0x0

    .line 254
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 258
    return-void

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsListeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/ImsEventListener;

    .line 256
    .local v1, "imsListener":Lcom/sonymobile/rcs/service/api/client/ImsEventListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/ImsEventListener;->handleImsDisconnected(I)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addApiEventListener(Lcom/sonymobile/rcs/service/api/client/ClientApiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public addImsEventListener(Lcom/sonymobile/rcs/service/api/client/ImsEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/ImsEventListener;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public connectApi()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    const-class v2, Lcom/sonymobile/rcs/service/api/client/IImsApi;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/utils/IntentUtil;->createExpicitIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsApiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 92
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.sonymobile.rcs.IMS_STATUS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiUtils;->isServiceStarted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->notifyEventApiDisabled()V

    goto :goto_0
.end method

.method public disconnectApi()V
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsApiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :goto_1
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_1

    .line 109
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public isImsConnected(Landroid/content/Context;)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsCoreApi:Lcom/sonymobile/rcs/service/api/client/IImsApi;

    if-nez v1, :cond_0

    .line 274
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 269
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsCoreApi:Lcom/sonymobile/rcs/service/api/client/IImsApi;

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/IImsApi;->isImsConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected notifyEventApiConnected()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 202
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->listeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 206
    return-void

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    .line 204
    .local v1, "listener":Lcom/sonymobile/rcs/service/api/client/ClientApiListener;
    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiListener;->handleApiConnected()V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected notifyEventApiDisabled()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 192
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->listeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 196
    return-void

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    .line 194
    .local v1, "listener":Lcom/sonymobile/rcs/service/api/client/ClientApiListener;
    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiListener;->handleApiDisabled()V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected notifyEventApiDisconnected()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->listeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 216
    return-void

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    .line 214
    .local v1, "listener":Lcom/sonymobile/rcs/service/api/client/ClientApiListener;
    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiListener;->handleApiDisconnected()V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onApplicationStartupScreenDisplayed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 282
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 284
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sonymobile.rcs.permission.STACK_PERMISSION"

    .line 288
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseProvisioned()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 285
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 290
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isServiceActivated()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/rcs/service/LauncherUtils;->forceLaunchRcsCoreService(Landroid/content/Context;)V

    .line 293
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcseEnabled(Z)V

    goto :goto_0
.end method

.method public removeApiEventListener(Lcom/sonymobile/rcs/service/api/client/ClientApiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public removeImsEventListener(Lcom/sonymobile/rcs/service/api/client/ImsEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/rcs/service/api/client/ImsEventListener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method
