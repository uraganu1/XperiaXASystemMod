.class public Lcom/sonymobile/jms/environment/ImEnvironmentManager;
.super Ljava/lang/Object;
.source "ImEnvironmentManager.java"

# interfaces
.implements Lcom/sonymobile/jms/environment/ImEnvironmentApi;
.implements Lcom/sonymobile/jms/environment/ApiConnectionStatusChanger;


# instance fields
.field private mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

.field private mAppCtx:Landroid/content/Context;

.field private mImApiConnectionListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

.field private mImsEventListener:Lcom/sonymobile/rcs/service/api/client/ImsEventListener;

.field private mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

.field private mRcsCapabilityApiListener:Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

.field private mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

.field private mRcsMessagingApiListener:Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

.field private mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

.field private mWasImApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

.field private mWasRcsApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/sonymobile/jms/ApiStatusReader;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "apiStatusReader"    # Lcom/sonymobile/jms/ApiStatusReader;
    .param p3, "imSettingsManager"    # Lcom/sonymobile/jms/setting/ImSettingManager;
    .param p4, "rcsSessionEventHandler"    # Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;
    .param p5, "rcsMessagingApi"    # Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;
    .param p6, "rcsCapabilityApi"    # Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager$1;-><init>(Lcom/sonymobile/jms/environment/ImEnvironmentManager;)V

    iput-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApiListener:Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    .line 77
    new-instance v0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager$2;-><init>(Lcom/sonymobile/jms/environment/ImEnvironmentManager;)V

    iput-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApiListener:Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    .line 107
    new-instance v0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager$3;-><init>(Lcom/sonymobile/jms/environment/ImEnvironmentManager;)V

    iput-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImsEventListener:Lcom/sonymobile/rcs/service/api/client/ImsEventListener;

    .line 148
    iput-object p1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mAppCtx:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    .line 150
    iput-object p3, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 151
    iput-object p4, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    .line 152
    iput-object p5, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .line 153
    iput-object p6, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .line 154
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImApiConnectionListeners:Ljava/util/Collection;

    .line 155
    return-void
.end method

.method private createExplicitRcsIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->getRcsStackPackageName()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    return-object v2
.end method

.method private static final getRcsStackPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const-class v1, Lcom/sonymobile/rcs/core/Core;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "coreClassPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x2e

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final isRcsStackInstalledAndEnabled(Landroid/app/Application;)Z
    .locals 5
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    const/4 v4, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->getRcsStackPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method private isThirdPartyRcsClientDetected()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 164
    iget-object v3, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->getRcsClients(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v2

    .line 165
    .local v2, "rcsClients":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    return v5

    .line 165
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .local v1, "rcsClient":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v3, "com.sonymobile.rcs"

    .line 166
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mAppCtx:Landroid/content/Context;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApiListener:Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->removeApiEventListener(Lcom/sonymobile/rcs/service/api/client/ClientApiListener;)V

    .line 234
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImsEventListener:Lcom/sonymobile/rcs/service/api/client/ImsEventListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->removeImsEventListener(Lcom/sonymobile/rcs/service/api/client/ImsEventListener;)V

    .line 235
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApiListener:Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->removeApiEventListener(Lcom/sonymobile/rcs/service/api/client/ClientApiListener;)V

    .line 237
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImApiConnectionListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 247
    iput-object v2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .line 248
    iput-object v2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .line 249
    return-void

    :cond_0
    const-string/jumbo v0, "Attempting to disconnect to RcsMessagingApi..."

    .line 238
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->disconnectApi()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Attempting to disconnect to RcsCapabilityApi..."

    .line 242
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->disconnectApi()V

    goto :goto_1
.end method

.method public getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v0}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    const-string/jumbo v0, "enter"

    .line 194
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v0}, Lcom/sonymobile/jms/ApiStatusReader;->getRcsApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasRcsApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 196
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v0}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasImApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 198
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApiListener:Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->addApiEventListener(Lcom/sonymobile/rcs/service/api/client/ClientApiListener;)V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApiListener:Lcom/sonymobile/rcs/service/api/client/ClientApiListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->addApiEventListener(Lcom/sonymobile/rcs/service/api/client/ClientApiListener;)V

    .line 200
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImsEventListener:Lcom/sonymobile/rcs/service/api/client/ImsEventListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->addImsEventListener(Lcom/sonymobile/rcs/service/api/client/ImsEventListener;)V

    .line 202
    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasRcsApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    sget-object v2, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "wasRcsApisConnectionStatus "

    .line 209
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasRcsApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasImApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    sget-object v2, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "wasImApisConnectionStatus "

    .line 217
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasImApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 220
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    :goto_3
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "wasRcsApisConnectionStatus "

    .line 204
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasRcsApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 206
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasRcsApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "wasImApisConnectionStatus "

    .line 213
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasImApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 215
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    iget-object v2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasImApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onImApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Attempting to connect to RcsMessagingApi..."

    .line 223
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->connectApi()V

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "Attempting to connect to RcsCapabilityApi..."

    .line 227
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->connectApi()V

    goto :goto_3
