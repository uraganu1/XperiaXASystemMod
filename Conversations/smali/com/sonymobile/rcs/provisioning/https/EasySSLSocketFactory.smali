.class public Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;
.super Ljava/lang/Object;
.source "EasySSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# instance fields
.field private sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method private static createEasySSLContext()Ljavax/net/ssl/SSLContext;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v2, "TLS"

    .line 51
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x1

    .line 52
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/sonymobile/rcs/provisioning/https/EasyX509TrustManager;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/provisioning/https/EasyX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-object v0

    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    return-object v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;->createEasySSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    goto :goto_0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 6
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 77
    .local v0, "connTimeout":I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v3

    .line 79
    .local v3, "soTimeout":I
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v2, "remoteAddress":Ljava/net/InetSocketAddress;
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    :goto_0
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    move-object v4, v5

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    .line 82
    .local v4, "sslsock":Ljavax/net/ssl/SSLSocket;
    if-eqz p4, :cond_2

    .line 84
    :cond_0
    if-ltz p5, :cond_3

    .line 87
    :goto_1
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 88
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v4, v1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 91
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :goto_2
    invoke-virtual {v4, v2, v0}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 92
    invoke-virtual {v4, v3}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 93
    return-object v4

    .end local v4    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_1
    move-object v5, p1

    .line 80
    goto :goto_0

    .line 82
    .restart local v4    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_2
    if-gtz p5, :cond_0

    goto :goto_2

    :cond_3
    const/4 p5, 0x0

    .line 85
    goto :goto_1
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 127
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/provisioning/https/EasySSLSocketFactory;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method
