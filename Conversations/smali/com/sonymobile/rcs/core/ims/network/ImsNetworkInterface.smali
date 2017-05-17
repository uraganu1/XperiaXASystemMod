.class public abstract Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
.super Ljava/lang/Object;
.source "ImsNetworkInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    }
.end annotation


# instance fields
.field private access:Lcom/sonymobile/rcs/core/access/NetworkAccess;

.field protected imsAuthentMode:Ljava/lang/String;

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private imsProxyAddr:Ljava/lang/String;

.field private imsProxyPort:I

.field protected imsProxyProtocol:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private natPublicAddress:Ljava/lang/String;

.field private natPublicPort:I

.field private natTraversal:Z

.field private registration:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

.field protected registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

.field private sip:Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;ILcom/sonymobile/rcs/core/access/NetworkAccess;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "imsModule"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .param p2, "type"    # I
    .param p3, "access"    # Lcom/sonymobile/rcs/core/access/NetworkAccess;
    .param p4, "proxyAddr"    # Ljava/lang/String;
    .param p5, "proxyPort"    # I
    .param p6, "proxyProtocol"    # Ljava/lang/String;
    .param p7, "authentMode"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->natTraversal:Z

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->natPublicAddress:Ljava/lang/String;

    const/4 v0, -0x1

    .line 150
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->natPublicPort:I

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 174
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 175
    iput p2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->type:I

    .line 176
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->access:Lcom/sonymobile/rcs/core/access/NetworkAccess;

    .line 177
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    .line 178
    iput p5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyPort:I

    .line 179
    iput-object p6, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyProtocol:Ljava/lang/String;

    .line 180
    iput-object p7, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsAuthentMode:Ljava/lang/String;

    .line 183
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;-><init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->sip:Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    .line 186
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->loadRegistrationProcedure()V

    .line 189
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;-><init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registration:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;)Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registration:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;)Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->sip:Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    return-object v0
.end method

