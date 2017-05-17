.class public Lcom/sonymobile/jms/ApiStatusReader;
.super Ljava/lang/Object;
.source "ApiStatusReader.java"


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

.field private mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "rcsMessagingApi"    # Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;
    .param p3, "rcsCapabilityApi"    # Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonymobile/jms/ApiStatusReader;->mAppCtx:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/sonymobile/jms/ApiStatusReader;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    .line 36
    iput-object p3, p0, Lcom/sonymobile/jms/ApiStatusReader;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .line 37
    return-void
.end method


# virtual methods
.method public assertRcsApisConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/jms/ApiStatusReader;->getRcsApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-ne v0, v1, :cond_0

    .line 92
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/conversation/RcsSessionException;

    const-string/jumbo v1, "RcsApis are not connected!"

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .locals 4

    .prologue
    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/ApiStatusReader;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    iget-object v3, p0, Lcom/sonymobile/jms/ApiStatusReader;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->isImsConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/sonymobile/jms/ApiStatusReader;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    iget-object v3, p0, Lcom/sonymobile/jms/ApiStatusReader;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->isImsConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/sonymobile/jms/ApiStatusReader;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    iget-object v2, p0, Lcom/sonymobile/jms/ApiStatusReader;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    sget-object v2, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v2

    :cond_0
    const-string/jumbo v2, "IMS "

    .line 42
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 43
    sget-object v2, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v2

    :cond_1
    const-string/jumbo v2, "IMS "

    .line 46
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 47
    sget-object v2, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v2

    :cond_2
    const-string/jumbo v2, "RcsMessagingApi "

    .line 50
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 51
    sget-object v2, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v2

    :cond_3
    const-string/jumbo v2, "RcsCapabilityApi "

    .line 54
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 55
    sget-object v2, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 57
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;
    const-string/jumbo v2, "IMS "

    .line 62
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 63
    sget-object v2, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v2

    .end local v1    # "e":Lcom/sonymobile/rcs/service/api/client/CoreServiceNotAvailableException;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    const-string/jumbo v2, "Unable to determine IMS connection status for unknown reason!"

    .line 67
    invoke-static {v2, v0}, Lcom/sonymobile/jms/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    sget-object v2, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v2
.end method

.method public getRcsApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/jms/ApiStatusReader;->mRcsMessagingApi:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonymobile/jms/ApiStatusReader;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v0

    :cond_0
    const-string/jumbo v0, "RcsMessagingApi "

    .line 74
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 75
    sget-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v0

    :cond_1
    const-string/jumbo v0, "mRcsCapabilityApi "

    .line 78
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 79
    sget-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v0
.end method

.method public isRcsCoreServiceStarted()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/jms/ApiStatusReader;->mAppCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiUtils;->isServiceStarted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
