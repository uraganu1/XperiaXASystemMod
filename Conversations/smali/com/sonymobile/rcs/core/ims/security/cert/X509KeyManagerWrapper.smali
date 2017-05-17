.class public Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;
.super Ljava/lang/Object;
.source "X509KeyManagerWrapper.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# instance fields
.field private defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>([Ljavax/net/ssl/KeyManager;)V
    .locals 7
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 33
    move-object v0, p1

    .local v0, "arr$":[Ljavax/net/ssl/KeyManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 43
    return-void

    .line 33
    :cond_0
    aget-object v2, v0, v1

    .line 34
    .local v2, "keyManager":Ljavax/net/ssl/KeyManager;
    instance-of v4, v2, Ljavax/net/ssl/X509KeyManager;

    if-nez v4, :cond_2

    .line 33
    .end local v2    # "keyManager":Ljavax/net/ssl/KeyManager;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .restart local v2    # "keyManager":Ljavax/net/ssl/KeyManager;
    :cond_2
    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    .end local v2    # "keyManager":Ljavax/net/ssl/KeyManager;
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 36
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Choosen key manager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 10
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 48
    .local v0, "alias":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 61
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v7, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 70
    :goto_0
    return-object v0

    .line 49
    .local v0, "alias":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_3

    .line 54
    :cond_2
    if-eqz p2, :cond_0

    array-length v7, p2

    if-lez v7, :cond_0

    .line 55
    move-object v2, p2

    .local v2, "arr$":[Ljava/security/Principal;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v4, v2, v3

    .line 56
    .local v4, "issuer":Ljava/security/Principal;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "chooseClientAlias;  issuer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    .end local v2    # "arr$":[Ljava/security/Principal;
    .end local v3    # "i$":I
    .end local v4    # "issuer":Ljava/security/Principal;
    .end local v6    # "len$":I
    :cond_3
    array-length v7, p1

    if-lez v7, :cond_2

    .line 50
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v5, v1, v3

    .line 51
    .local v5, "kt":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "chooseClientAlias;  key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 65
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "kt":Ljava/lang/String;
    .end local v6    # "len$":I
    .local v0, "alias":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_5

    :goto_3
    const-string/jumbo v0, "myJoynCertificate"

    .line 68
    goto :goto_0

    .line 66
    :cond_5
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "No client certificate alias found! Fall back to default certificate."

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/security/cert/X509KeyManagerWrapper;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
