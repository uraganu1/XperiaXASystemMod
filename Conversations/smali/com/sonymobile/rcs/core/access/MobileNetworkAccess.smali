.class public Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;
.super Lcom/sonymobile/rcs/core/access/NetworkAccess;
.source "MobileNetworkAccess.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/access/NetworkAccess;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 59
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mobile access has been created (interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->getNetworkName()Ljava/lang/String;

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
    .line 73
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    iput-object p1, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->ipAddress:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSecureMsrpOverMobile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :goto_1
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 79
    :cond_1
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->updateClientCertificate(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->ipAddress:Ljava/lang/String;

    .line 91
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Network access disconnected"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/sonymobile/rcs/core/access/MobileNetworkAccess;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 128
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v1, "unknown"

    .line 142
    return-object v1

    :pswitch_1
    const-string/jumbo v1, "GPRS"

    .line 130
    return-object v1

    :pswitch_2
    const-string/jumbo v1, "EDGE"

    .line 132
    return-object v1

    :pswitch_3
    const-string/jumbo v1, "UMTS"

    .line 134
    return-object v1

    :pswitch_4
    const-string/jumbo v1, "HSDPA"

    .line 136
    return-object v1

    :pswitch_5
    const-string/jumbo v1, "HSUPA"

    .line 138
    return-object v1

    :pswitch_6
    const-string/jumbo v1, "HSPA"

    .line 140
    return-object v1

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