.end method

.method public isImServiceActivated()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingManager;->isImServiceActivated()Z

    move-result v0

    return v0
.end method

.method public onApplicationStartupScreenDisplayed()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->onApplicationStartupScreenDisplayed()V

    .line 337
    return-void
.end method

.method public onPossibleApiConnectionStatusChange()V
    .locals 10

    .prologue
    .line 255
    iget-object v9, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    monitor-enter v9

    .line 256
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v8}, Lcom/sonymobile/jms/ApiStatusReader;->getRcsApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v5

    .line 258
    .local v5, "rcsApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v8}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v1

    .line 259
    .local v1, "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    iget-object v7, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasRcsApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 260
    .local v7, "wasRcsApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    iget-object v6, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasImApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 267
    .local v6, "wasImApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    if-ne v5, v7, :cond_3

    .line 271
    :goto_0
    if-ne v1, v6, :cond_4

    .line 278
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->isServiceConnected()Z

    move-result v3

    .line 279
    .local v3, "isRcsMessagingServiceConnected":Z
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->isServiceConnected()Z

    move-result v2

    .line 280
    .local v2, "isRcsCapabilityServiceConnected":Z
    if-nez v3, :cond_5

    .line 281
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v8}, Lcom/sonymobile/jms/ApiStatusReader;->isRcsCoreServiceStarted()Z

    move-result v8

    if-nez v8, :cond_6

    .line 292
    :cond_2
    :goto_1
    monitor-exit v9

    .line 293
    return-void

    .line 268
    .end local v2    # "isRcsCapabilityServiceConnected":Z
    .end local v3    # "isRcsMessagingServiceConnected":Z
    :cond_3
    iput-object v5, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasRcsApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 269
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    invoke-virtual {v8, v5}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V

    goto :goto_0

    .line 292
    .end local v1    # "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .end local v5    # "rcsApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .end local v6    # "wasImApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .end local v7    # "wasRcsApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 272
    .restart local v1    # "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .restart local v5    # "rcsApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .restart local v6    # "wasImApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .restart local v7    # "wasRcsApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    :cond_4
    :try_start_1
    iput-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mWasImApisConnectionStatus:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 273
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    invoke-virtual {v8, v1}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onImApiConnectionStatusChanged(Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V

    .line 274
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImApiConnectionListeners:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .line 275
    .local v4, "listener":Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;
    invoke-interface {v4, p0, v1}, Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;->onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V

    goto :goto_2

    .line 280
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "listener":Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;
    .restart local v2    # "isRcsCapabilityServiceConnected":Z
    .restart local v3    # "isRcsMessagingServiceConnected":Z
    :cond_5
    if-eqz v2, :cond_1

    goto :goto_1

    .line 282
    :cond_6
    if-eqz v3, :cond_7

    .line 286
    :goto_3
    if-nez v2, :cond_2

    const-string/jumbo v8, "Attempting to connect to RcsCapabilityApi..."

    .line 287
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 288
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->connectApi()V

    goto :goto_1

    :cond_7
    const-string/jumbo v8, "Attempting to connect to RcsMessagingApi..."

    .line 283
    invoke-static {v8}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 284
    iget-object v8, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->connectApi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public registerImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .prologue
    .line 303
    iget-object v2, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    monitor-enter v2

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mApiStatusReader:Lcom/sonymobile/jms/ApiStatusReader;

    invoke-virtual {v1}, Lcom/sonymobile/jms/ApiStatusReader;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    .line 305
    .local v0, "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImApiConnectionListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface {p1, p0, v0}, Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;->onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V

    .line 311
    monitor-exit v2

    .line 312
    return-void

    .line 311
    .end local v0    # "imApisConnectionStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setImServiceActivationState(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->isThirdPartyRcsClientDetected()Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    const-string/jumbo v2, "com.sonymobile.rcs.SERVICE"

    .line 351
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->createExplicitRcsIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 353
    .local v0, "rcsCoreServiceIntent":Landroid/content/Intent;
    if-nez p1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 358
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/setting/ImSettingManager;->setImServiceActivationState(Z)V

    .line 359
    return-void

    .line 347
    .end local v0    # "rcsCoreServiceIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mAppCtx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.rcs.MULTIPLE_CLIENT_DETECTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    return-void

    .line 354
    .restart local v0    # "rcsCoreServiceIntent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unregisterImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->mImApiConnectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method
