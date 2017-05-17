.class public abstract Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
.super Ljava/lang/Object;
.source "MsrpConnection.java"


# static fields
.field public static MSRP_TRACE_ENABLED:Z


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private outputStream:Ljava/io/OutputStream;

.field private receiver:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;

.field private sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

.field private session:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

.field private socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;

    .line 57
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->outputStream:Ljava/io/OutputStream;

    .line 62
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->inputStream:Ljava/io/InputStream;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 85
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->session:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .line 86
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    if-nez v1, :cond_1

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->receiver:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;

    if-nez v1, :cond_2

    .line 169
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_4

    .line 175
    :goto_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->outputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_5

    .line 178
    :goto_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_6

    .line 187
    :cond_0
    :goto_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_7

    .line 190
    :goto_6
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->terminate()V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->receiver:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->terminate()V

    goto :goto_1

    .line 170
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Close the socket connection"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 185
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Can\'t close the socket correctly"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    .line 179
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;

    invoke-interface {v1}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 188
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Connection has been closed"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->session:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    return-object v0
.end method

.method public abstract getSocketConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSocketConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;

    .line 107
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;

    invoke-interface {v0}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->inputStream:Ljava/io/InputStream;

    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;

    invoke-interface {v0}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->outputStream:Ljava/io/OutputStream;

    .line 111
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->receiver:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;

    .line 112
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->receiver:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->start()V

    .line 115
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    .line 116
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->start()V

    .line 118
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Connection has been openned"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSocketConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;

    .line 134
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-interface {v0, v1}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->setSoTimeout(I)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;

    invoke-interface {v0}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->inputStream:Ljava/io/InputStream;

    .line 138
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->socket:Lcom/sonymobile/rcs/platform/network/SocketConnection;

    invoke-interface {v0}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->outputStream:Ljava/io/OutputStream;

    .line 141
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->receiver:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;

    .line 142
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->receiver:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->start()V

    .line 145
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    .line 146
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->start()V

    .line 148
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Connection has been openned"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendChunk([B)V
    .locals 2
    .param p1, "chunk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->sendChunk([B)V

    .line 204
    return-void

    .line 200
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v1, "Can\'t send new data chunk due to NullPointerException"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendChunkImmediately([B)V
    .locals 1
    .param p1, "chunk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sender:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->sendChunkImmediately([B)V

    .line 214
    return-void
.end method
