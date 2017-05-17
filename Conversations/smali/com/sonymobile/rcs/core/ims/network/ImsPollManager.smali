.class public Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;
.super Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.source "ImsPollManager.java"


# instance fields
.field private final logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private final mPollListener:Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 29
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->mPollListener:Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;

    .line 30
    return-void
.end method


# virtual methods
.method public periodicProcessing()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->mPollListener:Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->mPollListener:Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;

    invoke-interface {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsPollListener;->poll()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 2
    .param p1, "period"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->startTimer(I)V

    .line 47
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start IMSPolling timer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->stopTimer()V

    .line 54
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsPollManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop IMSPolling timer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
