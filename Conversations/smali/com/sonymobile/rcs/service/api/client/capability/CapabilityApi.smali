.class public Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;
.super Lcom/sonymobile/rcs/service/api/client/ClientApi;
.source "CapabilityApi.java"


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private coreApi:Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

.field mIsServiceConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/service/api/client/ClientApi;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->mIsServiceConnected:Z

    .line 103
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;-><init>(Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->apiConnection:Landroid/content/ServiceConnection;

    .line 67
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    .line 73
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->initialize(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;)Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;
    .param p1, "x1"    # Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->notifyEventApiConnected()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->notifyEventApiDisconnected()V

    return-void
.end method


# virtual methods
.method public connectApi()V
    .locals 4

    .prologue
    .line 80
    invoke-super {p0}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->connectApi()V

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    const-class v2, Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/utils/IntentUtil;->createExpicitIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 85
    return-void
.end method

.method public disconnectApi()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->disconnectApi()V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v0

    .line 147
    .local v0, "contactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    if-nez v0, :cond_0

    .line 150
    return-object v2

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v1

    return-object v1
.end method

.method public getMyCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMyCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public isRcsContact(Ljava/lang/String;)Z
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 203
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;->isRcsContact(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->mIsServiceConnected:Z

    return v0
.end method

.method public requestCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;

    invoke-direct {v1}, Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;-><init>()V

    throw v1

    .line 186
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;->requestCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
