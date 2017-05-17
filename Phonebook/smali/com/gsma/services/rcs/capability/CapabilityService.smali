.class public Lcom/gsma/services/rcs/capability/CapabilityService;
.super Lcom/gsma/services/rcs/JoynService;
.source "CapabilityService.java"


# static fields
.field public static final EXTENSION_MIME_TYPE:Ljava/lang/String; = "com.gsma.services.rcs"

.field private static final IMS_PRESENCE_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.imspresence"

.field public static final INTENT_EXTENSIONS:Ljava/lang/String; = "com.gsma.services.rcs.capability.EXTENSION"


# instance fields
.field private api:Lcom/gsma/services/rcs/capability/ICapabilityService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/JoynServiceListener;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/JoynService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/JoynServiceListener;)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    .line 118
    new-instance v0, Lcom/gsma/services/rcs/capability/CapabilityService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/capability/CapabilityService$1;-><init>(Lcom/gsma/services/rcs/capability/CapabilityService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/JoynServiceListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/JoynServiceListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/JoynServiceListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/JoynServiceListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;

    return-object v0
.end method


# virtual methods
.method public addCapabilitiesListener(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 262
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;,
            Lcom/gsma/services/rcs/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 300
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 301
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    return-void

    .line 302
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v2, v0, p2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->addContactCapabilitiesListener(Ljava/lang/String;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 306
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connect()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sonymobile.imspresence"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 91
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContactCapabilities(Ljava/lang/String;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;,
            Lcom/gsma/services/rcs/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 168
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->getContactCapabilities(Ljava/lang/String;)Lcom/gsma/services/rcs/capability/Capabilities;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 144
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/capability/ICapabilityService;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 280
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;,
            Lcom/gsma/services/rcs/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 324
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    return-void

    .line 326
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v2, v0, p2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->removeContactCapabilitiesListener(Ljava/lang/String;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestAllContactsCapabilities()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 244
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestAllContactsCapabilities()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 246
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestContactCapabilities(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;,
            Lcom/gsma/services/rcs/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/JoynServiceNotAvailableException;-><init>()V

    throw v0

    .line 196
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestContactCapabilities(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Lcom/gsma/services/rcs/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestContactCapabilities(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/JoynServiceException;,
            Lcom/gsma/services/rcs/JoynContactFormatException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    return-void

    .line 224
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/JoynService;->setApi(Landroid/os/IInterface;)V

    .line 112
    check-cast p1, Lcom/gsma/services/rcs/capability/ICapabilityService;

    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    .line 113
    return-void
.end method
