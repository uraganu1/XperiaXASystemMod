.class public Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;
.super Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.source "KeepAliveManager.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private period:I

.field private sip:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;)V
    .locals 1
    .param p1, "sip"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 59
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->sip:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    .line 60
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipKeepAlivePeriod()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->period:I

    .line 61
    return-void
.end method

.method private sendHeartBeat()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->sip:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getDefaultSipProvider()Ljavax2/sip/SipProvider;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/SipProvider;->getListeningPoints()[Ljavax2/sip/ListeningPoint;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->sip:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getOutboundProxyAddr()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->sip:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getOutboundProxyPort()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljavax2/sip/ListeningPoint;->sendHeartbeat(Ljava/lang/String;I)V

    .line 107
    :cond_0
    :goto_1
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Send keep-alive"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "KeepAliveManager: Exception in sendHeartBeat()"

    .line 102
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->releaseWakeLock(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "SIP heartbeat has failed"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public acquireWakeLock(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public periodicProcessing()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getInstance()Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->initializeCounter()V

    const-string/jumbo v0, "KeepAliveManager: sendHeartBeat()"

    .line 88
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->acquireWakeLock(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->sendHeartBeat()V

    .line 90
    return-void
.end method

.method public processKeepAliveTimeout()V
    .locals 4

    .prologue
    .line 141
    invoke-static {}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getInstance()Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getRetryAttemptCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    :goto_0
    invoke-static {}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getInstance()Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->initializeCounter()V

    .line 160
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    :goto_1
    const-string/jumbo v0, "KeepAliveManager: processKeepAliveTimeout()"

    .line 176
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->releaseWakeLock(Ljava/lang/String;)V

    .line 179
    :goto_2
    return-void

    .line 142
    :cond_1
    invoke-static {}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getInstance()Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->incrementRetryCount()V

    .line 144
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    :goto_3
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->sendHeartBeat()V

    goto :goto_2

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Did not receive double CRLF. Resending keepalive heartbeat. Attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getInstance()Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getRetryAttemptCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timeout time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getInstance()Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getTimeoutPeriod()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Did not receive double CRLF. 3 retries done. Restarting Registration process "

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    if-nez v0, :cond_5

    .line 170
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsConnectionManager()Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsConnectionManager()Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->initStackAndRegister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 177
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "KeepAliveManager: processKeepAliveTimeout()"

    .line 176
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->releaseWakeLock(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCurrentNetworkInterface()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registrationTerminated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public releaseWakeLock(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public setPeriod(I)V
    .locals 3
    .param p1, "period"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->period:I

    .line 123
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set keep-alive period \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->period:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->startTimer(ID)V

    .line 71
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start keep-alive"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->stopTimer()V

    .line 81
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop keep-alive"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopPingKeepAliveTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->sip:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getDefaultSipProvider()Ljavax2/sip/SipProvider;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/SipProvider;->getListeningPoints()[Ljavax2/sip/ListeningPoint;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->sip:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getOutboundProxyAddr()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->sip:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getOutboundProxyPort()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljavax2/sip/ListeningPoint;->stopPingKeepaliveTask(Ljava/lang/String;I)V

    .line 117
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/KeepAliveManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop pingKeepAliveTask"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
