.class public Lcom/mediatek/incallui/volte/InCallUIVolteUtils;
.super Ljava/lang/Object;
.source "InCallUIVolteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneNumber(Landroid/telecom/Call$Details;)Ljava/lang/String;
    .locals 2
    .param p0, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 58
    const-string/jumbo v0, ""

    .line 59
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 68
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v0, ""

    .line 71
    :cond_1
    return-object v0

    .line 64
    .restart local v0    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .local v0, "result":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isPhoneNumberChanged(Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)Z
    .locals 5
    .param p0, "oldDetails"    # Landroid/telecom/Call$Details;
    .param p1, "newDetails"    # Landroid/telecom/Call$Details;

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "result":Z
    invoke-static {p0}, Lcom/mediatek/incallui/volte/InCallUIVolteUtils;->getPhoneNumber(Landroid/telecom/Call$Details;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "numberOld":Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/incallui/volte/InCallUIVolteUtils;->getPhoneNumber(Landroid/telecom/Call$Details;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "numberNew":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 80
    :goto_0
    if-eqz v2, :cond_0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/incallui/volte/InCallUIVolteUtils;->log(Ljava/lang/String;)V

    .line 83
    :cond_0
    return v2

    .line 79
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isVolteMarkedEcc(Landroid/telecom/Call$Details;)Z
    .locals 4
    .param p0, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "result":Z
    invoke-static {}, Lcom/mediatek/incallui/volte/InCallUIVolteUtils;->isVolteSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 26
    const-string/jumbo v3, "com.mediatek.volte.isMergency"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 27
    const-string/jumbo v3, "com.mediatek.volte.isMergency"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 29
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 33
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "result":Z
    :cond_0
    return v1
.end method

.method public static isVolteMarkedEccChanged(Landroid/telecom/Call$Details;Landroid/telecom/Call$Details;)Z
    .locals 3
    .param p0, "oldDetails"    # Landroid/telecom/Call$Details;
    .param p1, "newDetails"    # Landroid/telecom/Call$Details;

    .prologue
    .line 38
    const/4 v2, 0x0

    .line 39
    .local v2, "result":Z
    invoke-static {p0}, Lcom/mediatek/incallui/volte/InCallUIVolteUtils;->isVolteMarkedEcc(Landroid/telecom/Call$Details;)Z

    move-result v1

    .line 40
    .local v1, "isVolteMarkedEccOld":Z
    invoke-static {p1}, Lcom/mediatek/incallui/volte/InCallUIVolteUtils;->isVolteMarkedEcc(Landroid/telecom/Call$Details;)Z

    move-result v0

    .line 41
    .local v0, "isVolteMarkedEccNew":Z
    if-nez v1, :cond_0

    move v2, v0

    .line 42
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 41
    .restart local v2    # "result":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isVolteSupport()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->MTK_IMS_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->MTK_VOLTE_SUPPORT:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string/jumbo v0, "InCallUIVolteUtils"

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
