.class public Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;
.super Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.source "PollingManager.java"


# static fields
.field private static final CAPABILITY_EXPIRY_PERIOD:I


# instance fields
.field private imsService:Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private pollingPeriod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCapabilityExpiryTimeout()I

    move-result v0

    sput v0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->CAPABILITY_EXPIRY_PERIOD:I

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 62
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    .line 63
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCapabilityPollingPeriod()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->pollingPeriod:I

    .line 64
    return-void
.end method

.method private requestContactCapabilities(Ljava/lang/String;)V
    .locals 10
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 109
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 115
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    if-eqz v0, :cond_3

    .line 123
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_5

    .line 126
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 127
    .local v2, "delta":J
    sget v5, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->CAPABILITY_EXPIRY_PERIOD:I

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-ltz v5, :cond_6

    move v5, v1

    :goto_2
    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_7

    :goto_3
    if-nez v1, :cond_1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_8

    .line 134
    :goto_4
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->isPresenceDiscoverySupported()Z

    move-result v1

    if-nez v1, :cond_9

    .line 140
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->getOptionsManager()Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->requestCapabilities(Ljava/lang/String;)Z

    .line 144
    .end local v2    # "delta":J
    :cond_1
    :goto_5
    return-void

    .line 110
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Request capabilities for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .restart local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    :goto_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->getOptionsManager()Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->requestCapabilities(Ljava/lang/String;)Z

    goto :goto_5

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No capability exist for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 124
    :cond_5
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Capabilities exist for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v2    # "delta":J
    :cond_6
    move v5, v4

    .line 127
    goto/16 :goto_2

    :cond_7
    move v1, v4

    goto :goto_3

    .line 129
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Capabilities have expired for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 137
    :cond_9
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->imsService:Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->getAnonymousFetchManager()Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->requestCapabilities(Ljava/lang/String;)Z

    goto/16 :goto_5
.end method


# virtual methods
.method public periodicProcessing()V
    .locals 6

    .prologue
    .line 88
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getAllContacts()Ljava/util/List;

    move-result-object v1

    .local v1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 94
    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 100
    iget v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->pollingPeriod:I

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->startTimer(ID)V

    .line 101
    return-void

    .line 89
    .end local v1    # "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Execute new capabilities update"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .restart local v1    # "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "contact":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->requestContactCapabilities(Ljava/lang/String;)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public start()V
    .locals 4

    .prologue
    .line 70
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->pollingPeriod:I

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->pollingPeriod:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->startTimer(ID)V

    .line 74
    return-void

    .line 71
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->stopTimer()V

    .line 81
    return-void
.end method