.method private getBestDnsSRV([Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/SRVRecord;
    .locals 6
    .param p1, "records"    # [Lorg/xbill/DNS/Record;

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Lorg/xbill/DNS/SRVRecord;
    const/4 v0, 0x0

    .line 435
    .end local v1    # "result":Lorg/xbill/DNS/SRVRecord;
    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 456
    return-object v1

    .line 436
    :cond_0
    aget-object v2, p1, v0

    check-cast v2, Lorg/xbill/DNS/SRVRecord;

    .line 437
    .local v2, "srv":Lorg/xbill/DNS/SRVRecord;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 440
    :goto_1
    if-eqz v1, :cond_3

    .line 445
    invoke-virtual {v2}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v3

    invoke-virtual {v1}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 448
    invoke-virtual {v2}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v3

    invoke-virtual {v1}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 435
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SRV record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/xbill/DNS/SRVRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 442
    :cond_3
    move-object v1, v2

    .local v1, "result":Lorg/xbill/DNS/SRVRecord;
    goto :goto_2

    .line 447
    .end local v1    # "result":Lorg/xbill/DNS/SRVRecord;
    :cond_4
    move-object v1, v2

    .restart local v1    # "result":Lorg/xbill/DNS/SRVRecord;
    goto :goto_2

    .line 450
    .end local v1    # "result":Lorg/xbill/DNS/SRVRecord;
    :cond_5
    invoke-virtual {v2}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v3

    invoke-virtual {v1}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 451
    move-object v1, v2

    .restart local v1    # "result":Lorg/xbill/DNS/SRVRecord;
    goto :goto_2
.end method

.method private getDnsA(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    :goto_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DNS A lookup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/net/UnknownHostException;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    const/4 v1, 0x0

    .line 423
    return-object v1

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown host for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getDnsRequest(Ljava/lang/String;Lorg/xbill/DNS/ExtendedResolver;I)[Lorg/xbill/DNS/Record;
    .locals 9
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "resolver"    # Lorg/xbill/DNS/ExtendedResolver;
    .param p3, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 376
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 383
    :cond_0
    :goto_0
    new-instance v3, Lorg/xbill/DNS/Lookup;

    invoke-direct {v3, p1, p3}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 384
    .local v3, "lookup":Lorg/xbill/DNS/Lookup;
    invoke-virtual {v3, p2}, Lorg/xbill/DNS/Lookup;->setResolver(Lorg/xbill/DNS/Resolver;)V

    .line 385
    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 386
    .local v4, "result":[Lorg/xbill/DNS/Record;
    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->getResult()I

    move-result v0

    .line 387
    .local v0, "code":I
    if-nez v0, :cond_3

    .line 393
    :goto_1
    return-object v4

    .end local v0    # "code":I
    .end local v3    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v4    # "result":[Lorg/xbill/DNS/Record;
    :cond_1
    const/16 v5, 0x21

    .line 377
    if-eq p3, v5, :cond_2

    const/16 v5, 0x23

    .line 379
    if-ne p3, v5, :cond_0

    .line 380
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DNS NAPTR lookup for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 393
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Lorg/xbill/DNS/TextParseException;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_5

    .line 398
    :goto_2
    return-object v8

    .line 378
    .end local v2    # "e":Lorg/xbill/DNS/TextParseException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DNS SRV lookup for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 398
    :catch_1
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_6

    .line 403
    :goto_3
    return-object v8

    .line 388
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "code":I
    .restart local v3    # "lookup":Lorg/xbill/DNS/Lookup;
    .restart local v4    # "result":[Lorg/xbill/DNS/Record;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_4
    const/4 v5, 0x1

    .line 391
    invoke-static {v5}, Lorg/xbill/DNS/Lookup;->getDefaultCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xbill/DNS/Cache;->clearCache()V

    goto :goto_1

    .line 389
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Lookup error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->getErrorString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 396
    .end local v0    # "code":I
    .end local v3    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v4    # "result":[Lorg/xbill/DNS/Record;
    .restart local v2    # "e":Lorg/xbill/DNS/TextParseException;
    :cond_5
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Not a valid DNS name"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 401
    .end local v2    # "e":Lorg/xbill/DNS/TextParseException;
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Not a valid DNS type"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method protected getDnsResolvedFields()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 467
    const/4 v11, 0x1

    .line 468
    .local v11, "useDns":Z
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    const-string/jumbo v13, "\\b((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\\.|$)){4}\\b"

    invoke-virtual {v12, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 477
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    iget v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyPort:I

    const/4 v13, 0x0

    invoke-direct {v0, p0, v13, v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;-><init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;Ljava/lang/String;I)V

    .line 480
    .local v0, "dnsResolvedFields":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    :cond_0
    :goto_0
    if-nez v11, :cond_3

    .line 567
    :cond_1
    :goto_1
    iget-object v12, v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    if-eqz v12, :cond_16

    .line 578
    :goto_2
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_18

    .line 583
    :goto_3
    return-object v0

    .line 469
    .end local v0    # "dnsResolvedFields":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    :cond_2
    const/4 v11, 0x0

    .line 470
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    iget v13, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyPort:I

    invoke-direct {v0, p0, v12, v13}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;-><init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;Ljava/lang/String;I)V

    .line 472
    .restart local v0    # "dnsResolvedFields":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 473
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "IP address found instead of FQDN!"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_3
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->refresh()V

    .line 483
    new-instance v7, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v7}, Lorg/xbill/DNS/ExtendedResolver;-><init>()V

    .line 487
    .local v7, "resolver":Lorg/xbill/DNS/ExtendedResolver;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_4

    .line 493
    :goto_4
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyProtocol:Ljava/lang/String;

    const-string/jumbo v13, "UDP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 496
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyProtocol:Ljava/lang/String;

    const-string/jumbo v13, "TCP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 499
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyProtocol:Ljava/lang/String;

    const-string/jumbo v13, "TLS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 502
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v13, "Unkown SIP protocol"

    invoke-direct {v12, v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 488
    :cond_4
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Resolve IMS proxy address "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string/jumbo v8, "SIP+D2U"

    .line 505
    .local v8, "service":Ljava/lang/String;
    :goto_5
    const/4 v6, 0x0

    .line 506
    .local v6, "resolved":Z
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    const/16 v13, 0x23

    invoke-direct {p0, v12, v7, v13}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsRequest(Ljava/lang/String;Lorg/xbill/DNS/ExtendedResolver;I)[Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 507
    .local v4, "naptrRecords":[Lorg/xbill/DNS/Record;
    if-nez v4, :cond_a

    .line 533
    :cond_6
    if-nez v6, :cond_1

    .line 535
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_11

    .line 539
    :goto_6
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    const-string/jumbo v13, "_sip."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    const-string/jumbo v12, "SIPS+D2T"

    .line 542
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    .line 545
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "_sip._"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyProtocol:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "query":Ljava/lang/String;
    :goto_7
    const/16 v12, 0x21

    .line 549
    invoke-direct {p0, v5, v7, v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsRequest(Ljava/lang/String;Lorg/xbill/DNS/ExtendedResolver;I)[Lorg/xbill/DNS/Record;

    move-result-object v10

    .line 550
    .local v10, "srvRecords":[Lorg/xbill/DNS/Record;
    if-nez v10, :cond_14

    .line 557
    :cond_7
    :goto_8
    if-nez v6, :cond_1

    .line 559
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_15

    .line 562
    :goto_9
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    goto/16 :goto_1

    .end local v4    # "naptrRecords":[Lorg/xbill/DNS/Record;
    .end local v5    # "query":Ljava/lang/String;
    .end local v6    # "resolved":Z
    .end local v8    # "service":Ljava/lang/String;
    .end local v10    # "srvRecords":[Lorg/xbill/DNS/Record;
    :cond_8
    const-string/jumbo v8, "SIP+D2T"

    .line 497
    .restart local v8    # "service":Ljava/lang/String;
    goto :goto_5

    .end local v8    # "service":Ljava/lang/String;
    :cond_9
    const-string/jumbo v8, "SIPS+D2T"

    .line 500
    .restart local v8    # "service":Ljava/lang/String;
    goto :goto_5

    .line 507
    .restart local v4    # "naptrRecords":[Lorg/xbill/DNS/Record;
    .restart local v6    # "resolved":Z
    :cond_a
    array-length v12, v4

    if-lez v12, :cond_6

    .line 509
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_c

    :goto_a
    const/4 v1, 0x0

    .line 512
    .local v1, "i":I
    :goto_b
    array-length v12, v4

    if-ge v1, v12, :cond_6

    .line 513
    aget-object v3, v4, v1

    check-cast v3, Lorg/xbill/DNS/NAPTRRecord;

    .line 514
    .local v3, "naptr":Lorg/xbill/DNS/NAPTRRecord;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_d

    .line 517
    :goto_c
    if-nez v3, :cond_e

    .line 512
    :cond_b
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 510
    .end local v1    # "i":I
    .end local v3    # "naptr":Lorg/xbill/DNS/NAPTRRecord;
    :cond_c
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NAPTR records found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 515
    .restart local v1    # "i":I
    .restart local v3    # "naptr":Lorg/xbill/DNS/NAPTRRecord;
    :cond_d
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NAPTR record: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lorg/xbill/DNS/NAPTRRecord;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .line 517
    :cond_e
    invoke-virtual {v3}, Lorg/xbill/DNS/NAPTRRecord;->getService()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 519
    invoke-virtual {v3}, Lorg/xbill/DNS/NAPTRRecord;->getReplacement()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x21

    invoke-direct {p0, v12, v7, v13}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsRequest(Ljava/lang/String;Lorg/xbill/DNS/ExtendedResolver;I)[Lorg/xbill/DNS/Record;

    move-result-object v10

    .line 520
    .restart local v10    # "srvRecords":[Lorg/xbill/DNS/Record;
    if-nez v10, :cond_10

    .line 526
    :cond_f
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    .line 528
    :goto_e
    const/4 v6, 0x1

    goto :goto_d

    .line 520
    :cond_10
    array-length v12, v10

    if-lez v12, :cond_f

    .line 521
    invoke-direct {p0, v10}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getBestDnsSRV([Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/SRVRecord;

    move-result-object v9

    .line 522
    .local v9, "srvRecord":Lorg/xbill/DNS/SRVRecord;
    invoke-virtual {v9}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    .line 523
    invoke-virtual {v9}, Lorg/xbill/DNS/SRVRecord;->getPort()I

    move-result v12

    iput v12, v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->port:I

    goto :goto_e

    .line 536
    .end local v1    # "i":I
    .end local v3    # "naptr":Lorg/xbill/DNS/NAPTRRecord;
    .end local v9    # "srvRecord":Lorg/xbill/DNS/SRVRecord;
    .end local v10    # "srvRecords":[Lorg/xbill/DNS/Record;
    :cond_11
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "No NAPTR record found: use DNS SRV instead"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 540
    :cond_12
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    .restart local v5    # "query":Ljava/lang/String;
    goto/16 :goto_7

    .line 543
    .end local v5    # "query":Ljava/lang/String;
    :cond_13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "_sips._"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "TCP"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "query":Ljava/lang/String;
    goto/16 :goto_7

    .line 550
    .restart local v10    # "srvRecords":[Lorg/xbill/DNS/Record;
    :cond_14
    array-length v12, v10

    if-lez v12, :cond_7

    .line 551
    invoke-direct {p0, v10}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getBestDnsSRV([Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/SRVRecord;

    move-result-object v9

    .line 552
    .restart local v9    # "srvRecord":Lorg/xbill/DNS/SRVRecord;
    invoke-virtual {v9}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    .line 553
    invoke-virtual {v9}, Lorg/xbill/DNS/SRVRecord;->getPort()I

    move-result v12

    iput v12, v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->port:I

    .line 554
    const/4 v6, 0x1

    goto/16 :goto_8

    .line 560
    .end local v9    # "srvRecord":Lorg/xbill/DNS/SRVRecord;
    :cond_15
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "No SRV record found: use DNS A instead"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 570
    .end local v4    # "naptrRecords":[Lorg/xbill/DNS/Record;
    .end local v5    # "query":Ljava/lang/String;
    .end local v6    # "resolved":Z
    .end local v7    # "resolver":Lorg/xbill/DNS/ExtendedResolver;
    .end local v8    # "service":Ljava/lang/String;
    .end local v10    # "srvRecords":[Lorg/xbill/DNS/Record;
    :cond_16
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "imsProxyAddrResolved":Ljava/lang/String;
    if-nez v2, :cond_17

    .line 574
    new-instance v12, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;

    const-string/jumbo v13, "Proxy IP address not found"

    invoke-direct {v12, v13}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 572
    :cond_17
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    .end local v0    # "dnsResolvedFields":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    iget v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyPort:I

    invoke-direct {v0, p0, v2, v12}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;-><init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;Ljava/lang/String;I)V

    .restart local v0    # "dnsResolvedFields":Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    goto/16 :goto_2

    .line 579
    .end local v2    # "imsProxyAddrResolved":Ljava/lang/String;
    :cond_18
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SIP outbound proxy configuration: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->port:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyProtocol:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    return-object v0
.end method

.method public getNatPublicAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->natPublicAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getNatPublicPort()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->natPublicPort:I

    return v0
.end method

.method public getNetworkAccess()Lcom/sonymobile/rcs/core/access/NetworkAccess;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->access:Lcom/sonymobile/rcs/core/access/NetworkAccess;

    return-object v0
.end method

.method public getRegistrationManager()Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registration:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    return-object v0
.end method

.method public getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->sip:Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->type:I

    return v0
.end method

.method public getUserProfile()Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsAuthentMode:Ljava/lang/String;

    const-string/jumbo v2, "GIBA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/userprofile/SettingsUserProfileInterface;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/SettingsUserProfileInterface;-><init>()V

    .line 314
    .local v0, "intf":Lcom/sonymobile/rcs/core/ims/userprofile/UserProfileInterface;
    :goto_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfileInterface;->read()Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    move-result-object v1

    return-object v1

    .line 304
    .end local v0    # "intf":Lcom/sonymobile/rcs/core/ims/userprofile/UserProfileInterface;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    :goto_2
    new-instance v0, Lcom/sonymobile/rcs/core/ims/userprofile/GibaUserProfileInterface;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/GibaUserProfileInterface;-><init>()V

    .restart local v0    # "intf":Lcom/sonymobile/rcs/core/ims/userprofile/UserProfileInterface;
    goto :goto_1

    .line 305
    .end local v0    # "intf":Lcom/sonymobile/rcs/core/ims/userprofile/UserProfileInterface;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Load user profile derived from IMSI (GIBA)"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Load user profile from RCS settings database"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isBehindNat()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->natTraversal:Z

    return v0
.end method

.method public isInterfaceConfigured()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 258
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyAddr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registration:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registration:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public loadRegistrationProcedure()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsAuthentMode:Ljava/lang/String;

    const-string/jumbo v1, "GIBA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsAuthentMode:Ljava/lang/String;

    const-string/jumbo v1, "DIGEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Load GIBA authentication procedure"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 292
    :goto_2
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/HttpDigestRegistrationProcedure;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registrationProcedure:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;

    goto :goto_0

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Load HTTP Digest authentication procedure"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public register(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;)Z
    .locals 9
    .param p1, "dnsResolvedFields"    # Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    .prologue
    const/4 v8, 0x0

    .line 594
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 599
    :goto_0
    if-eqz p1, :cond_3

    .line 603
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    if-nez v0, :cond_4

    .line 608
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->sip:Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->access:Lcom/sonymobile/rcs/core/access/NetworkAccess;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/access/NetworkAccess;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    iget v3, p1, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->port:I

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsProxyProtocol:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getType()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->initStack(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 610
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->sip:Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->addSipEventListener(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registration:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->registration()Z

    move-result v7

    .line 620
    .local v7, "registered":Z
    if-nez v7, :cond_6

    .line 625
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_7

    .line 629
    :cond_1
    :goto_3
    return v7

    .line 595
    .end local v7    # "registered":Z
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Register to IMS"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->getDnsResolvedFields()Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;

    move-result-object p1

    goto :goto_1

    .line 603
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsConnectionManager()Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getImsConnectionManager()Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->updateIpAndCertificate(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 616
    :catch_0
    move-exception v6

    .line 612
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 615
    :goto_4
    return v8

    .line 613
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Can\'t instantiate the SIP stack"

    invoke-virtual {v0, v1, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 621
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "registered":Z
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IMS registration successfull"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 626
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IMS registration has failed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public registrationTerminated()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registration:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->stopRegistration()V

    .line 702
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->sip:Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->closeStack()V

    .line 703
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Registration has been terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNatPublicAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicAddress"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->natPublicAddress:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setNatPublicPort(I)V
    .locals 0
    .param p1, "publicPort"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->natPublicPort:I

    .line 250
    return-void
.end method

.method public setNatTraversal(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->natTraversal:Z

    .line 208
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$1;-><init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;)V

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$1;->start()V

    .line 688
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Unregister from IMS"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
