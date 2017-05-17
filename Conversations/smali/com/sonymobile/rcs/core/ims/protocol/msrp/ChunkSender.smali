.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;
.super Ljava/lang/Thread;
.source "ChunkSender.java"


# instance fields
.field private buffer:Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;

.field private connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private stream:Ljava/io/OutputStream;

.field private terminated:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "connection"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
    .param p2, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 51
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->buffer:Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->terminated:Z

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 70
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    .line 71
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->stream:Ljava/io/OutputStream;

    .line 72
    return-void
.end method

.method private declared-synchronized writeData([B)V
    .locals 1
    .param p1, "chunk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 173
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 174
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    const/4 v1, 0x0

    .line 109
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->buffer:Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->getMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v1, v0

    .local v1, "chunk":[B
    if-nez v1, :cond_2

    .line 135
    .end local v1    # "chunk":[B
    :cond_0
    :goto_2
    return-void

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Sender is started"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    iget-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->terminated:Z

    if-nez v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_5

    .line 128
    :goto_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getMsrpEventListener()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->Unknown:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-interface {v3, v6, v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    goto :goto_2

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "chunk":[B
    :cond_2
    :try_start_1
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    if-nez v3, :cond_3

    .line 114
    :goto_4
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->writeData([B)V

    goto :goto_1

    .line 112
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ">>> Send MSRP message:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 118
    .end local v1    # "chunk":[B
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Chunk sender thread terminated"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Chunk sender has failed"

    invoke-virtual {v3, v4, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public sendChunk([B)V
    .locals 1
    .param p1, "chunk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->isFailureReportRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->sendChunkImmediately([B)V

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->buffer:Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->putMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendChunkImmediately([B)V
    .locals 3
    .param p1, "chunk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    sget-boolean v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    if-nez v0, :cond_0

    .line 162
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->writeData([B)V

    .line 163
    return-void

    .line 159
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>> Send MSRP message:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->terminated:Z

    .line 88
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->buffer:Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->unblockRead()V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkSender;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Sender is terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
