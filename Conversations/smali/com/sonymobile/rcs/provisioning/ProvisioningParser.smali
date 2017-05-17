.class public Lcom/sonymobile/rcs/provisioning/ProvisioningParser;
.super Ljava/lang/Object;
.source "ProvisioningParser.java"


# instance fields
.field private content:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-direct {v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 89
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->content:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private extractUserNamePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 2393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2398
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v6, "sip:"

    .line 2399
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .local v4, "sipindex":I
    const-string/jumbo v6, "tel:"

    .line 2400
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2401
    .local v5, "telindex":I
    if-ne v4, v7, :cond_1

    move v1, v5

    .line 2402
    .local v1, "index1":I
    :goto_0
    if-ne v1, v7, :cond_2

    .line 2413
    return-object p1

    .end local v1    # "index1":I
    .end local v4    # "sipindex":I
    .end local v5    # "telindex":I
    :cond_0
    const-string/jumbo v6, ""

    .line 2394
    return-object v6

    .restart local v4    # "sipindex":I
    .restart local v5    # "telindex":I
    :cond_1
    move v1, v4

    .line 2401
    goto :goto_0

    .restart local v1    # "index1":I
    :cond_2
    :try_start_1
    const-string/jumbo v6, "@"

    .line 2403
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2405
    .local v2, "index2":I
    if-ne v2, v7, :cond_3

    .line 2408
    add-int/lit8 v6, v1, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2410
    .local v3, "result":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 2411
    return-object v3

    .line 2406
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v1, 0x4

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 2413
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "sipindex":I
    .end local v5    # "telindex":I
    :catch_0
    move-exception v0

    .line 2416
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IndexOutOfBoundsException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    const-string/jumbo v6, ""

    .line 2417
    return-object v6
.end method

.method private formatSipUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 2428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2432
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sip:"

    .line 2433
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2436
    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo v0, ""

    .line 2429
    return-object v0

    .line 2434
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;
    .locals 8
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/w3c/dom/Node;
    .param p3, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "nameNode":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 2347
    .local v3, "valueNode":Lorg/w3c/dom/Node;
    if-nez p2, :cond_1

    .line 2349
    :cond_0
    return-object v7

    .line 2347
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "parm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2352
    :goto_0
    if-nez p2, :cond_4

    .line 2383
    :cond_2
    return-object v7

    .line 2347
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "param"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2352
    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-lez v4, :cond_2

    .line 2353
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 2354
    .local v1, "nameNode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_5

    .line 2357
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 2358
    .local v3, "valueNode":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_6

    .line 2361
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2380
    return-object v7

    .line 2355
    .local v3, "valueNode":Lorg/w3c/dom/Node;
    :cond_5
    return-object v7

    .line 2359
    .local v3, "valueNode":Lorg/w3c/dom/Node;
    :cond_6
    return-object v7

    .line 2362
    :cond_7
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 2363
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_8

    :goto_1
    const/4 v4, 0x1

    .line 2368
    if-eq p3, v4, :cond_9

    .line 2378
    :goto_2
    return-object v2

    .line 2365
    :cond_8
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Read parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 2370
    :cond_9
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2376
    :catch_0
    move-exception v0

    .line 2372
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_a

    .line 2375
    :goto_3
    return-object v7

    .line 2373
    :cond_a
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad value for integer parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private parseAPN(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1479
    return-void
.end method

.method private parseAppAuthent(Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .local v0, "authType":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "realm":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "userName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2084
    .local v4, "userPwd":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 2087
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 2089
    .local v1, "childnode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_4

    .line 2139
    .end local v0    # "authType":Ljava/lang/String;
    .end local v2    # "realm":Ljava/lang/String;
    .end local v3    # "userName":Ljava/lang/String;
    .end local v4    # "userPwd":Ljava/lang/String;
    :cond_0
    return-void

    .line 2085
    .end local v1    # "childnode":Lorg/w3c/dom/Node;
    .restart local v0    # "authType":Ljava/lang/String;
    .restart local v2    # "realm":Ljava/lang/String;
    .restart local v3    # "userName":Ljava/lang/String;
    .restart local v4    # "userPwd":Ljava/lang/String;
    :cond_1
    return-void

    .line 2095
    .end local v2    # "realm":Ljava/lang/String;
    .end local v3    # "userName":Ljava/lang/String;
    .end local v4    # "userPwd":Ljava/lang/String;
    .local v0, "authType":Ljava/lang/String;
    .restart local v1    # "childnode":Lorg/w3c/dom/Node;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "ImsAuhtenticationProcedureForMobile"

    const-string/jumbo v7, "GIBA"

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    .end local v0    # "authType":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v1, :cond_0

    .line 2091
    :cond_4
    if-eqz v0, :cond_9

    .line 2107
    :cond_5
    if-eqz v2, :cond_a

    .line 2119
    :cond_6
    if-eqz v3, :cond_b

    .line 2128
    :cond_7
    if-eqz v4, :cond_c

    .line 2136
    :cond_8
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_9
    const-string/jumbo v5, "AuthType"

    .line 2092
    invoke-direct {p0, v5, v1, v8}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v0

    .line 2093
    .restart local v0    # "authType":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string/jumbo v5, "EarlyIMS"

    .line 2094
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2099
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "ImsAuhtenticationProcedureForMobile"

    const-string/jumbo v7, "DIGEST"

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "authType":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, "Realm"

    .line 2108
    invoke-direct {p0, v5, v1, v8}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 2109
    .local v2, "realm":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 2110
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "ImsRealm"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 2112
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "ImsRealm"

    invoke-virtual {v5, v6, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "realm":Ljava/lang/String;
    :cond_b
    const-string/jumbo v5, "UserName"

    .line 2120
    invoke-direct {p0, v5, v1, v8}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 2121
    .local v3, "userName":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 2122
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "ImsPrivateId"

    invoke-virtual {v5, v6, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "userName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v5, "UserPwd"

    .line 2129
    invoke-direct {p0, v5, v1, v8}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 2130
    .local v4, "userPwd":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 2131
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "ImsPassword"

    invoke-virtual {v5, v6, v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseApplication(Lorg/w3c/dom/Node;)V
    .locals 8
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .local v0, "appId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 660
    .local v1, "appRef":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 663
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 665
    .local v2, "childnode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_4

    .line 698
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "appRef":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_b

    .line 702
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_e

    .line 705
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseRCSe(Lorg/w3c/dom/Node;)V

    .line 707
    :goto_2
    return-void

    .line 661
    .end local v2    # "childnode":Lorg/w3c/dom/Node;
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v1    # "appRef":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    return-void

    .line 670
    .end local v1    # "appRef":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .local v0, "appId":Ljava/lang/String;
    .restart local v2    # "childnode":Lorg/w3c/dom/Node;
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_8

    .line 695
    .end local v0    # "appId":Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 667
    :cond_4
    if-eqz v0, :cond_7

    .line 676
    :goto_4
    if-eqz v3, :cond_9

    .line 685
    :cond_5
    if-eqz v1, :cond_a

    .line 694
    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_3

    :cond_7
    const-string/jumbo v4, "AppID"

    .line 668
    invoke-direct {p0, v4, v2, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v0

    .line 669
    .restart local v0    # "appId":Ljava/lang/String;
    if-nez v0, :cond_2

    goto :goto_4

    .line 671
    :cond_8
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "App ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "appId":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "Name"

    .line 677
    invoke-direct {p0, v4, v2, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 679
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 680
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "App name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .end local v3    # "name":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "AppRef"

    .line 686
    invoke-direct {p0, v4, v2, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "appRef":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 688
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 689
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "App ref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v1    # "appRef":Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, "IMS-Settings"

    .line 698
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 700
    :cond_c
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseIMS(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v4, "ims"

    .line 698
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    .line 703
    :cond_e
    iget-object v4, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "parseRCSe"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private parseCapabilityDiscovery(Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .local v2, "pollingPeriod":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "capInfoExpiry":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "presenceDiscovery":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1411
    .local v4, "typenode":Lorg/w3c/dom/Node;
    if-eqz p1, :cond_1

    .line 1414
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1416
    .local v1, "childnode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_3

    .line 1469
    .end local v0    # "capInfoExpiry":Ljava/lang/String;
    .end local v2    # "pollingPeriod":Ljava/lang/String;
    .end local v3    # "presenceDiscovery":Ljava/lang/String;
    .end local v4    # "typenode":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 1412
    .end local v1    # "childnode":Lorg/w3c/dom/Node;
    .restart local v0    # "capInfoExpiry":Ljava/lang/String;
    .restart local v2    # "pollingPeriod":Ljava/lang/String;
    .restart local v3    # "presenceDiscovery":Ljava/lang/String;
    .restart local v4    # "typenode":Lorg/w3c/dom/Node;
    :cond_1
    return-void

    .line 1436
    .end local v0    # "capInfoExpiry":Ljava/lang/String;
    .end local v3    # "presenceDiscovery":Ljava/lang/String;
    .end local v4    # "typenode":Lorg/w3c/dom/Node;
    .restart local v1    # "childnode":Lorg/w3c/dom/Node;
    .local v2, "pollingPeriod":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "CapabilityPollingPeriod"

    invoke-virtual {v5, v6, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    .end local v2    # "pollingPeriod":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 1418
    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "characteristic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1433
    :cond_4
    :goto_1
    if-eqz v2, :cond_9

    .line 1442
    :goto_2
    if-eqz v0, :cond_a

    .line 1451
    :cond_5
    if-eqz v3, :cond_b

    .line 1466
    :cond_6
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 1419
    :cond_7
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-lez v5, :cond_4

    .line 1420
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1421
    .local v4, "typenode":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_4

    .line 1422
    iget-object v5, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1426
    :goto_3
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Ext"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1427
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseExt(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 1423
    :cond_8
    iget-object v5, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Node "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .end local v4    # "typenode":Lorg/w3c/dom/Node;
    :cond_9
    const-string/jumbo v5, "pollingPeriod"

    .line 1434
    invoke-direct {p0, v5, v1, v8}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 1435
    .restart local v2    # "pollingPeriod":Ljava/lang/String;
    if-nez v2, :cond_2

    goto :goto_2

    .end local v2    # "pollingPeriod":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, "capInfoExpiry"

    .line 1443
    invoke-direct {p0, v5, v1, v8}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "capInfoExpiry":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1445
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "CapabilityExpiryTimeout"

    invoke-virtual {v5, v6, v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "capInfoExpiry":Ljava/lang/String;
    :cond_b
    const-string/jumbo v5, "presenceDisc"

    .line 1452
    invoke-direct {p0, v5, v1, v8}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 1453
    .local v3, "presenceDiscovery":Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string/jumbo v5, "0"

    .line 1454
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1459
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "CapabilityPresenceDiscovery"

    sget-object v7, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1455
    :cond_c
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "CapabilityPresenceDiscovery"

    sget-object v7, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parseConRefs(Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 1766
    .local v1, "conRef":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1769
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1771
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 1783
    .end local v1    # "conRef":Ljava/lang/String;
    :cond_0
    return-void

    .line 1767
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "conRef":Ljava/lang/String;
    :cond_1
    return-void

    .line 1776
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v1, "conRef":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    const-string/jumbo v3, "RcsApn"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    .end local v1    # "conRef":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1773
    :cond_3
    if-eqz v1, :cond_4

    .line 1780
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "ConRef"

    const/4 v3, 0x0

    .line 1774
    invoke-direct {p0, v2, v0, v3}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 1775
    .restart local v1    # "conRef":Ljava/lang/String;
    if-nez v1, :cond_2

    goto :goto_1
.end method

.method private parseExt(Lorg/w3c/dom/Node;)V
    .locals 14
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .local v3, "intUrlFmt":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "natUrlFmt":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "maxSizeImageShare":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "maxTimeVideoShare":Ljava/lang/String;
    const-string/jumbo v1, "NatUrlFmt"

    .local v1, "NAT_URL_FMT":Ljava/lang/String;
    const-string/jumbo v0, "IntUrlFmt"

    .local v0, "INT_URL_FMT":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1879
    .local v8, "typenode":Lorg/w3c/dom/Node;
    if-eqz p1, :cond_1

    .line 1882
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1884
    .local v2, "childnode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_3

    .line 1954
    .end local v3    # "intUrlFmt":Ljava/lang/String;
    .end local v5    # "maxSizeImageShare":Ljava/lang/String;
    .end local v6    # "maxTimeVideoShare":Ljava/lang/String;
    .end local v7    # "natUrlFmt":Ljava/lang/String;
    .end local v8    # "typenode":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 1880
    .end local v2    # "childnode":Lorg/w3c/dom/Node;
    .restart local v3    # "intUrlFmt":Ljava/lang/String;
    .restart local v5    # "maxSizeImageShare":Ljava/lang/String;
    .restart local v6    # "maxTimeVideoShare":Ljava/lang/String;
    .restart local v7    # "natUrlFmt":Ljava/lang/String;
    .restart local v8    # "typenode":Lorg/w3c/dom/Node;
    :cond_1
    return-void

    .line 1907
    .end local v5    # "maxSizeImageShare":Ljava/lang/String;
    .end local v6    # "maxTimeVideoShare":Ljava/lang/String;
    .end local v7    # "natUrlFmt":Ljava/lang/String;
    .end local v8    # "typenode":Lorg/w3c/dom/Node;
    .restart local v2    # "childnode":Lorg/w3c/dom/Node;
    .local v3, "intUrlFmt":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const-string/jumbo v10, "TelUriFormat"

    sget-object v11, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    .end local v3    # "intUrlFmt":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 1886
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "characteristic"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1903
    :cond_4
    :goto_1
    if-eqz v3, :cond_c

    .line 1916
    :cond_5
    if-eqz v7, :cond_d

    .line 1930
    :cond_6
    if-eqz v5, :cond_f

    .line 1941
    :cond_7
    if-eqz v6, :cond_10

    .line 1951
    :cond_8
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 1887
    :cond_9
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-lez v9, :cond_4

    .line 1888
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "type"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 1889
    .local v8, "typenode":Lorg/w3c/dom/Node;
    if-eqz v8, :cond_4

    .line 1890
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1894
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SecondaryDevicePar"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1896
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "joyn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1897
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseJoyn(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 1891
    :cond_a
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Node "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " with type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 1895
    :cond_b
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseSecondaryDevicePar(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 1904
    .end local v8    # "typenode":Lorg/w3c/dom/Node;
    :cond_c
    invoke-direct {p0, v0, v2, v13}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 1905
    .restart local v3    # "intUrlFmt":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string/jumbo v9, "0"

    .line 1906
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1910
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const-string/jumbo v10, "TelUriFormat"

    sget-object v11, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1917
    .end local v3    # "intUrlFmt":Ljava/lang/String;
    :cond_d
    invoke-direct {p0, v1, v2, v13}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v7

    .line 1918
    .local v7, "natUrlFmt":Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string/jumbo v9, "0"

    .line 1919
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1923
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const-string/jumbo v10, "NatUriFormat"

    sget-object v11, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1920
    :cond_e
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const-string/jumbo v10, "NatUriFormat"

    sget-object v11, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "natUrlFmt":Ljava/lang/String;
    :cond_f
    const-string/jumbo v9, "MaxSizeImageShare"

    .line 1931
    invoke-direct {p0, v9, v2, v13}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v5

    .line 1933
    .local v5, "maxSizeImageShare":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 1934
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    div-int/lit16 v4, v9, 0x400

    .line 1935
    .local v4, "kb":I
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const-string/jumbo v10, "MaxImageShareSize"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "kb":I
    .end local v5    # "maxSizeImageShare":Ljava/lang/String;
    :cond_10
    const-string/jumbo v9, "MaxTimeVideoShare"

    .line 1942
    invoke-direct {p0, v9, v2, v13}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v6

    .line 1944
    .local v6, "maxTimeVideoShare":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 1945
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    const-string/jumbo v10, "MaxVideoShareDuration"

    invoke-virtual {v9, v10, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parseFavoriteLink(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 716
    return-void
.end method

.method private parseICSI(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1990
    return-void
.end method

.method private parseIM(Lorg/w3c/dom/Node;)V
    .locals 31
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/16 v18, 0x0

    .local v18, "imCapAlwaysOn":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "ftCapAlwaysOn":Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "imWarnSF":Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "imSessionStart":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "ftWarnSize":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "ftHttpCsUri":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "ftHttpCsUser":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "ftHttpCsPwd":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "ftDefaultMech":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "ftSF":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "chatAuth":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "smsFallBackAuth":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "autoAcceptChat":Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "maxSize1to1":Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, "maxSize1toM":Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, "timerIdle":Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "maxSizeFileTransfer":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "ftThumb":Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "maxAdhocGroupSize":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "confFctyUri":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "groupChatSF":Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, "maxConcurrentSession":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "ftAutAccept":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1111
    .local v4, "autoAcceptGroupChat":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1114
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    .line 1116
    .local v6, "childnode":Lorg/w3c/dom/Node;
    if-nez v6, :cond_3

    .line 1399
    .end local v3    # "autoAcceptChat":Ljava/lang/String;
    .end local v4    # "autoAcceptGroupChat":Ljava/lang/String;
    .end local v5    # "chatAuth":Ljava/lang/String;
    .end local v7    # "confFctyUri":Ljava/lang/String;
    .end local v8    # "ftAutAccept":Ljava/lang/String;
    .end local v9    # "ftCapAlwaysOn":Ljava/lang/String;
    .end local v10    # "ftDefaultMech":Ljava/lang/String;
    .end local v11    # "ftHttpCsPwd":Ljava/lang/String;
    .end local v12    # "ftHttpCsUri":Ljava/lang/String;
    .end local v13    # "ftHttpCsUser":Ljava/lang/String;
    .end local v14    # "ftSF":Ljava/lang/String;
    .end local v15    # "ftThumb":Ljava/lang/String;
    .end local v16    # "ftWarnSize":Ljava/lang/String;
    .end local v17    # "groupChatSF":Ljava/lang/String;
    .end local v18    # "imCapAlwaysOn":Ljava/lang/String;
    .end local v19    # "imSessionStart":Ljava/lang/String;
    .end local v20    # "imWarnSF":Ljava/lang/String;
    .end local v21    # "maxAdhocGroupSize":Ljava/lang/String;
    .end local v22    # "maxConcurrentSession":Ljava/lang/String;
    .end local v23    # "maxSize1to1":Ljava/lang/String;
    .end local v24    # "maxSize1toM":Ljava/lang/String;
    .end local v25    # "maxSizeFileTransfer":Ljava/lang/String;
    .end local v26    # "smsFallBackAuth":Ljava/lang/String;
    .end local v27    # "timerIdle":Ljava/lang/String;
    :cond_0
    return-void

    .line 1112
    .end local v6    # "childnode":Lorg/w3c/dom/Node;
    .restart local v3    # "autoAcceptChat":Ljava/lang/String;
    .restart local v4    # "autoAcceptGroupChat":Ljava/lang/String;
    .restart local v5    # "chatAuth":Ljava/lang/String;
    .restart local v7    # "confFctyUri":Ljava/lang/String;
    .restart local v8    # "ftAutAccept":Ljava/lang/String;
    .restart local v9    # "ftCapAlwaysOn":Ljava/lang/String;
    .restart local v10    # "ftDefaultMech":Ljava/lang/String;
    .restart local v11    # "ftHttpCsPwd":Ljava/lang/String;
    .restart local v12    # "ftHttpCsUri":Ljava/lang/String;
    .restart local v13    # "ftHttpCsUser":Ljava/lang/String;
    .restart local v14    # "ftSF":Ljava/lang/String;
    .restart local v15    # "ftThumb":Ljava/lang/String;
    .restart local v16    # "ftWarnSize":Ljava/lang/String;
    .restart local v17    # "groupChatSF":Ljava/lang/String;
    .restart local v18    # "imCapAlwaysOn":Ljava/lang/String;
    .restart local v19    # "imSessionStart":Ljava/lang/String;
    .restart local v20    # "imWarnSF":Ljava/lang/String;
    .restart local v21    # "maxAdhocGroupSize":Ljava/lang/String;
    .restart local v22    # "maxConcurrentSession":Ljava/lang/String;
    .restart local v23    # "maxSize1to1":Ljava/lang/String;
    .restart local v24    # "maxSize1toM":Ljava/lang/String;
    .restart local v25    # "maxSizeFileTransfer":Ljava/lang/String;
    .restart local v26    # "smsFallBackAuth":Ljava/lang/String;
    .restart local v27    # "timerIdle":Ljava/lang/String;
    :cond_1
    return-void

    .line 1122
    .end local v3    # "autoAcceptChat":Ljava/lang/String;
    .end local v4    # "autoAcceptGroupChat":Ljava/lang/String;
    .end local v5    # "chatAuth":Ljava/lang/String;
    .end local v7    # "confFctyUri":Ljava/lang/String;
    .end local v8    # "ftAutAccept":Ljava/lang/String;
    .end local v9    # "ftCapAlwaysOn":Ljava/lang/String;
    .end local v10    # "ftDefaultMech":Ljava/lang/String;
    .end local v11    # "ftHttpCsPwd":Ljava/lang/String;
    .end local v12    # "ftHttpCsUri":Ljava/lang/String;
    .end local v13    # "ftHttpCsUser":Ljava/lang/String;
    .end local v14    # "ftSF":Ljava/lang/String;
    .end local v15    # "ftThumb":Ljava/lang/String;
    .end local v16    # "ftWarnSize":Ljava/lang/String;
    .end local v17    # "groupChatSF":Ljava/lang/String;
    .end local v19    # "imSessionStart":Ljava/lang/String;
    .end local v20    # "imWarnSF":Ljava/lang/String;
    .end local v21    # "maxAdhocGroupSize":Ljava/lang/String;
    .end local v22    # "maxConcurrentSession":Ljava/lang/String;
    .end local v23    # "maxSize1to1":Ljava/lang/String;
    .end local v24    # "maxSize1toM":Ljava/lang/String;
    .end local v25    # "maxSizeFileTransfer":Ljava/lang/String;
    .end local v26    # "smsFallBackAuth":Ljava/lang/String;
    .end local v27    # "timerIdle":Ljava/lang/String;
    .restart local v6    # "childnode":Lorg/w3c/dom/Node;
    .local v18, "imCapAlwaysOn":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "ImAlwaysOn"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "defaultMessagingMethod"

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    .end local v18    # "imCapAlwaysOn":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 1118
    :cond_3
    if-eqz v18, :cond_1b

    .line 1138
    :cond_4
    if-eqz v9, :cond_1c

    .line 1154
    :cond_5
    if-eqz v22, :cond_1e

    .line 1165
    :cond_6
    if-eqz v17, :cond_1f

    .line 1182
    :cond_7
    if-eqz v20, :cond_21

    .line 1196
    :cond_8
    if-eqz v14, :cond_23

    .line 1212
    :cond_9
    if-eqz v12, :cond_25

    .line 1220
    :cond_a
    if-eqz v13, :cond_26

    .line 1228
    :cond_b
    if-eqz v11, :cond_27

    .line 1236
    :cond_c
    if-eqz v10, :cond_28

    .line 1244
    :cond_d
    if-eqz v19, :cond_29

    .line 1253
    :cond_e
    if-eqz v16, :cond_2a

    .line 1262
    :cond_f
    if-eqz v5, :cond_2b

    .line 1276
    :cond_10
    if-eqz v26, :cond_2d

    .line 1290
    :cond_11
    if-eqz v3, :cond_2f

    .line 1304
    :cond_12
    if-eqz v23, :cond_31

    .line 1313
    :cond_13
    if-eqz v24, :cond_32

    .line 1322
    :cond_14
    if-eqz v27, :cond_33

    .line 1331
    :cond_15
    if-eqz v25, :cond_34

    .line 1341
    :cond_16
    if-eqz v15, :cond_35

    .line 1355
    :cond_17
    if-eqz v21, :cond_37

    .line 1365
    :cond_18
    if-eqz v7, :cond_38

    .line 1374
    :cond_19
    if-eqz v8, :cond_39

    .line 1387
    :goto_1
    if-eqz v4, :cond_3b

    .line 1396
    :cond_1a
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_0

    :cond_1b
    const-string/jumbo v28, "imCapAlwaysON"

    const/16 v29, 0x1

    .line 1119
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v18

    .line 1120
    .restart local v18    # "imCapAlwaysOn":Ljava/lang/String;
    if-eqz v18, :cond_4

    const-string/jumbo v28, "0"

    .line 1121
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 1128
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "ImAlwaysOn"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "defaultMessagingMethod"

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v18    # "imCapAlwaysOn":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v28, "ftCapAlwaysON"

    const/16 v29, 0x1

    .line 1139
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v9

    .line 1140
    .local v9, "ftCapAlwaysOn":Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string/jumbo v28, "0"

    .line 1141
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    .line 1146
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "FtAlwaysOn"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1142
    :cond_1d
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "FtAlwaysOn"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v9    # "ftCapAlwaysOn":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v28, "MaxConcurrentSession"

    const/16 v29, 0x1

    .line 1155
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v22

    .line 1157
    .local v22, "maxConcurrentSession":Ljava/lang/String;
    if-eqz v22, :cond_6

    .line 1158
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "MaxChatSessions"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v22    # "maxConcurrentSession":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v28, "GroupChatFullStandFwd"

    const/16 v29, 0x1

    .line 1166
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v17

    .line 1168
    .local v17, "groupChatSF":Ljava/lang/String;
    if-eqz v17, :cond_7

    const-string/jumbo v28, "0"

    .line 1169
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_20

    .line 1174
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "CapabilityGroupChatSF"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1170
    :cond_20
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "CapabilityGroupChatSF"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v17    # "groupChatSF":Ljava/lang/String;
    :cond_21
    const-string/jumbo v28, "imWarnSF"

    const/16 v29, 0x1

    .line 1183
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v20

    .line 1184
    .local v20, "imWarnSF":Ljava/lang/String;
    if-eqz v20, :cond_8

    const-string/jumbo v28, "0"

    .line 1185
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_22

    .line 1189
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "StoreForwardServiceWarning"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1186
    :cond_22
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "StoreForwardServiceWarning"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v20    # "imWarnSF":Ljava/lang/String;
    :cond_23
    const-string/jumbo v28, "ftStAndFwEnabled"

    const/16 v29, 0x1

    .line 1197
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v14

    .line 1198
    .local v14, "ftSF":Ljava/lang/String;
    if-eqz v14, :cond_9

    const-string/jumbo v28, "0"

    .line 1199
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_24

    .line 1204
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "CapabilityFileTransferSF"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1200
    :cond_24
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "CapabilityFileTransferSF"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v14    # "ftSF":Ljava/lang/String;
    :cond_25
    const-string/jumbo v28, "ftHTTPCSURI"

    const/16 v29, 0x0

    .line 1213
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v12

    .line 1214
    .local v12, "ftHttpCsUri":Ljava/lang/String;
    if-eqz v12, :cond_a

    .line 1215
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "FtHttpServerAddr"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v12    # "ftHttpCsUri":Ljava/lang/String;
    :cond_26
    const-string/jumbo v28, "ftHTTPCSUser"

    const/16 v29, 0x0

    .line 1221
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v13

    .line 1222
    .local v13, "ftHttpCsUser":Ljava/lang/String;
    if-eqz v13, :cond_b

    .line 1223
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "FtHttpServerLogin"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v13}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v13    # "ftHttpCsUser":Ljava/lang/String;
    :cond_27
    const-string/jumbo v28, "ftHTTPCSPwd"

    const/16 v29, 0x0

    .line 1229
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v11

    .line 1230
    .local v11, "ftHttpCsPwd":Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 1231
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "FtHttpServerPassword"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v11}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v11    # "ftHttpCsPwd":Ljava/lang/String;
    :cond_28
    const-string/jumbo v28, "ftDefaultMech"

    const/16 v29, 0x0

    .line 1237
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v10

    .line 1238
    .local v10, "ftDefaultMech":Ljava/lang/String;
    if-eqz v10, :cond_d

    .line 1239
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "FtProtocol"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v10    # "ftDefaultMech":Ljava/lang/String;
    :cond_29
    const-string/jumbo v28, "imSessionStart"

    const/16 v29, 0x1

    .line 1245
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v19

    .line 1246
    .local v19, "imSessionStart":Ljava/lang/String;
    if-eqz v19, :cond_e

    .line 1247
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "ImSessionStart"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v19    # "imSessionStart":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v28, "ftWarnSize"

    const/16 v29, 0x1

    .line 1254
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v16

    .line 1255
    .local v16, "ftWarnSize":Ljava/lang/String;
    if-eqz v16, :cond_f

    .line 1256
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "WarnFileTransferSize"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v16    # "ftWarnSize":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v28, "ChatAuth"

    const/16 v29, 0x1

    .line 1263
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v5

    .line 1264
    .local v5, "chatAuth":Ljava/lang/String;
    if-eqz v5, :cond_10

    const-string/jumbo v28, "0"

    .line 1265
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2c

    .line 1269
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "CapabilityImSession"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1266
    :cond_2c
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "CapabilityImSession"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "chatAuth":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v28, "SmsFallBackAuth"

    const/16 v29, 0x1

    .line 1277
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v26

    .line 1278
    .local v26, "smsFallBackAuth":Ljava/lang/String;
    if-eqz v26, :cond_11

    const-string/jumbo v28, "0"

    .line 1279
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2e

    .line 1283
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "SmsFallbackService"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1280
    :cond_2e
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "SmsFallbackService"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v26    # "smsFallBackAuth":Ljava/lang/String;
    :cond_2f
    const-string/jumbo v28, "AutAccept"

    const/16 v29, 0x1

    .line 1291
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 1292
    .local v3, "autoAcceptChat":Ljava/lang/String;
    if-eqz v3, :cond_12

    const-string/jumbo v28, "0"

    .line 1293
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_30

    .line 1297
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "AutoAcceptChat"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1294
    :cond_30
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "AutoAcceptChat"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "autoAcceptChat":Ljava/lang/String;
    :cond_31
    const-string/jumbo v28, "MaxSize1to1"

    const/16 v29, 0x1

    .line 1305
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v23

    .line 1306
    .local v23, "maxSize1to1":Ljava/lang/String;
    if-eqz v23, :cond_13

    .line 1307
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "MaxChatMessageLength"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v23    # "maxSize1to1":Ljava/lang/String;
    :cond_32
    const-string/jumbo v28, "MaxSize1toM"

    const/16 v29, 0x1

    .line 1314
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v24

    .line 1315
    .local v24, "maxSize1toM":Ljava/lang/String;
    if-eqz v24, :cond_14

    .line 1316
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "MaxGroupChatMessageLength"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v24    # "maxSize1toM":Ljava/lang/String;
    :cond_33
    const-string/jumbo v28, "TimerIdle"

    const/16 v29, 0x1

    .line 1323
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v27

    .line 1324
    .local v27, "timerIdle":Ljava/lang/String;
    if-eqz v27, :cond_15

    .line 1325
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "ChatIdleDuration"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v27    # "timerIdle":Ljava/lang/String;
    :cond_34
    const-string/jumbo v28, "MaxSizeFileTr"

    const/16 v29, 0x1

    .line 1332
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v25

    .line 1334
    .local v25, "maxSizeFileTransfer":Ljava/lang/String;
    if-eqz v25, :cond_16

    .line 1335
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "MaxFileTransferSize"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v25    # "maxSizeFileTransfer":Ljava/lang/String;
    :cond_35
    const-string/jumbo v28, "ftThumb"

    const/16 v29, 0x1

    .line 1342
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v15

    .line 1343
    .local v15, "ftThumb":Ljava/lang/String;
    if-eqz v15, :cond_17

    const-string/jumbo v28, "0"

    .line 1344
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_36

    .line 1348
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "CapabilityFileTransferThumbnail"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1345
    :cond_36
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "CapabilityFileTransferThumbnail"

    sget-object v30, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v15    # "ftThumb":Ljava/lang/String;
    :cond_37
    const-string/jumbo v28, "max_adhoc_group_size"

    const/16 v29, 0x1

    .line 1356
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v21

    .line 1358
    .local v21, "maxAdhocGroupSize":Ljava/lang/String;
    if-eqz v21, :cond_18

    .line 1359
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "MaxChatParticipants"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v21    # "maxAdhocGroupSize":Ljava/lang/String;
    :cond_38
    const-string/jumbo v28, "conf-fcty-uri"

    const/16 v29, 0x0

    .line 1366
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v7

    .line 1367
    .local v7, "confFctyUri":Ljava/lang/String;
    if-eqz v7, :cond_19

    .line 1368
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "ImConferenceUri"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->formatSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "confFctyUri":Ljava/lang/String;
    :cond_39
    const-string/jumbo v28, "ftAutAccept"

    const/16 v29, 0x1

    .line 1375
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v8

    .line 1376
    .local v8, "ftAutAccept":Ljava/lang/String;
    if-nez v8, :cond_3a

    .line 1382
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setEnableFileTransferAutoAccept(Z)V

    goto/16 :goto_1

    .line 1377
    :cond_3a
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "1"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setFileTransferAutoAccept(Z)V

    .line 1379
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setEnableFileTransferAutoAccept(Z)V

    goto/16 :goto_0

    .end local v8    # "ftAutAccept":Ljava/lang/String;
    :cond_3b
    const-string/jumbo v28, "AutAcceptGroupChat"

    const/16 v29, 0x1

    .line 1388
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 1390
    .local v4, "autoAcceptGroupChat":Ljava/lang/String;
    if-eqz v4, :cond_1a

    .line 1391
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v28

    const-string/jumbo v29, "1"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setGroupChatAutoAccept(Z)V

    goto/16 :goto_0
.end method

.method private parseIMS(Lorg/w3c/dom/Node;)V
    .locals 13
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v6, 0x0

    .local v6, "timert1":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "timert2":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "timert4":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "privateUserIdentity":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "homeDomain":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "keepAliveEnabled":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "regRetryBasetime":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "regRetryMaxtime":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2208
    .local v9, "typenode":Lorg/w3c/dom/Node;
    if-eqz p1, :cond_1

    .line 2211
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 2213
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 2333
    .end local v1    # "homeDomain":Ljava/lang/String;
    .end local v2    # "keepAliveEnabled":Ljava/lang/String;
    .end local v3    # "privateUserIdentity":Ljava/lang/String;
    .end local v4    # "regRetryBasetime":Ljava/lang/String;
    .end local v5    # "regRetryMaxtime":Ljava/lang/String;
    .end local v6    # "timert1":Ljava/lang/String;
    .end local v7    # "timert2":Ljava/lang/String;
    .end local v8    # "timert4":Ljava/lang/String;
    .end local v9    # "typenode":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 2209
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "homeDomain":Ljava/lang/String;
    .restart local v2    # "keepAliveEnabled":Ljava/lang/String;
    .restart local v3    # "privateUserIdentity":Ljava/lang/String;
    .restart local v4    # "regRetryBasetime":Ljava/lang/String;
    .restart local v5    # "regRetryMaxtime":Ljava/lang/String;
    .restart local v6    # "timert1":Ljava/lang/String;
    .restart local v7    # "timert2":Ljava/lang/String;
    .restart local v8    # "timert4":Ljava/lang/String;
    .restart local v9    # "typenode":Lorg/w3c/dom/Node;
    :cond_1
    return-void

    .line 2248
    .end local v1    # "homeDomain":Ljava/lang/String;
    .end local v2    # "keepAliveEnabled":Ljava/lang/String;
    .end local v3    # "privateUserIdentity":Ljava/lang/String;
    .end local v4    # "regRetryBasetime":Ljava/lang/String;
    .end local v5    # "regRetryMaxtime":Ljava/lang/String;
    .end local v7    # "timert2":Ljava/lang/String;
    .end local v8    # "timert4":Ljava/lang/String;
    .end local v9    # "typenode":Lorg/w3c/dom/Node;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v6, "timert1":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "SipTimerT1"

    invoke-virtual {v10, v11, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    .end local v6    # "timert1":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 2215
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "characteristic"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 2245
    :cond_4
    :goto_1
    if-eqz v6, :cond_14

    .line 2254
    :goto_2
    if-eqz v7, :cond_15

    .line 2263
    :cond_5
    if-eqz v8, :cond_16

    .line 2272
    :cond_6
    if-eqz v3, :cond_17

    .line 2282
    :cond_7
    if-eqz v1, :cond_18

    .line 2292
    :cond_8
    if-eqz v2, :cond_19

    .line 2307
    :cond_9
    if-eqz v4, :cond_1b

    .line 2317
    :cond_a
    if-eqz v5, :cond_1c

    .line 2330
    :cond_b
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 2216
    :cond_c
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-lez v10, :cond_4

    .line 2217
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "type"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 2218
    .local v9, "typenode":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_4

    .line 2219
    iget-object v10, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_d

    .line 2223
    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "ConRefs"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 2225
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Public_user_identity_List"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 2228
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Ext"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 2230
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "ICSI_List"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 2232
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "LBO_P-CSCF_Address"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 2235
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "PhoneContext_List"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 2238
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "APPAUTH"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2239
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseAppAuthent(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2220
    :cond_d
    iget-object v10, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Node "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " with type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2224
    :cond_e
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseConRefs(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2227
    :cond_f
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parsePublicUserIdentity(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2229
    :cond_10
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseExt(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2231
    :cond_11
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseICSI(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2234
    :cond_12
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parsePcscfAddress(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2237
    :cond_13
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parsePhoneContextList(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .end local v9    # "typenode":Lorg/w3c/dom/Node;
    :cond_14
    const-string/jumbo v10, "Timer_T1"

    const/4 v11, 0x1

    .line 2246
    invoke-direct {p0, v10, v0, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v6

    .line 2247
    .restart local v6    # "timert1":Ljava/lang/String;
    if-nez v6, :cond_2

    goto/16 :goto_2

    .end local v6    # "timert1":Ljava/lang/String;
    :cond_15
    const-string/jumbo v10, "Timer_T2"

    const/4 v11, 0x1

    .line 2255
    invoke-direct {p0, v10, v0, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v7

    .line 2256
    .local v7, "timert2":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 2257
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "SipTimerT2"

    invoke-virtual {v10, v11, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "timert2":Ljava/lang/String;
    :cond_16
    const-string/jumbo v10, "Timer_T4"

    const/4 v11, 0x1

    .line 2264
    invoke-direct {p0, v10, v0, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v8

    .line 2265
    .local v8, "timert4":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 2266
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "SipTimerT4"

    invoke-virtual {v10, v11, v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8    # "timert4":Ljava/lang/String;
    :cond_17
    const-string/jumbo v10, "Private_User_Identity"

    const/4 v11, 0x0

    .line 2273
    invoke-direct {p0, v10, v0, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 2275
    .local v3, "privateUserIdentity":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 2276
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "ImsPrivateId"

    invoke-virtual {v10, v11, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "privateUserIdentity":Ljava/lang/String;
    :cond_18
    const-string/jumbo v10, "Home_network_domain_name"

    const/4 v11, 0x0

    .line 2283
    invoke-direct {p0, v10, v0, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 2285
    .local v1, "homeDomain":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 2286
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "ImsHomeDomain"

    invoke-virtual {v10, v11, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "homeDomain":Ljava/lang/String;
    :cond_19
    const-string/jumbo v10, "Keep_Alive_Enabled"

    const/4 v11, 0x1

    .line 2293
    invoke-direct {p0, v10, v0, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 2295
    .local v2, "keepAliveEnabled":Ljava/lang/String;
    if-eqz v2, :cond_9

    const-string/jumbo v10, "1"

    .line 2296
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 2300
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "SipKeepAlive"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2297
    :cond_1a
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "SipKeepAlive"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "keepAliveEnabled":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v10, "RegRetryBaseTime"

    const/4 v11, 0x1

    .line 2308
    invoke-direct {p0, v10, v0, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 2310
    .local v4, "regRetryBasetime":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 2311
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "RegisterRetryBaseTime"

    invoke-virtual {v10, v11, v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "regRetryBasetime":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v10, "RegRetryMaxTime"

    const/4 v11, 0x1

    .line 2318
    invoke-direct {p0, v10, v0, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v5

    .line 2319
    .local v5, "regRetryMaxtime":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 2320
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "RegisterRetryMaxTime"

    invoke-virtual {v10, v11, v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parseJoyn(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .local v1, "msgCapValidity":Ljava/lang/String;
    const/4 v2, 0x0

    .line 949
    .local v2, "typenode":Lorg/w3c/dom/Node;
    if-eqz p1, :cond_1

    .line 952
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 953
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 978
    .end local v1    # "msgCapValidity":Ljava/lang/String;
    .end local v2    # "typenode":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 950
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "msgCapValidity":Ljava/lang/String;
    .restart local v2    # "typenode":Lorg/w3c/dom/Node;
    :cond_1
    return-void

    .line 971
    .end local v2    # "typenode":Lorg/w3c/dom/Node;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v1, "msgCapValidity":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    const-string/jumbo v4, "msgCapValidity"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    .end local v1    # "msgCapValidity":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 955
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "characteristic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 968
    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    .line 975
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 956
    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-lez v3, :cond_4

    .line 957
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 958
    .local v2, "typenode":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_4

    .line 959
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 961
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Messaging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 962
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseMessaging(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 960
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseUx(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .end local v2    # "typenode":Lorg/w3c/dom/Node;
    :cond_7
    const-string/jumbo v3, "msgCapValidity"

    const/4 v4, 0x1

    .line 969
    invoke-direct {p0, v3, v0, v4}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 970
    .restart local v1    # "msgCapValidity":Ljava/lang/String;
    if-nez v1, :cond_2

    goto :goto_2
.end method

.method private parseMessaging(Lorg/w3c/dom/Node;)V
    .locals 8
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .local v2, "ftHTTPCapAlwaysOn":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1052
    .local v1, "deliveryTimeout":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1055
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1057
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 1079
    .end local v1    # "deliveryTimeout":Ljava/lang/String;
    .end local v2    # "ftHTTPCapAlwaysOn":Ljava/lang/String;
    :cond_0
    return-void

    .line 1053
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "deliveryTimeout":Ljava/lang/String;
    .restart local v2    # "ftHTTPCapAlwaysOn":Ljava/lang/String;
    :cond_1
    return-void

    .end local v1    # "deliveryTimeout":Ljava/lang/String;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v2, "ftHTTPCapAlwaysOn":Ljava/lang/String;
    :cond_2
    move v3, v5

    .line 1063
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .end local v2    # "ftHTTPCapAlwaysOn":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    .line 1059
    :cond_3
    if-eqz v2, :cond_6

    .line 1069
    :cond_4
    if-eqz v1, :cond_7

    .line 1076
    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "ftHTTPCapAlwaysOn"

    .line 1060
    invoke-direct {p0, v3, v0, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 1062
    .restart local v2    # "ftHTTPCapAlwaysOn":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1063
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    const-string/jumbo v7, "ftHTTPCapAlwaysOn"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .end local v2    # "ftHTTPCapAlwaysOn":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "deliveryTimeout"

    .line 1070
    invoke-direct {p0, v3, v0, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "deliveryTimeout":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1072
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    const-string/jumbo v6, "deliveryTimeout"

    invoke-virtual {v3, v6, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parseOther(Lorg/w3c/dom/Node;)V
    .locals 13
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v6, 0x0

    .local v6, "endUserConfReqId":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "beIPCallBreakOut":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "beIPCallBreakOutCS":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "beIPVideoCallUpgradeFromCS":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "beIPVideoCallUpgradeOnCapError":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "beIPVideoCallUpgradeAttemptEarly":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "uuid_Value":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "maxMsrpLengthExtensions":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1615
    .local v8, "typenode":Lorg/w3c/dom/Node;
    if-eqz p1, :cond_1

    .line 1618
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .line 1620
    .local v5, "childnode":Lorg/w3c/dom/Node;
    if-nez v5, :cond_3

    .line 1757
    .end local v0    # "beIPCallBreakOut":Ljava/lang/String;
    .end local v1    # "beIPCallBreakOutCS":Ljava/lang/String;
    .end local v2    # "beIPVideoCallUpgradeAttemptEarly":Ljava/lang/String;
    .end local v3    # "beIPVideoCallUpgradeFromCS":Ljava/lang/String;
    .end local v4    # "beIPVideoCallUpgradeOnCapError":Ljava/lang/String;
    .end local v6    # "endUserConfReqId":Ljava/lang/String;
    .end local v7    # "maxMsrpLengthExtensions":Ljava/lang/String;
    .end local v8    # "typenode":Lorg/w3c/dom/Node;
    .end local v9    # "uuid_Value":Ljava/lang/String;
    :cond_0
    return-void

    .line 1616
    .end local v5    # "childnode":Lorg/w3c/dom/Node;
    .restart local v0    # "beIPCallBreakOut":Ljava/lang/String;
    .restart local v1    # "beIPCallBreakOutCS":Ljava/lang/String;
    .restart local v2    # "beIPVideoCallUpgradeAttemptEarly":Ljava/lang/String;
    .restart local v3    # "beIPVideoCallUpgradeFromCS":Ljava/lang/String;
    .restart local v4    # "beIPVideoCallUpgradeOnCapError":Ljava/lang/String;
    .restart local v6    # "endUserConfReqId":Ljava/lang/String;
    .restart local v7    # "maxMsrpLengthExtensions":Ljava/lang/String;
    .restart local v8    # "typenode":Lorg/w3c/dom/Node;
    .restart local v9    # "uuid_Value":Ljava/lang/String;
    :cond_1
    return-void

    .line 1641
    .end local v0    # "beIPCallBreakOut":Ljava/lang/String;
    .end local v1    # "beIPCallBreakOutCS":Ljava/lang/String;
    .end local v2    # "beIPVideoCallUpgradeAttemptEarly":Ljava/lang/String;
    .end local v3    # "beIPVideoCallUpgradeFromCS":Ljava/lang/String;
    .end local v4    # "beIPVideoCallUpgradeOnCapError":Ljava/lang/String;
    .end local v7    # "maxMsrpLengthExtensions":Ljava/lang/String;
    .end local v8    # "typenode":Lorg/w3c/dom/Node;
    .end local v9    # "uuid_Value":Ljava/lang/String;
    .restart local v5    # "childnode":Lorg/w3c/dom/Node;
    .local v6, "endUserConfReqId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "EndUserConfReqUri"

    invoke-direct {p0, v6}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->formatSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    .end local v6    # "endUserConfReqId":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 1622
    :cond_3
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "characteristic"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1637
    :cond_4
    :goto_1
    if-eqz v6, :cond_e

    .line 1652
    :goto_2
    if-eqz v9, :cond_f

    .line 1661
    :cond_5
    if-eqz v0, :cond_10

    .line 1676
    :cond_6
    if-eqz v1, :cond_12

    .line 1691
    :cond_7
    if-eqz v3, :cond_14

    .line 1708
    :cond_8
    if-eqz v4, :cond_16

    .line 1725
    :cond_9
    if-eqz v2, :cond_18

    .line 1742
    :cond_a
    if-eqz v7, :cond_1a

    .line 1754
    :cond_b
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_0

    .line 1623
    :cond_c
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-lez v10, :cond_4

    .line 1624
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "type"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 1625
    .local v8, "typenode":Lorg/w3c/dom/Node;
    if-eqz v8, :cond_4

    .line 1626
    iget-object v10, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v10

    if-nez v10, :cond_d

    .line 1630
    :goto_3
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "transportProto"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1631
    invoke-direct {p0, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseTransportProtocol(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 1627
    :cond_d
    iget-object v10, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Node "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " with type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .end local v8    # "typenode":Lorg/w3c/dom/Node;
    :cond_e
    const-string/jumbo v10, "endUserConfReqId"

    const/4 v11, 0x0

    .line 1638
    invoke-direct {p0, v10, v5, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v6

    .line 1640
    .restart local v6    # "endUserConfReqId":Ljava/lang/String;
    if-nez v6, :cond_2

    goto :goto_2

    .end local v6    # "endUserConfReqId":Ljava/lang/String;
    :cond_f
    const-string/jumbo v10, "uuid_Value"

    const/4 v11, 0x0

    .line 1653
    invoke-direct {p0, v10, v5, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v9

    .line 1654
    .local v9, "uuid_Value":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 1655
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "uuid_Value"

    invoke-virtual {v10, v11, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v9    # "uuid_Value":Ljava/lang/String;
    :cond_10
    const-string/jumbo v10, "beIPCallBreakOut"

    const/4 v11, 0x1

    .line 1662
    invoke-direct {p0, v10, v5, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v0

    .line 1664
    .local v0, "beIPCallBreakOut":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string/jumbo v10, "1"

    .line 1665
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 1669
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPCallBreakOut"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1666
    :cond_11
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPCallBreakOut"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "beIPCallBreakOut":Ljava/lang/String;
    :cond_12
    const-string/jumbo v10, "beIPCallBreakOutCS"

    const/4 v11, 0x1

    .line 1677
    invoke-direct {p0, v10, v5, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 1679
    .local v1, "beIPCallBreakOutCS":Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string/jumbo v10, "1"

    .line 1680
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 1684
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPCallBreakOutCS"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1681
    :cond_13
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPCallBreakOutCS"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "beIPCallBreakOutCS":Ljava/lang/String;
    :cond_14
    const-string/jumbo v10, "beIPVideoCallUpgradeFromCS"

    const/4 v11, 0x1

    .line 1692
    invoke-direct {p0, v10, v5, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 1694
    .local v3, "beIPVideoCallUpgradeFromCS":Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string/jumbo v10, "1"

    .line 1695
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 1700
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPVideoCallUpgradeFromCS"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1696
    :cond_15
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPVideoCallUpgradeFromCS"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "beIPVideoCallUpgradeFromCS":Ljava/lang/String;
    :cond_16
    const-string/jumbo v10, "beIPVideoCallUpgradeOnCapError"

    const/4 v11, 0x1

    .line 1709
    invoke-direct {p0, v10, v5, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 1711
    .local v4, "beIPVideoCallUpgradeOnCapError":Ljava/lang/String;
    if-eqz v4, :cond_9

    const-string/jumbo v10, "1"

    .line 1712
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 1717
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPVideoCallUpgradeOnCapError"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1713
    :cond_17
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPVideoCallUpgradeOnCapError"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "beIPVideoCallUpgradeOnCapError":Ljava/lang/String;
    :cond_18
    const-string/jumbo v10, "beIPVideoCallUpgradeAttemptEarly"

    const/4 v11, 0x1

    .line 1726
    invoke-direct {p0, v10, v5, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 1728
    .local v2, "beIPVideoCallUpgradeAttemptEarly":Ljava/lang/String;
    if-eqz v2, :cond_a

    const-string/jumbo v10, "1"

    .line 1729
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 1734
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPVideoCallUpgradeAttemptEarly"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1730
    :cond_19
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "beIPVideoCallUpgradeAttemptEarly"

    sget-object v12, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "beIPVideoCallUpgradeAttemptEarly":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v10, "extensionsMaxMSRPSize"

    const/4 v11, 0x1

    .line 1743
    invoke-direct {p0, v10, v5, v11}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v7

    .line 1745
    .local v7, "maxMsrpLengthExtensions":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 1746
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v10

    const-string/jumbo v11, "ExtensionsMaxMSRPSize"

    invoke-virtual {v10, v11, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parsePcscfAddress(Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "addrType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2000
    .local v0, "addr":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 2003
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 2005
    .local v3, "childnode":Lorg/w3c/dom/Node;
    if-nez v3, :cond_3

    .line 2034
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "addrType":Ljava/lang/String;
    :cond_0
    return-void

    .line 2001
    .end local v3    # "childnode":Lorg/w3c/dom/Node;
    .restart local v0    # "addr":Ljava/lang/String;
    .restart local v1    # "addrType":Ljava/lang/String;
    :cond_1
    return-void

    .end local v1    # "addrType":Ljava/lang/String;
    .local v0, "addr":Ljava/lang/String;
    .restart local v3    # "childnode":Lorg/w3c/dom/Node;
    :cond_2
    const-string/jumbo v4, ":"

    .line 2010
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2011
    .local v2, "address":[Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    const-string/jumbo v5, "ImsOutboundProxyAddrForMobile"

    aget-object v6, v2, v7

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    const-string/jumbo v5, "ImsOutboundProxyAddrForWifi"

    aget-object v6, v2, v7

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    array-length v4, v2

    if-gt v4, v8, :cond_6

    .line 2032
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "address":[Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 2007
    :cond_3
    if-eqz v0, :cond_5

    .line 2024
    :goto_1
    if-eqz v1, :cond_7

    .line 2031
    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "Address"

    .line 2008
    invoke-direct {p0, v4, v3, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v0

    .line 2009
    .restart local v0    # "addr":Ljava/lang/String;
    if-nez v0, :cond_2

    goto :goto_1

    .line 2016
    .restart local v2    # "address":[Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    const-string/jumbo v5, "ImsOutboundProxyPortForMobile"

    aget-object v6, v2, v8

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    const-string/jumbo v5, "ImsOutboundProxyPortForWifi"

    aget-object v6, v2, v8

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "address":[Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "AddressType"

    .line 2025
    invoke-direct {p0, v4, v3, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 2026
    .local v1, "addrType":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 2027
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    const-string/jumbo v5, "ImsOutboundProxyAddressType"

    invoke-virtual {v4, v5, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parsePhoneContextList(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "phoneContextValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2046
    .local v2, "publicUserIdentityValue":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 2049
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 2051
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 2072
    .end local v1    # "phoneContextValue":Ljava/lang/String;
    .end local v2    # "publicUserIdentityValue":Ljava/lang/String;
    :cond_0
    return-void

    .line 2047
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "phoneContextValue":Ljava/lang/String;
    .restart local v2    # "publicUserIdentityValue":Ljava/lang/String;
    :cond_1
    return-void

    .line 2056
    .end local v2    # "publicUserIdentityValue":Ljava/lang/String;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v1, "phoneContextValue":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setPhoneContext(Ljava/lang/String;)V

    .line 2070
    .end local v1    # "phoneContextValue":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v0, :cond_0

    .line 2053
    :cond_4
    if-eqz v1, :cond_5

    .line 2061
    :goto_1
    if-eqz v2, :cond_6

    .line 2069
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "PhoneContext"

    .line 2054
    invoke-direct {p0, v3, v0, v4}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 2055
    .restart local v1    # "phoneContextValue":Ljava/lang/String;
    if-nez v1, :cond_2

    goto :goto_1

    .end local v1    # "phoneContextValue":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, "Public_user_identity"

    .line 2062
    invoke-direct {p0, v3, v0, v4}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 2064
    .local v2, "publicUserIdentityValue":Ljava/lang/String;
    if-nez v2, :cond_3

    goto :goto_2
.end method

.method private parsePresence(Lorg/w3c/dom/Node;)V
    .locals 11
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .local v1, "iconMaxSize":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "noteMaxSize":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "publishTimer":Ljava/lang/String;
    const/4 v5, 0x0

    .line 747
    .local v5, "typenode":Lorg/w3c/dom/Node;
    if-eqz p1, :cond_1

    .line 750
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 752
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 811
    .end local v1    # "iconMaxSize":Ljava/lang/String;
    .end local v3    # "noteMaxSize":Ljava/lang/String;
    .end local v4    # "publishTimer":Ljava/lang/String;
    .end local v5    # "typenode":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 748
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "iconMaxSize":Ljava/lang/String;
    .restart local v3    # "noteMaxSize":Ljava/lang/String;
    .restart local v4    # "publishTimer":Ljava/lang/String;
    .restart local v5    # "typenode":Lorg/w3c/dom/Node;
    :cond_1
    return-void

    .line 778
    .end local v3    # "noteMaxSize":Ljava/lang/String;
    .end local v4    # "publishTimer":Ljava/lang/String;
    .end local v5    # "typenode":Lorg/w3c/dom/Node;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v1, "iconMaxSize":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit16 v2, v6, 0x400

    .line 779
    .local v2, "kb":I
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    const-string/jumbo v7, "MaxPhotoIconSize"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .end local v1    # "iconMaxSize":Ljava/lang/String;
    .end local v2    # "kb":I
    :goto_0
    if-eqz v0, :cond_0

    .line 754
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "characteristic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 775
    :cond_4
    :goto_1
    if-eqz v1, :cond_b

    .line 785
    :goto_2
    if-eqz v3, :cond_c

    .line 794
    :cond_5
    if-eqz v4, :cond_d

    .line 808
    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 755
    :cond_7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-lez v6, :cond_4

    .line 756
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    const-string/jumbo v7, "type"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 757
    .local v5, "typenode":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_4

    .line 758
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_8

    .line 762
    :goto_3
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FAVLINK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 764
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SERVCAPWATCH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 766
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ServCapPresentity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 768
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parsePresentityWatcher(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 759
    :cond_8
    iget-object v6, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 763
    :cond_9
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseFavoriteLink(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 765
    :cond_a
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parsePresenceWatcher(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .end local v5    # "typenode":Lorg/w3c/dom/Node;
    :cond_b
    const-string/jumbo v6, "IconMaxSize"

    .line 776
    invoke-direct {p0, v6, v0, v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 777
    .restart local v1    # "iconMaxSize":Ljava/lang/String;
    if-nez v1, :cond_2

    goto/16 :goto_2

    .end local v1    # "iconMaxSize":Ljava/lang/String;
    :cond_c
    const-string/jumbo v6, "NoteMaxSize"

    .line 786
    invoke-direct {p0, v6, v0, v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, "noteMaxSize":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 788
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    const-string/jumbo v7, "MaxFreetextLength"

    invoke-virtual {v6, v7, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "noteMaxSize":Ljava/lang/String;
    :cond_d
    const-string/jumbo v6, "PublishTimer"

    .line 795
    invoke-direct {p0, v6, v0, v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 796
    .local v4, "publishTimer":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 797
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    const-string/jumbo v7, "PublishExpirePeriod"

    invoke-virtual {v6, v7, v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parsePresenceWatcher(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 726
    return-void
.end method

.method private parsePresentityWatcher(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 735
    return-void
.end method

.method private parsePublicUserIdentity(Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1792
    .local v1, "publicUserIdentity":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1795
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1797
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 1817
    .end local v1    # "publicUserIdentity":Ljava/lang/String;
    :cond_0
    return-void

    .line 1793
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "publicUserIdentity":Ljava/lang/String;
    :cond_1
    return-void

    .line 1803
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v1, "publicUserIdentity":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->extractUserNamePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "username":Ljava/lang/String;
    const-string/jumbo v3, "+"

    .line 1804
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1807
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    const-string/jumbo v4, "ImsUsername"

    invoke-virtual {v3, v4, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    const-string/jumbo v4, "ImsDisplayName"

    invoke-virtual {v3, v4, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    .end local v1    # "publicUserIdentity":Ljava/lang/String;
    .end local v2    # "username":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    .line 1799
    :cond_3
    if-eqz v1, :cond_4

    .line 1814
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "Public_User_Identity"

    .line 1800
    invoke-direct {p0, v3, v0, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 1802
    .restart local v1    # "publicUserIdentity":Ljava/lang/String;
    if-nez v1, :cond_2

    goto :goto_2

    .line 1805
    .restart local v2    # "username":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setCurrentMsisdn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseRCSe(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 2148
    .local v1, "typenode":Lorg/w3c/dom/Node;
    if-eqz p1, :cond_1

    .line 2151
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 2153
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_2

    .line 2191
    .end local v1    # "typenode":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 2149
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "typenode":Lorg/w3c/dom/Node;
    :cond_1
    return-void

    .line 2155
    .end local v1    # "typenode":Lorg/w3c/dom/Node;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "characteristic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2188
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 2189
    if-eqz v0, :cond_0

    goto :goto_0

    .line 2156
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    .line 2157
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 2158
    .local v1, "typenode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_3

    .line 2159
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2163
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IMS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2165
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PRESENCE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2167
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "XDMS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2169
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2171
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CAPDISCOVERY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2173
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "APN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2175
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OTHER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2177
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SERVICES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2179
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SUPL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2181
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SERVICEPROVIDEREXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2183
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseServiceProviderExt(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2160
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2164
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseIMS(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2166
    :cond_7
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parsePresence(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2168
    :cond_8
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseXDMS(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2170
    :cond_9
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseIM(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2172
    :cond_a
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseCapabilityDiscovery(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2174
    :cond_b
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseAPN(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2176
    :cond_c
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseOther(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2178
    :cond_d
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseServices(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    .line 2180
    :cond_e
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseSupl(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1
.end method

.method private parseSecondaryDevicePar(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1864
    return-void
.end method

.method private parseServiceProviderExt(Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 920
    .local v1, "typenode":Lorg/w3c/dom/Node;
    if-eqz p1, :cond_1

    .line 923
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 924
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_2

    .line 939
    .end local v1    # "typenode":Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 921
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "typenode":Lorg/w3c/dom/Node;
    :cond_1
    return-void

    .line 926
    .end local v1    # "typenode":Lorg/w3c/dom/Node;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "characteristic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 936
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_0

    goto :goto_0

    .line 927
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    .line 928
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 929
    .local v1, "typenode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_3

    .line 930
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "joyn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 931
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseJoyn(Lorg/w3c/dom/Node;)V

    goto :goto_1
.end method

.method private parseServices(Lorg/w3c/dom/Node;)V
    .locals 22
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v7, 0x0

    .local v7, "chatAuth":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "groupChatAuth":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "ftAuth":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "geolocPushAuth":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "vsAuth":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "isAuth":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "beIPVoiceCallAuth":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "beIPVideoCallAuth":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "allowExtensions":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "composerAuth":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "sharedMapAuth":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "sharedSketchAuth":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "postCallAuth":Ljava/lang/String;
    const/4 v6, 0x0

    .line 238
    .local v6, "callComposerTimerIdle":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 241
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    .line 243
    .local v8, "childnode":Lorg/w3c/dom/Node;
    if-nez v8, :cond_2

    .line 499
    .end local v3    # "allowExtensions":Ljava/lang/String;
    .end local v4    # "beIPVideoCallAuth":Ljava/lang/String;
    .end local v5    # "beIPVoiceCallAuth":Ljava/lang/String;
    .end local v6    # "callComposerTimerIdle":Ljava/lang/String;
    .end local v7    # "chatAuth":Ljava/lang/String;
    .end local v9    # "composerAuth":Ljava/lang/String;
    .end local v10    # "ftAuth":Ljava/lang/String;
    .end local v11    # "geolocPushAuth":Ljava/lang/String;
    .end local v12    # "groupChatAuth":Ljava/lang/String;
    .end local v13    # "isAuth":Ljava/lang/String;
    .end local v14    # "postCallAuth":Ljava/lang/String;
    .end local v15    # "sharedMapAuth":Ljava/lang/String;
    .end local v16    # "sharedSketchAuth":Ljava/lang/String;
    .end local v18    # "vsAuth":Ljava/lang/String;
    :cond_0
    return-void

    .line 239
    .end local v8    # "childnode":Lorg/w3c/dom/Node;
    .restart local v3    # "allowExtensions":Ljava/lang/String;
    .restart local v4    # "beIPVideoCallAuth":Ljava/lang/String;
    .restart local v5    # "beIPVoiceCallAuth":Ljava/lang/String;
    .restart local v6    # "callComposerTimerIdle":Ljava/lang/String;
    .restart local v7    # "chatAuth":Ljava/lang/String;
    .restart local v9    # "composerAuth":Ljava/lang/String;
    .restart local v10    # "ftAuth":Ljava/lang/String;
    .restart local v11    # "geolocPushAuth":Ljava/lang/String;
    .restart local v12    # "groupChatAuth":Ljava/lang/String;
    .restart local v13    # "isAuth":Ljava/lang/String;
    .restart local v14    # "postCallAuth":Ljava/lang/String;
    .restart local v15    # "sharedMapAuth":Ljava/lang/String;
    .restart local v16    # "sharedSketchAuth":Ljava/lang/String;
    .restart local v18    # "vsAuth":Ljava/lang/String;
    :cond_1
    return-void

    .line 250
    .restart local v8    # "childnode":Lorg/w3c/dom/Node;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "1"

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setGsmaRelease(Ljava/lang/String;)V

    .line 253
    .end local v3    # "allowExtensions":Ljava/lang/String;
    .end local v4    # "beIPVideoCallAuth":Ljava/lang/String;
    .end local v5    # "beIPVoiceCallAuth":Ljava/lang/String;
    .end local v6    # "callComposerTimerIdle":Ljava/lang/String;
    .end local v7    # "chatAuth":Ljava/lang/String;
    .end local v9    # "composerAuth":Ljava/lang/String;
    .end local v10    # "ftAuth":Ljava/lang/String;
    .end local v11    # "geolocPushAuth":Ljava/lang/String;
    .end local v12    # "groupChatAuth":Ljava/lang/String;
    .end local v13    # "isAuth":Ljava/lang/String;
    .end local v14    # "postCallAuth":Ljava/lang/String;
    .end local v15    # "sharedMapAuth":Ljava/lang/String;
    .end local v16    # "sharedSketchAuth":Ljava/lang/String;
    .end local v18    # "vsAuth":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_11

    .line 267
    :cond_3
    if-eqz v12, :cond_13

    .line 283
    :cond_4
    if-eqz v10, :cond_15

    .line 298
    :cond_5
    if-eqz v18, :cond_17

    .line 309
    :cond_6
    if-eqz v13, :cond_18

    .line 324
    :cond_7
    if-eqz v11, :cond_1a

    .line 338
    :cond_8
    if-eqz v9, :cond_1c

    .line 352
    :cond_9
    if-eqz v15, :cond_1e

    .line 366
    :cond_a
    if-eqz v16, :cond_20

    .line 381
    :cond_b
    if-eqz v14, :cond_22

    .line 395
    :cond_c
    if-eqz v6, :cond_24

    .line 424
    :cond_d
    if-eqz v5, :cond_25

    .line 448
    :cond_e
    if-eqz v4, :cond_28

    .line 472
    :cond_f
    if-eqz v3, :cond_2b

    .line 496
    :cond_10
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    .line 497
    :goto_1
    if-eqz v8, :cond_0

    goto :goto_0

    :cond_11
    const-string/jumbo v19, "ChatAuth"

    const/16 v20, 0x1

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "chatAuth":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string/jumbo v19, "1"

    .line 256
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 260
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityImSession"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_12
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityImSession"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v7    # "chatAuth":Ljava/lang/String;
    :cond_13
    const-string/jumbo v19, "groupChatAuth"

    const/16 v20, 0x1

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "groupChatAuth":Ljava/lang/String;
    if-eqz v12, :cond_4

    const-string/jumbo v19, "1"

    .line 270
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 275
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityImGroupSession"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :cond_14
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityImGroupSession"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v12    # "groupChatAuth":Ljava/lang/String;
    :cond_15
    const-string/jumbo v19, "ftAuth"

    const/16 v20, 0x1

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, "ftAuth":Ljava/lang/String;
    if-eqz v10, :cond_5

    const-string/jumbo v19, "1"

    .line 286
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_16

    .line 290
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityFileTransfer"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 287
    :cond_16
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityFileTransfer"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v10    # "ftAuth":Ljava/lang/String;
    :cond_17
    const-string/jumbo v19, "vsAuth"

    const/16 v20, 0x1

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v18

    .line 300
    .local v18, "vsAuth":Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 302
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityVideoShare"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v18    # "vsAuth":Ljava/lang/String;
    :cond_18
    const-string/jumbo v19, "isAuth"

    const/16 v20, 0x1

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v13

    .line 311
    .local v13, "isAuth":Ljava/lang/String;
    if-eqz v13, :cond_7

    const-string/jumbo v19, "1"

    .line 312
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_19

    .line 316
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityImageShare"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 313
    :cond_19
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityImageShare"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v13    # "isAuth":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v19, "geolocPushAuth"

    const/16 v20, 0x1

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v11

    .line 326
    .local v11, "geolocPushAuth":Ljava/lang/String;
    if-eqz v11, :cond_8

    const-string/jumbo v19, "1"

    .line 327
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1b

    .line 331
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityGeoLocationPush"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 328
    :cond_1b
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityGeoLocationPush"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v11    # "geolocPushAuth":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v19, "composerAuth"

    const/16 v20, 0x1

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v9

    .line 340
    .local v9, "composerAuth":Ljava/lang/String;
    if-eqz v9, :cond_9

    const-string/jumbo v19, "1"

    .line 341
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d

    .line 345
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityCallComposer"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 342
    :cond_1d
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityCallComposer"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v9    # "composerAuth":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v19, "sharedMapAuth"

    const/16 v20, 0x1

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v15

    .line 354
    .local v15, "sharedMapAuth":Ljava/lang/String;
    if-eqz v15, :cond_a

    const-string/jumbo v19, "1"

    .line 355
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1f

    .line 359
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilitySharedMap"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 356
    :cond_1f
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilitySharedMap"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v15    # "sharedMapAuth":Ljava/lang/String;
    :cond_20
    const-string/jumbo v19, "sharedSketchAuth"

    const/16 v20, 0x1

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v16

    .line 369
    .local v16, "sharedSketchAuth":Ljava/lang/String;
    if-eqz v16, :cond_b

    const-string/jumbo v19, "1"

    .line 370
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_21

    .line 374
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilitySharedSketch"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 371
    :cond_21
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilitySharedSketch"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v16    # "sharedSketchAuth":Ljava/lang/String;
    :cond_22
    const-string/jumbo v19, "postCallAuth"

    const/16 v20, 0x1

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v14

    .line 383
    .local v14, "postCallAuth":Ljava/lang/String;
    if-eqz v14, :cond_c

    const-string/jumbo v19, "1"

    .line 384
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_23

    .line 388
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityPostCall"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 385
    :cond_23
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityPostCall"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v14    # "postCallAuth":Ljava/lang/String;
    :cond_24
    const-string/jumbo v19, "callComposerTimerIdle"

    const/16 v20, 0x1

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, "callComposerTimerIdle":Ljava/lang/String;
    if-eqz v6, :cond_d

    .line 399
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CallComposerTimerIdle"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6    # "callComposerTimerIdle":Ljava/lang/String;
    :cond_25
    const-string/jumbo v19, "beIPVoiceCallAuth"

    const/16 v20, 0x1

    .line 425
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "beIPVoiceCallAuth":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-nez v19, :cond_26

    .line 431
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 432
    .local v17, "value":I
    rem-int/lit8 v19, v17, 0x10

    if-eqz v19, :cond_27

    .line 437
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityIPVoiceCall"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "beIPVoiceCallAuth"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 429
    .end local v17    # "value":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    const-string/jumbo v20, "node name = beIPVoiceCallAuth"

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 433
    .restart local v17    # "value":I
    :cond_27
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityIPVoiceCall"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v5    # "beIPVoiceCallAuth":Ljava/lang/String;
    .end local v17    # "value":I
    :cond_28
    const-string/jumbo v19, "beIPVideoCallAuth"

    const/16 v20, 0x1

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "beIPVideoCallAuth":Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-nez v19, :cond_29

    .line 455
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 456
    .restart local v17    # "value":I
    rem-int/lit8 v19, v17, 0x10

    if-eqz v19, :cond_2a

    .line 461
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityIPVideoCall"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_5
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "beIPVideoCallAuth"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 453
    .end local v17    # "value":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    const-string/jumbo v20, "node name = beIPVideoCallAuth"

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 457
    .restart local v17    # "value":I
    :cond_2a
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "CapabilityIPVideoCall"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v4    # "beIPVideoCallAuth":Ljava/lang/String;
    .end local v17    # "value":I
    :cond_2b
    const-string/jumbo v19, "allowRCSExtensions"

    const/16 v20, 0x1

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "allowExtensions":Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v19

    if-nez v19, :cond_2c

    :goto_6
    const-string/jumbo v19, "1"

    .line 479
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2d

    .line 484
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "AllowRcsExtensions"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 477
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v19, v0

    const-string/jumbo v20, "node name = allowRCSExtensions"

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 480
    :cond_2d
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v19

    const-string/jumbo v20, "AllowRcsExtensions"

    sget-object v21, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual/range {v19 .. v21}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private parseSupl(Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .local v2, "textMaxLength":Ljava/lang/String;
    const/4 v1, 0x0

    .line 881
    .local v1, "locInfoMaxValidTime":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 884
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 886
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 911
    .end local v1    # "locInfoMaxValidTime":Ljava/lang/String;
    .end local v2    # "textMaxLength":Ljava/lang/String;
    :cond_0
    return-void

    .line 882
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "locInfoMaxValidTime":Ljava/lang/String;
    .restart local v2    # "textMaxLength":Ljava/lang/String;
    :cond_1
    return-void

    .line 891
    .end local v1    # "locInfoMaxValidTime":Ljava/lang/String;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v2, "textMaxLength":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    const-string/jumbo v4, "MaxGeolocLabelLength"

    invoke-virtual {v3, v4, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .end local v2    # "textMaxLength":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 888
    :cond_3
    if-eqz v2, :cond_5

    .line 897
    :goto_1
    if-eqz v1, :cond_6

    .line 908
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "TextMaxLength"

    .line 889
    invoke-direct {p0, v3, v0, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 890
    .restart local v2    # "textMaxLength":Ljava/lang/String;
    if-nez v2, :cond_2

    goto :goto_1

    .end local v2    # "textMaxLength":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, "LocInfoMaxValidTime"

    .line 898
    invoke-direct {p0, v3, v0, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "locInfoMaxValidTime":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 901
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    const-string/jumbo v4, "GeolocExpirationTime"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseTermsMessage(Lorg/w3c/dom/Node;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .local v6, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "acceptBtn":Ljava/lang/String;
    const/4 v4, 0x0

    .line 602
    .local v4, "rejectBtn":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 605
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 607
    .local v2, "childnode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_3

    .line 641
    .end local v0    # "acceptBtn":Ljava/lang/String;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "rejectBtn":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_b

    move v1, v7

    .line 642
    .local v1, "acceptBtnFlag":Z
    :goto_0
    if-nez v4, :cond_c

    move v5, v7

    .line 643
    .local v5, "rejectBtnFlag":Z
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 647
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/sonymobile/rcs/service/StartService;->setUserMessageAccepted(Landroid/content/Context;Z)V

    .line 649
    :goto_3
    return-void

    .line 603
    .end local v1    # "acceptBtnFlag":Z
    .end local v2    # "childnode":Lorg/w3c/dom/Node;
    .end local v5    # "rejectBtnFlag":Z
    .restart local v0    # "acceptBtn":Ljava/lang/String;
    .restart local v3    # "message":Ljava/lang/String;
    .restart local v4    # "rejectBtn":Ljava/lang/String;
    .restart local v6    # "title":Ljava/lang/String;
    :cond_1
    return-void

    .line 612
    .end local v0    # "acceptBtn":Ljava/lang/String;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "rejectBtn":Ljava/lang/String;
    .restart local v2    # "childnode":Lorg/w3c/dom/Node;
    .local v6, "title":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-virtual {v8, v6}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->setTitle(Ljava/lang/String;)V

    .line 638
    .end local v6    # "title":Ljava/lang/String;
    :goto_4
    if-eqz v2, :cond_0

    .line 609
    :cond_3
    if-eqz v6, :cond_7

    .line 616
    :goto_5
    if-eqz v3, :cond_8

    .line 623
    :cond_4
    if-eqz v0, :cond_9

    .line 630
    :cond_5
    if-eqz v4, :cond_a

    .line 637
    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_4

    :cond_7
    const-string/jumbo v8, "title"

    .line 610
    invoke-direct {p0, v8, v2, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v6

    .line 611
    .restart local v6    # "title":Ljava/lang/String;
    if-nez v6, :cond_2

    goto :goto_5

    .end local v6    # "title":Ljava/lang/String;
    :cond_8
    const-string/jumbo v8, "message"

    .line 617
    invoke-direct {p0, v8, v2, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "message":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 619
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-virtual {v8, v3}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_4

    .end local v3    # "message":Ljava/lang/String;
    :cond_9
    const-string/jumbo v8, "Accept_btn"

    .line 624
    invoke-direct {p0, v8, v2, v9}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "acceptBtn":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 626
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-virtual {v8, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->setAcceptBtn(Ljava/lang/String;)V

    goto :goto_4

    .end local v0    # "acceptBtn":Ljava/lang/String;
    :cond_a
    const-string/jumbo v8, "Reject_btn"

    .line 631
    invoke-direct {p0, v8, v2, v9}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 632
    .local v4, "rejectBtn":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 633
    iget-object v8, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-virtual {v8, v4}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->setRejectBtn(Ljava/lang/String;)V

    goto :goto_4

    .end local v4    # "rejectBtn":Ljava/lang/String;
    :cond_b
    const-string/jumbo v8, "1"

    .line 641
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .restart local v1    # "acceptBtnFlag":Z
    :cond_c
    const-string/jumbo v7, "1"

    .line 642
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 643
    .restart local v5    # "rejectBtnFlag":Z
    :cond_d
    if-eqz v1, :cond_f

    .line 644
    :cond_e
    sput-boolean v9, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isDisplayMessageAvailable:Z

    .line 645
    invoke-direct {p0, v6, v3, v1, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->showUserMessage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 643
    :cond_f
    if-nez v5, :cond_e

    goto :goto_2
.end method

.method private parseToken(Lorg/w3c/dom/Node;)V
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, "token":Ljava/lang/String;
    const/4 v1, 0x0

    .line 505
    .local v1, "validity":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 508
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 510
    .local v2, "versionchild":Lorg/w3c/dom/Node;
    if-nez v2, :cond_4

    .line 542
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "validity":Ljava/lang/String;
    :cond_0
    return-void

    .line 506
    .end local v2    # "versionchild":Lorg/w3c/dom/Node;
    .restart local v0    # "token":Ljava/lang/String;
    .restart local v1    # "validity":Ljava/lang/String;
    :cond_1
    return-void

    .line 515
    .end local v1    # "validity":Ljava/lang/String;
    .local v0, "token":Ljava/lang/String;
    .restart local v2    # "versionchild":Lorg/w3c/dom/Node;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->setToken(Ljava/lang/String;)V

    .line 516
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_7

    .line 540
    .end local v0    # "token":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v2, :cond_0

    .line 512
    :cond_4
    if-eqz v0, :cond_6

    .line 522
    :goto_1
    if-eqz v1, :cond_8

    .line 539
    :cond_5
    :goto_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "token"

    .line 513
    invoke-direct {p0, v3, v2, v6}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v0

    .line 514
    .restart local v0    # "token":Ljava/lang/String;
    if-nez v0, :cond_2

    goto :goto_1

    .line 517
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "token":Ljava/lang/String;
    :cond_8
    const-string/jumbo v3, "validity"

    const/4 v4, 0x1

    .line 523
    invoke-direct {p0, v3, v2, v4}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "validity":Ljava/lang/String;
    if-nez v1, :cond_9

    .line 532
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->setTokenValidity(J)V

    .line 533
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    const-string/jumbo v4, "TokenValidity"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 535
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "No validiaty for token"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 525
    :cond_9
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->setTokenValidity(J)V

    .line 526
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    const-string/jumbo v4, "TokenValidity"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token validity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parseTransportProtocol(Lorg/w3c/dom/Node;)V
    .locals 11
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .local v3, "psSignalling":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "wifiSignalling":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "wifiMedia":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "wifiRtMedia":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "psMedia":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1493
    .local v2, "psRtMedia":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1496
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1498
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 1598
    .end local v1    # "psMedia":Ljava/lang/String;
    .end local v2    # "psRtMedia":Ljava/lang/String;
    .end local v3    # "psSignalling":Ljava/lang/String;
    .end local v4    # "wifiMedia":Ljava/lang/String;
    .end local v5    # "wifiRtMedia":Ljava/lang/String;
    .end local v6    # "wifiSignalling":Ljava/lang/String;
    :cond_0
    return-void

    .line 1494
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "psMedia":Ljava/lang/String;
    .restart local v2    # "psRtMedia":Ljava/lang/String;
    .restart local v3    # "psSignalling":Ljava/lang/String;
    .restart local v4    # "wifiMedia":Ljava/lang/String;
    .restart local v5    # "wifiRtMedia":Ljava/lang/String;
    .restart local v6    # "wifiSignalling":Ljava/lang/String;
    :cond_1
    return-void

    .line 1504
    .end local v1    # "psMedia":Ljava/lang/String;
    .end local v2    # "psRtMedia":Ljava/lang/String;
    .end local v4    # "wifiMedia":Ljava/lang/String;
    .end local v5    # "wifiRtMedia":Ljava/lang/String;
    .end local v6    # "wifiSignalling":Ljava/lang/String;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v3, "psSignalling":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SipDefaultProtocolForMobile"

    const-string/jumbo v9, "UDP"

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    .end local v3    # "psSignalling":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v0, :cond_0

    .line 1500
    :cond_4
    if-eqz v3, :cond_b

    .line 1520
    :cond_5
    if-eqz v6, :cond_d

    .line 1540
    :cond_6
    if-eqz v4, :cond_10

    .line 1554
    :cond_7
    if-eqz v5, :cond_12

    .line 1568
    :cond_8
    if-eqz v1, :cond_14

    .line 1582
    :cond_9
    if-eqz v2, :cond_16

    .line 1595
    :cond_a
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_b
    const-string/jumbo v7, "psSignalling"

    .line 1501
    invoke-direct {p0, v7, v0, v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 1502
    .restart local v3    # "psSignalling":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string/jumbo v7, "SIPoUDP"

    .line 1503
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "SIPoTCP"

    .line 1507
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "SIPoTLS"

    .line 1511
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1512
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SipDefaultProtocolForMobile"

    const-string/jumbo v9, "TLS"

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1508
    :cond_c
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SipDefaultProtocolForMobile"

    const-string/jumbo v9, "TCP"

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "psSignalling":Ljava/lang/String;
    :cond_d
    const-string/jumbo v7, "wifiSignalling"

    .line 1521
    invoke-direct {p0, v7, v0, v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v6

    .line 1522
    .local v6, "wifiSignalling":Ljava/lang/String;
    if-eqz v6, :cond_6

    const-string/jumbo v7, "SIPoUDP"

    .line 1523
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string/jumbo v7, "SIPoTCP"

    .line 1527
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string/jumbo v7, "SIPoTLS"

    .line 1531
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1532
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SipDefaultProtocolForWifi"

    const-string/jumbo v9, "TLS"

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1524
    :cond_e
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SipDefaultProtocolForWifi"

    const-string/jumbo v9, "UDP"

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1528
    :cond_f
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SipDefaultProtocolForWifi"

    const-string/jumbo v9, "TCP"

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "wifiSignalling":Ljava/lang/String;
    :cond_10
    const-string/jumbo v7, "wifiMedia"

    .line 1541
    invoke-direct {p0, v7, v0, v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 1542
    .local v4, "wifiMedia":Ljava/lang/String;
    if-eqz v4, :cond_7

    const-string/jumbo v7, "MSRP"

    .line 1543
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string/jumbo v7, "MSRPoTLS"

    .line 1546
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1547
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SecureMsrpOverWifi"

    sget-object v9, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1544
    :cond_11
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SecureMsrpOverWifi"

    sget-object v9, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "wifiMedia":Ljava/lang/String;
    :cond_12
    const-string/jumbo v7, "wifiRTMedia"

    .line 1555
    invoke-direct {p0, v7, v0, v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v5

    .line 1556
    .local v5, "wifiRtMedia":Ljava/lang/String;
    if-eqz v5, :cond_8

    const-string/jumbo v7, "RTP"

    .line 1557
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string/jumbo v7, "SRTP"

    .line 1560
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1561
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SecureRtpOverWifi"

    sget-object v9, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1558
    :cond_13
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SecureRtpOverWifi"

    sget-object v9, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "wifiRtMedia":Ljava/lang/String;
    :cond_14
    const-string/jumbo v7, "psMedia"

    .line 1569
    invoke-direct {p0, v7, v0, v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, "psMedia":Ljava/lang/String;
    if-eqz v1, :cond_9

    const-string/jumbo v7, "MSRP"

    .line 1571
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "MSRPoTLS"

    .line 1574
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1575
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SecureMsrpOverMobile"

    sget-object v9, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1572
    :cond_15
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SecureMsrpOverMobile"

    sget-object v9, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "psMedia":Ljava/lang/String;
    :cond_16
    const-string/jumbo v7, "psRTMedia"

    .line 1583
    invoke-direct {p0, v7, v0, v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 1584
    .local v2, "psRtMedia":Ljava/lang/String;
    if-eqz v2, :cond_a

    const-string/jumbo v7, "RTP"

    .line 1585
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string/jumbo v7, "SRTP"

    .line 1588
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1589
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SecureRtpOverMobile"

    sget-object v9, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1586
    :cond_17
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v7

    const-string/jumbo v8, "SecureRtpOverMobile"

    sget-object v9, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parseUx(Lorg/w3c/dom/Node;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .local v4, "messagingUX":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "e2eIPCallLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "breakoutIPCallLabel":Ljava/lang/String;
    const/4 v3, 0x0

    .line 990
    .local v3, "e2eVoiceCapabilityHandling":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 993
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 995
    .local v1, "childnode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_3

    .line 1042
    .end local v0    # "breakoutIPCallLabel":Ljava/lang/String;
    .end local v2    # "e2eIPCallLabel":Ljava/lang/String;
    .end local v3    # "e2eVoiceCapabilityHandling":Ljava/lang/String;
    .end local v4    # "messagingUX":Ljava/lang/String;
    :cond_0
    return-void

    .line 991
    .end local v1    # "childnode":Lorg/w3c/dom/Node;
    .restart local v0    # "breakoutIPCallLabel":Ljava/lang/String;
    .restart local v2    # "e2eIPCallLabel":Ljava/lang/String;
    .restart local v3    # "e2eVoiceCapabilityHandling":Ljava/lang/String;
    .restart local v4    # "messagingUX":Ljava/lang/String;
    :cond_1
    return-void

    .line 1000
    .end local v0    # "breakoutIPCallLabel":Ljava/lang/String;
    .end local v2    # "e2eIPCallLabel":Ljava/lang/String;
    .end local v3    # "e2eVoiceCapabilityHandling":Ljava/lang/String;
    .restart local v1    # "childnode":Lorg/w3c/dom/Node;
    .local v4, "messagingUX":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "ConvergentMessagingUx"

    invoke-virtual {v5, v6, v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .end local v4    # "messagingUX":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 997
    :cond_3
    if-eqz v4, :cond_6

    .line 1005
    :goto_1
    if-eqz v2, :cond_7

    .line 1014
    :cond_4
    if-eqz v0, :cond_8

    :cond_5
    const-string/jumbo v5, ")"

    .line 1024
    invoke-direct {p0, v5, v1, v9}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 1025
    .local v3, "e2eVoiceCapabilityHandling":Ljava/lang/String;
    if-nez v3, :cond_9

    .line 1037
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .end local v3    # "e2eVoiceCapabilityHandling":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "messagingUX"

    .line 998
    invoke-direct {p0, v5, v1, v9}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 999
    .restart local v4    # "messagingUX":Ljava/lang/String;
    if-nez v4, :cond_2

    goto :goto_1

    .end local v4    # "messagingUX":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "e2eIPCallLabel"

    .line 1006
    invoke-direct {p0, v5, v1, v8}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, "e2eIPCallLabel":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1008
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "e2eIPCallLabel"

    invoke-virtual {v5, v6, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "e2eIPCallLabel":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "breakoutIPCallLabel"

    .line 1015
    invoke-direct {p0, v5, v1, v8}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "breakoutIPCallLabel":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1018
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "breakoutIPCallLabel"

    invoke-virtual {v5, v6, v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "breakoutIPCallLabel":Ljava/lang/String;
    .restart local v3    # "e2eVoiceCapabilityHandling":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "0"

    .line 1026
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1031
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "e2eVoiceCapabilityHandling"

    sget-object v7, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1027
    :cond_a
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "e2eVoiceCapabilityHandling"

    sget-object v7, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseVersion(Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .local v1, "version":Ljava/lang/String;
    const/4 v0, 0x0

    .line 552
    .local v0, "validity":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 555
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 557
    .local v2, "versionchild":Lorg/w3c/dom/Node;
    if-nez v2, :cond_4

    .line 576
    .end local v0    # "validity":Ljava/lang/String;
    .end local v1    # "version":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_8

    .line 579
    :cond_1
    :goto_0
    return-void

    .line 553
    .end local v2    # "versionchild":Lorg/w3c/dom/Node;
    .restart local v0    # "validity":Ljava/lang/String;
    .restart local v1    # "version":Ljava/lang/String;
    :cond_2
    return-void

    .line 562
    .end local v0    # "validity":Ljava/lang/String;
    .local v1, "version":Ljava/lang/String;
    .restart local v2    # "versionchild":Lorg/w3c/dom/Node;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->setVersion(Ljava/lang/String;)V

    .line 574
    .end local v1    # "version":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    .line 559
    :cond_4
    if-eqz v1, :cond_6

    .line 566
    :goto_2
    if-eqz v0, :cond_7

    .line 573
    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "version"

    const/4 v4, 0x0

    .line 560
    invoke-direct {p0, v3, v2, v4}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 561
    .restart local v1    # "version":Ljava/lang/String;
    if-nez v1, :cond_3

    goto :goto_2

    .end local v1    # "version":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "validity"

    const/4 v4, 0x1

    .line 567
    invoke-direct {p0, v3, v2, v4}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "validity":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 569
    iget-object v3, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->setValidity(J)V

    goto :goto_1

    .line 576
    .end local v0    # "validity":Ljava/lang/String;
    :cond_8
    if-eqz v0, :cond_1

    .line 577
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->setVersionAndValidity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseXDMS(Lorg/w3c/dom/Node;)V
    .locals 8
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "revokeTimer":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "xcapRootURI":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "xcapAuthenticationUsername":Ljava/lang/String;
    const/4 v2, 0x0

    .line 823
    .local v2, "xcapAuthenticationSecret":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 826
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 828
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 871
    .end local v1    # "revokeTimer":Ljava/lang/String;
    .end local v2    # "xcapAuthenticationSecret":Ljava/lang/String;
    .end local v3    # "xcapAuthenticationUsername":Ljava/lang/String;
    .end local v4    # "xcapRootURI":Ljava/lang/String;
    :cond_0
    return-void

    .line 824
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v1    # "revokeTimer":Ljava/lang/String;
    .restart local v2    # "xcapAuthenticationSecret":Ljava/lang/String;
    .restart local v3    # "xcapAuthenticationUsername":Ljava/lang/String;
    .restart local v4    # "xcapRootURI":Ljava/lang/String;
    :cond_1
    return-void

    .line 833
    .end local v2    # "xcapAuthenticationSecret":Ljava/lang/String;
    .end local v3    # "xcapAuthenticationUsername":Ljava/lang/String;
    .end local v4    # "xcapRootURI":Ljava/lang/String;
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .local v1, "revokeTimer":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "RevokeTimeout"

    invoke-virtual {v5, v6, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .end local v1    # "revokeTimer":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 830
    :cond_3
    if-eqz v1, :cond_7

    .line 839
    :goto_1
    if-eqz v4, :cond_8

    .line 848
    :cond_4
    if-eqz v3, :cond_9

    .line 858
    :cond_5
    if-eqz v2, :cond_a

    .line 868
    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string/jumbo v5, "RevokeTimer"

    const/4 v6, 0x1

    .line 831
    invoke-direct {p0, v5, v0, v6}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v1

    .line 832
    .restart local v1    # "revokeTimer":Ljava/lang/String;
    if-nez v1, :cond_2

    goto :goto_1

    .end local v1    # "revokeTimer":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "XCAPRootURI"

    .line 840
    invoke-direct {p0, v5, v0, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v4

    .line 841
    .local v4, "xcapRootURI":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 842
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "XdmServerAddr"

    invoke-virtual {v5, v6, v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v4    # "xcapRootURI":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "XCAPAuthenticationUserName"

    .line 849
    invoke-direct {p0, v5, v0, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "xcapAuthenticationUsername":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 852
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "XdmServerLogin"

    invoke-virtual {v5, v6, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "xcapAuthenticationUsername":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, "XCAPAuthenticationSecret"

    .line 859
    invoke-direct {p0, v5, v0, v7}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->getValueByParamName(Ljava/lang/String;Lorg/w3c/dom/Node;I)Ljava/lang/String;

    move-result-object v2

    .line 861
    .local v2, "xcapAuthenticationSecret":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 862
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    const-string/jumbo v6, "XdmServerPassword"

    invoke-virtual {v5, v6, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setVersionAndValidity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "validity"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "-3"

    .line 585
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    const-string/jumbo v1, "Validity"

    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->writeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " validity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setProvisioningVersion(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showUserMessage(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "acceptButton"    # Z
    .param p4, "rejectButton"    # Z

    .prologue
    .line 2449
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2450
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    const-class v3, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    .line 2452
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2454
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "savedInstance":Landroid/os/Bundle;
    const-string/jumbo v3, "accept_btn_key"

    .line 2456
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "reject_btn_key"

    .line 2457
    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "title_key"

    .line 2458
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "message_key"

    .line 2459
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "com.sonymobile.rcs.provisioning.DIALOG_DATA"

    .line 2461
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 2464
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x800000

    .line 2465
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2467
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2468
    return-void
.end method


# virtual methods
.method public getProvisioningInfo()Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    return-object v0
.end method

.method public parse(I)Z
    .locals 14
    .param p1, "gsmaRelease"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 111
    :try_start_0
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_2

    .line 114
    :goto_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->content:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    .local v5, "mInputStream":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 116
    .local v2, "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 117
    .local v1, "dbuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 118
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 v5, 0x0

    .line 120
    .local v5, "mInputStream":Ljava/io/ByteArrayInputStream;
    if-eqz v3, :cond_3

    .line 127
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_5

    .line 131
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 132
    .local v7, "rootnode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 133
    .local v0, "childnode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_6

    const/4 v6, 0x0

    .line 142
    .local v6, "nodeNumber":I
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "characteristic"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 198
    :cond_1
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    if-eq v6, v13, :cond_1b

    .line 208
    :goto_3
    return v13

    .line 112
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .end local v1    # "dbuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "mInputStream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "nodeNumber":I
    .end local v7    # "rootnode":Lorg/w3c/dom/Node;
    :cond_2
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Start the parsing of content"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v4

    .line 210
    .local v4, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 213
    :goto_4
    return v12

    .line 121
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "dbuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "mInputStream":Ljava/io/ByteArrayInputStream;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_4

    .line 124
    :goto_5
    return v12

    .line 122
    :cond_4
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "The document is null"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 128
    :cond_5
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Parsed Doc ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    .restart local v0    # "childnode":Lorg/w3c/dom/Node;
    .restart local v7    # "rootnode":Lorg/w3c/dom/Node;
    :cond_6
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_7

    .line 137
    :goto_6
    return v12

    .line 135
    :cond_7
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "The first chid node is null"

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 143
    .restart local v6    # "nodeNumber":I
    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-lez v9, :cond_1

    .line 144
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "type"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 145
    .local v8, "typenode":Lorg/w3c/dom/Node;
    if-eqz v8, :cond_1

    .line 146
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_9

    .line 150
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 151
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "VERS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 153
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "MSG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 169
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "APPLICATION"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 171
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "IMS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 173
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "PRESENCE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 175
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "XDMS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 177
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "IM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 179
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "CAPDISCOVERY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 181
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "APN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 183
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "TOKEN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 185
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "OTHER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 187
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SERVICES"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 189
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SUPL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 191
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SERVICEPROVIDEREXT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 193
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseServiceProviderExt(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 147
    :cond_9
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Node "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " with type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 152
    :cond_a
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseVersion(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 159
    :cond_b
    invoke-static {}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isFirstLaunch()Z

    move-result v9

    if-nez v9, :cond_e

    :cond_c
    const-string/jumbo v9, "0"

    iget-object v10, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    :cond_d
    const-string/jumbo v9, "0"

    iget-object v10, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getPrevProvVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 167
    :goto_8
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseTermsMessage(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v9, "0"

    .line 159
    iget-object v10, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->provisioningInfo:Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;

    invoke-virtual {v10}, Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_8

    :cond_f
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getPrevProvVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_d

    goto :goto_8

    .line 170
    :cond_10
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseApplication(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 172
    :cond_11
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseIMS(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 174
    :cond_12
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parsePresence(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 176
    :cond_13
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseXDMS(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 178
    :cond_14
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseIM(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 180
    :cond_15
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseCapabilityDiscovery(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 182
    :cond_16
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseAPN(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 184
    :cond_17
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseToken(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 186
    :cond_18
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseOther(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 188
    :cond_19
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseServices(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 190
    :cond_1a
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->parseSupl(Lorg/w3c/dom/Node;)V

    goto/16 :goto_2

    .line 206
    .end local v8    # "typenode":Lorg/w3c/dom/Node;
    :cond_1b
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setGsmaRelease(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 211
    .end local v0    # "childnode":Lorg/w3c/dom/Node;
    .end local v1    # "dbuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "mInputStream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "nodeNumber":I
    .end local v7    # "rootnode":Lorg/w3c/dom/Node;
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_1c
    iget-object v9, p0, Lcom/sonymobile/rcs/provisioning/ProvisioningParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v10, "Can\'t parse content"

    invoke-virtual {v9, v10, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method
