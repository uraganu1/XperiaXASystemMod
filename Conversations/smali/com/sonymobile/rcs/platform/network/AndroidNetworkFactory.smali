.class public Lcom/sonymobile/rcs/platform/network/AndroidNetworkFactory;
.super Lcom/sonymobile/rcs/platform/network/NetworkFactory;
.source "AndroidNetworkFactory.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidNetworkFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method


# virtual methods
.method public createDatagramConnection()Lcom/sonymobile/rcs/platform/network/DatagramConnection;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;

    invoke-direct {v0}, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;-><init>()V

    return-object v0
.end method

.method public createSecureSocketClientConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;

    invoke-direct {v0}, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;-><init>()V

    return-object v0
.end method

.method public createSimpleSecureSocketClientConnection(Ljava/lang/String;)Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .locals 1
    .param p1, "fingerprint"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/platform/network/AndroidSecureSocketConnection;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSocketClientConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;

    invoke-direct {v0}, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;-><init>()V

    return-object v0
.end method

.method public createSocketServerConnection()Lcom/sonymobile/rcs/platform/network/SocketServerConnection;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;

    invoke-direct {v0}, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;-><init>()V

    return-object v0
.end method

.method public getLocalIpAddress(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "dnsEntry"    # Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
    .param p2, "type"    # I
    .param p3, "ifaceName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 64
    .local v5, "ipAddress":Ljava/lang/String;
    :try_start_0
    iget-object v8, p1, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    invoke-static {v8}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v6

    .line 65
    .local v6, "isIpv4":Z
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 67
    .end local v5    # "ipAddress":Ljava/lang/String;
    .local v2, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    if-nez v2, :cond_2

    .line 101
    .end local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v6    # "isIpv4":Z
    :cond_1
    :goto_0
    return-object v5

    .line 67
    .restart local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v6    # "isIpv4":Z
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 68
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    .line 69
    .local v7, "netIntf":Ljava/net/NetworkInterface;
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 70
    .local v0, "addr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 72
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/IpAddressUtils;->extractHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "ipAddress":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v6, :cond_3

    .line 80
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/IpAddressUtils;->extractHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .local v4, "intfName":Ljava/lang/String;
    const/4 v8, 0x1

    .line 83
    if-eq p2, v8, :cond_5

    .line 86
    :cond_4
    if-nez p2, :cond_3

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "wlan"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 89
    iget-object v8, p0, Lcom/sonymobile/rcs/platform/network/AndroidNetworkFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "iface: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " IP: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 91
    return-object v5

    :cond_5
    const-string/jumbo v8, "wlan"

    .line 83
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 85
    return-object v5

    .line 100
    .end local v0    # "addr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intfName":Ljava/lang/String;
    .end local v5    # "ipAddress":Ljava/lang/String;
    .end local v6    # "isIpv4":Z
    .end local v7    # "netIntf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sonymobile/rcs/platform/network/AndroidNetworkFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    iget-object v8, p0, Lcom/sonymobile/rcs/platform/network/AndroidNetworkFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "getLocalIpAddress failed with "

    invoke-virtual {v8, v9, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
