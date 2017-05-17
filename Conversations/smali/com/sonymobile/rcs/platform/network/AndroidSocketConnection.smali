.class public Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;
.super Ljava/lang/Object;
.source "AndroidSocketConnection.java"

# interfaces
.implements Lcom/sonymobile/rcs/platform/network/SocketConnection;


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 49
    iput-object p1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 50
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 89
    iput-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Connection not openned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Connection not openned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Connection not openned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Connection not openned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;I)V
    .locals 1
    .param p1, "remoteAddr"    # Ljava/lang/String;
    .param p2, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 61
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Connection not openned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 205
    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;->socket:Ljava/net/Socket;

    .line 70
    return-void
.end method
