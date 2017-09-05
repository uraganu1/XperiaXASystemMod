.class public Lcom/mediatek/settingslib/wifi/AccessPointExt;
.super Ljava/lang/Object;
.source "AccessPointExt.java"


# static fields
.field public static sWifiLibExt:Lcom/mediatek/settingslib/ext/IWifiLibExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/mediatek/settingslib/wifi/AccessPointExt;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settingslib/ext/IWifiLibExt;

    .line 24
    return-void
.end method

.method public static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x4

    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x5

    return v0

    .line 54
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x5

    .line 35
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x4

    return v0

    .line 39
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    return v2

    .line 43
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settingslib/ext/IWifiLibExt;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    sget-object v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;->sWifiLibExt:Lcom/mediatek/settingslib/ext/IWifiLibExt;

    if-nez v0, :cond_0

    .line 89
    const-class v0, Lcom/mediatek/settingslib/ext/IWifiLibExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settingslib/ext/IWifiLibExt;

    sput-object v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;->sWifiLibExt:Lcom/mediatek/settingslib/ext/IWifiLibExt;

    .line 90
    sget-object v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;->sWifiLibExt:Lcom/mediatek/settingslib/ext/IWifiLibExt;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/mediatek/settingslib/ext/DefaultWifiLibExt;

    invoke-direct {v0}, Lcom/mediatek/settingslib/ext/DefaultWifiLibExt;-><init>()V

    sput-object v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;->sWifiLibExt:Lcom/mediatek/settingslib/ext/IWifiLibExt;

    .line 94
    :cond_0
    sget-object v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;->sWifiLibExt:Lcom/mediatek/settingslib/ext/IWifiLibExt;

    return-object v0
.end method


# virtual methods
.method public appendApSummary(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/StringBuilder;
    .param p2, "autoJoinStatus"    # I
    .param p3, "connectFail"    # Ljava/lang/String;
    .param p4, "disabled"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;->sWifiLibExt:Lcom/mediatek/settingslib/ext/IWifiLibExt;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/settingslib/ext/IWifiLibExt;->appendApSummary(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
