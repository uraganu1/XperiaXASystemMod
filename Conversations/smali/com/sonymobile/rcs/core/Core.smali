.class public Lcom/sonymobile/rcs/core/Core;
.super Ljava/lang/Object;
.source "Core.java"


# static fields
.field private static instance:Lcom/sonymobile/rcs/core/Core;


# instance fields
.field private addressBookManager:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private listener:Lcom/sonymobile/rcs/core/CoreListener;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/sonymobile/rcs/core/Core;->instance:Lcom/sonymobile/rcs/core/Core;

    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/rcs/core/CoreListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/rcs/core/CoreListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/Core;->started:Z

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 115
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    iput-object p1, p0, Lcom/sonymobile/rcs/core/Core;->listener:Lcom/sonymobile/rcs/core/CoreListener;

    .line 123
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->initialize(Landroid/content/Context;)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    :goto_2
    new-instance v0, Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    invoke-direct {v0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/Core;->addressBookManager:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    .line 140
    new-instance v0, Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/ImsModule;-><init>(Lcom/sonymobile/rcs/core/Core;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/Core;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 142
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    :goto_3
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terminal core initialization"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "My device UUID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getDeviceUUID(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "My country code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/rcs/utils/PhoneUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terminal core is created with success"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static declared-synchronized createCore(Lcom/sonymobile/rcs/core/CoreListener;)Lcom/sonymobile/rcs/core/Core;
    .locals 2
    .param p0, "listener"    # Lcom/sonymobile/rcs/core/CoreListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/sonymobile/rcs/core/Core;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/sonymobile/rcs/core/Core;->instance:Lcom/sonymobile/rcs/core/Core;

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/core/Core;->instance:Lcom/sonymobile/rcs/core/Core;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/core/Core;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/Core;-><init>(Lcom/sonymobile/rcs/core/CoreListener;)V

    sput-object v0, Lcom/sonymobile/rcs/core/Core;->instance:Lcom/sonymobile/rcs/core/Core;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/sonymobile/rcs/core/Core;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/sonymobile/rcs/core/Core;->instance:Lcom/sonymobile/rcs/core/Core;

    return-object v0
.end method

.method public static declared-synchronized terminateCore()V
    .locals 2

    .prologue
    const-class v1, Lcom/sonymobile/rcs/core/Core;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/sonymobile/rcs/core/Core;->instance:Lcom/sonymobile/rcs/core/Core;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 105
    sput-object v0, Lcom/sonymobile/rcs/core/Core;->instance:Lcom/sonymobile/rcs/core/Core;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 106
    return-void

    .line 103
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/rcs/core/Core;->instance:Lcom/sonymobile/rcs/core/Core;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->stopCore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getAddressBookManager()Lcom/sonymobile/rcs/addressbook/AddressBookManager;
    .locals 1

    .prologue
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->addressBookManager:Lcom/sonymobile/rcs/addressbook/AddressBookManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v0

    return-object v0
.end method

.method public getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getIPCallService()Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;

    move-result-object v0

    return-object v0
.end method

.method public getImService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getInstantMessagingService()Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;
    .locals 1

    .prologue
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getListener()Lcom/sonymobile/rcs/core/CoreListener;
    .locals 1

    .prologue
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->listener:Lcom/sonymobile/rcs/core/CoreListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPresenceService()Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getPresenceService()Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;

    move-result-object v0

    return-object v0
.end method

.method public getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v0

    return-object v0
.end method

.method public getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipService()Lcom/sonymobile/rcs/core/ims/service/sip/SipService;

    move-result-object v0

    return-object v0
.end method

.method public getTermsConditionsService()Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getTermsConditionsService()Lcom/sonymobile/rcs/core/ims/service/terms/TermsConditionsService;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startCore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/Core;->started:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->start()V

    .line 196
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->addressBookManager:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->startAddressBookMonitoring()V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->listener:Lcom/sonymobile/rcs/core/CoreListener;

    invoke-interface {v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleCoreLayerStarted()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/Core;->started:Z

    .line 202
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    .line 205
    return-void

    :cond_0
    monitor-exit p0

    .line 189
    return-void

    .line 203
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "RCS core service has been started with success"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopCore()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/Core;->started:Z

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 222
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/Core;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->stop()V

    .line 224
    iget-object v1, p0, Lcom/sonymobile/rcs/core/Core;->addressBookManager:Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->stopAddressBookMonitoring()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/Core;->listener:Lcom/sonymobile/rcs/core/CoreListener;

    invoke-interface {v1}, Lcom/sonymobile/rcs/core/CoreListener;->handleCoreLayerStopped()V

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/Core;->started:Z

    .line 235
    iget-object v1, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    monitor-exit p0

    .line 238
    return-void

    :cond_1
    monitor-exit p0

    .line 213
    return-void

    .line 217
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Stop the RCS core service"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 229
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Error during core shutdown"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/Core;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "RCS core service has been stopped with success"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
