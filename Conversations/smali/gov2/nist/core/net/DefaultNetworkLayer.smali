.class public Lgov2/nist/core/net/DefaultNetworkLayer;
.super Ljava/lang/Object;
.source "DefaultNetworkLayer.java"

# interfaces
.implements Lgov2/nist/core/net/NetworkLayer;


# static fields
.field public static final SINGLETON:Lgov2/nist/core/net/DefaultNetworkLayer;


# instance fields
.field private sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lgov2/nist/core/net/DefaultNetworkLayer;

    invoke-direct {v0}, Lgov2/nist/core/net/DefaultNetworkLayer;-><init>()V

    sput-object v0, Lgov2/nist/core/net/DefaultNetworkLayer;->SINGLETON:Lgov2/nist/core/net/DefaultNetworkLayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Ljavax/net/ssl/SSLServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocketFactory;

    iput-object v0, p0, Lgov2/nist/core/net/DefaultNetworkLayer;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 65
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lgov2/nist/core/net/DefaultNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 66
    return-void
.end method


# virtual methods
.method public createDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    return-object v0
.end method

.method public createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;
    .locals 4
    .param p1, "port"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2, p1, p2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    return-object v2

    .line 85
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    invoke-direct {v0, p1}, Ljava/net/MulticastSocket;-><init>(I)V

    .line 86
    .local v0, "ds":Ljava/net/MulticastSocket;
    invoke-virtual {v0, p2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object v0

    .end local v0    # "ds":Ljava/net/MulticastSocket;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createSSLServerSocket(IILjava/net/InetAddress;)Ljavax/net/ssl/SSLServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lgov2/nist/core/net/DefaultNetworkLayer;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    return-object v0
.end method

.method public createSSLSocket(Ljava/net/InetAddress;I)Ljavax/net/ssl/SSLSocket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lgov2/nist/core/net/DefaultNetworkLayer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method
