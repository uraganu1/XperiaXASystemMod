.class public Lcom/sonymobile/rcs/core/ims/network/WifiNetworkInterface;
.super Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
.source "WifiNetworkInterface.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 8
    .param p1, "imsModule"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 47
    new-instance v3, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;

    invoke-direct {v3}, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;-><init>()V

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getImsProxyAddrForWifi()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getImsProxyPortForWifi()I

    move-result v5

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipDefaultProtocolForWifi()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getImsAuhtenticationProcedureForWifi()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;ILcom/sonymobile/rcs/core/access/NetworkAccess;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/WifiNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 53
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/WifiNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/WifiNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Wi-Fi network interface has been loaded"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
