.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;
.super Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
.source "MsrpClientConnection.java"


# instance fields
.field private announcedFingerprint:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private remoteAddress:Ljava/lang/String;

.field private remotePort:I

.field private secured:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;Ljava/lang/String;I)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .param p2, "remoteAddress"    # Ljava/lang/String;
    .param p3, "remotePort"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->secured:Z

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 68
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->remoteAddress:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->remotePort:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .param p2, "remoteAddress"    # Ljava/lang/String;
    .param p3, "remotePort"    # I
    .param p4, "secured"    # Z
    .param p5, "fingerprint"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;Ljava/lang/String;I)V

    .line 100
    iput-boolean p4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->secured:Z

    .line 101
    iput-object p5, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->announcedFingerprint:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public getSocketConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->secured:Z

    if-nez v1, :cond_1

    .line 134
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->createSocketClientConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;

    move-result-object v0

    .line 136
    .local v0, "socket":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->remoteAddress:Ljava/lang/String;

    iget v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->remotePort:I

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->open(Ljava/lang/String;I)V

    .line 137
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 141
    :goto_2
    return-object v0

    .line 121
    .end local v0    # "socket":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Open client socket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->remoteAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->remotePort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->announcedFingerprint:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 131
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->createSecureSocketClientConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;

    move-result-object v0

    .restart local v0    # "socket":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    goto :goto_1

    .line 128
    .end local v0    # "socket":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->announcedFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->createSimpleSecureSocketClientConnection(Ljava/lang/String;)Lcom/sonymobile/rcs/platform/network/SocketConnection;

    move-result-object v0

    .restart local v0    # "socket":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    goto :goto_1

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpClientConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
