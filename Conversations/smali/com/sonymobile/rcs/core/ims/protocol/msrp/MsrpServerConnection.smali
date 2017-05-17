.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;
.super Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
.source "MsrpServerConnection.java"


# instance fields
.field private localPort:I

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private socketServer:Lcom/sonymobile/rcs/platform/network/SocketServerConnection;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;I)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .param p2, "localPort"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->socketServer:Lcom/sonymobile/rcs/platform/network/SocketServerConnection;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 58
    iput p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->localPort:I

    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->close()V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->socketServer:Lcom/sonymobile/rcs/platform/network/SocketServerConnection;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->socketServer:Lcom/sonymobile/rcs/platform/network/SocketServerConnection;

    invoke-interface {v0}, Lcom/sonymobile/rcs/platform/network/SocketServerConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSocketConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->createSocketServerConnection()Lcom/sonymobile/rcs/platform/network/SocketServerConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->socketServer:Lcom/sonymobile/rcs/platform/network/SocketServerConnection;

    .line 73
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->socketServer:Lcom/sonymobile/rcs/platform/network/SocketServerConnection;

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->localPort:I

    invoke-interface {v1, v2}, Lcom/sonymobile/rcs/platform/network/SocketServerConnection;->open(I)V

    .line 75
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->socketServer:Lcom/sonymobile/rcs/platform/network/SocketServerConnection;

    invoke-interface {v1}, Lcom/sonymobile/rcs/platform/network/SocketServerConnection;->acceptConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;

    move-result-object v0

    .line 80
    .local v0, "socket":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    :goto_2
    return-object v0

    .line 69
    .end local v0    # "socket":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Open server socket at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->localPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Wait client connection"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    .restart local v0    # "socket":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Socket connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->getRemoteAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->getRemotePort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method
