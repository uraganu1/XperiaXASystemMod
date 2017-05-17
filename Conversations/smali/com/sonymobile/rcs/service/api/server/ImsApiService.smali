.class public Lcom/sonymobile/rcs/service/api/server/ImsApiService;
.super Lcom/sonymobile/rcs/service/api/client/IImsApi$Stub;
.source "ImsApiService.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/IImsApi$Stub;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ImsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 45
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ImsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/server/ImsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IMS API service is loaded"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public isImsConnected()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/server/ServerApiException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/ImsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/ServerApiUtils;->isImsConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/ImsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Is client connected to IMS"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/ImsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :goto_1
    new-instance v1, Lcom/sonymobile/rcs/service/api/server/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/service/api/server/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/server/ImsApiService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Unexpected error"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
