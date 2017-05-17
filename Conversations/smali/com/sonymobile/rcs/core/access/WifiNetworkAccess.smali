.class public Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;
.super Lcom/sonymobile/rcs/core/access/NetworkAccess;
.source "WifiNetworkAccess.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/access/NetworkAccess;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 55
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 58
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wi-Fi access has been created (interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .locals 3
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    iput-object p1, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->ipAddress:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->updateClientCertificate(Ljava/lang/String;)V

    .line 75
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Network access connected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->ipAddress:Ljava/lang/String;

    .line 85
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Network access disconnected"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/sonymobile/rcs/core/access/WifiNetworkAccess;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 94
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    const-string/jumbo v1, "IEEE-802.11a"

    .line 97
    return-object v1

    :cond_0
    const-string/jumbo v1, "IEEE-802.11b"

    .line 95
    return-object v1
.end method
