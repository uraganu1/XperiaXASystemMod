.class public Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;
.super Ljava/lang/Object;
.source "AndroidSocketServerConnection.java"

# interfaces
.implements Lcom/sonymobile/rcs/platform/network/SocketServerConnection;


# instance fields
.field private acceptSocket:Ljava/net/ServerSocket;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->acceptSocket:Ljava/net/ServerSocket;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 47
    return-void
.end method


# virtual methods
.method public acceptConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->acceptSocket:Ljava/net/ServerSocket;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Connection not openned"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 83
    .local v0, "socket":Ljava/net/Socket;
    new-instance v1, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;

    invoke-direct {v1, v0}, Lcom/sonymobile/rcs/platform/network/AndroidSocketConnection;-><init>(Ljava/net/Socket;)V

    return-object v1

    .line 80
    .end local v0    # "socket":Ljava/net/Socket;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Socket serverSocket is waiting for incoming connection"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->acceptSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 67
    iput-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->acceptSocket:Ljava/net/ServerSocket;

    goto :goto_0
.end method

.method public open(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidSocketServerConnection;->acceptSocket:Ljava/net/ServerSocket;

    .line 57
    return-void
.end method
