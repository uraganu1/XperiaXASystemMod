.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;
.super Ljava/lang/Thread;
.source "ChunkReceiver.java"


# instance fields
.field private buffer_length:I

.field private connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private stream:Ljava/io/InputStream;

.field private terminated:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "connection"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->terminated:Z

    const/16 v0, 0x2800

    .line 57
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->buffer_length:I

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 71
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    .line 72
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->stream:Ljava/io/InputStream;

    .line 73
    return-void
.end method

.method private readChunkedData(ILjava/lang/String;)[B
    .locals 16
    .param p1, "chunkSize"    # I
    .param p2, "endTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 396
    .local v9, "result":[B
    if-nez p1, :cond_1

    .line 407
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 408
    .local v11, "tagLength":I
    new-array v12, v11, [I

    .line 409
    .local v12, "tail":[I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->buffer_length:I

    add-int/2addr v13, v11

    add-int/lit8 v13, v13, 0x2

    new-array v2, v13, [B

    .line 412
    .local v2, "buffer":[B
    new-array v6, v11, [I

    .local v6, "match":[I
    const/4 v3, 0x0

    .line 413
    .local v3, "i":I
    :goto_0
    if-lt v3, v11, :cond_2

    const/4 v4, 0x0

    .line 418
    .local v4, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->stream:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "b":I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_3

    .line 455
    .end local v1    # "b":I
    .end local v2    # "buffer":[B
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "match":[I
    .end local v9    # "result":[B
    .end local v11    # "tagLength":I
    .end local v12    # "tail":[I
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->stream:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    .line 456
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->stream:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    .line 457
    return-object v9

    .line 397
    .restart local v9    # "result":[B
    :cond_1
    move/from16 v0, p1

    new-array v9, v0, [B

    .local v9, "result":[B
    const/4 v8, 0x0

    .local v8, "nbRead":I
    const/4 v7, -0x1

    .line 401
    .local v7, "nbData":I
    :goto_3
    move/from16 v0, p1

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->stream:Ljava/io/InputStream;

    sub-int v14, p1, v8

    invoke-virtual {v13, v9, v8, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_0

    .line 403
    add-int/2addr v8, v7

    goto :goto_3

    .line 414
    .end local v7    # "nbData":I
    .end local v8    # "nbRead":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "i":I
    .restart local v6    # "match":[I
    .local v9, "result":[B
    .restart local v11    # "tagLength":I
    .restart local v12    # "tail":[I
    :cond_2
    sub-int v13, v11, v3

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aput v13, v6, v3

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v1    # "b":I
    .restart local v4    # "j":I
    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 420
    add-int/lit8 v15, v11, -0x1

    invoke-static {v12, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    .line 421
    aput v1, v12, v13

    const/4 v13, 0x0

    .line 423
    aget v13, v6, v13

    if-ne v1, v13, :cond_4

    .line 427
    const/4 v10, 0x1

    .local v10, "tagFound":Z
    const/4 v5, 0x1

    .line 428
    .local v5, "k":I
    :goto_4
    add-int/lit8 v13, v11, -0x1

    if-lt v5, v13, :cond_5

    .line 435
    :goto_5
    if-nez v10, :cond_7

    .line 418
    .end local v5    # "k":I
    .end local v10    # "tagFound":Z
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 424
    :cond_4
    int-to-byte v13, v1

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    goto :goto_6

    .line 429
    .restart local v5    # "k":I
    .restart local v10    # "tagFound":Z
    :cond_5
    aget v13, v12, v5

    aget v14, v6, v5

    if-ne v13, v14, :cond_6

    .line 428
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 430
    :cond_6
    int-to-byte v13, v1

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 431
    const/4 v10, 0x0

    goto :goto_5

    .line 441
    :cond_7
    sub-int v13, v4, v11

    new-array v9, v13, [B

    .local v9, "result":[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 442
    sub-int v15, v4, v11

    add-int/lit8 v15, v15, -0x1

    invoke-static {v2, v13, v9, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    sub-int v13, v4, v11

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->stream:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v14

    int-to-byte v14, v14

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    goto/16 :goto_2
.end method

.method private readLine()Ljava/lang/StringBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "line":Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .local v2, "previous":I
    const/4 v0, -0x1

    .line 375
    .local v0, "current":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 382
    return-object v1

    .line 376
    :cond_0
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xd

    .line 377
    if-eq v2, v3, :cond_2

    .line 380
    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    const/16 v3, 0xa

    .line 377
    if-ne v0, v3, :cond_1

    .line 378
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->terminated:Z

    if-eqz v3, :cond_1

    .line 363
    :goto_1
    return-void

    .line 104
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Receiver is started"

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v16

    .line 329
    .local v16, "e":Ljava/net/SocketTimeoutException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 333
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->terminated:Z

    if-eqz v3, :cond_2b

    .line 338
    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->terminated:Z

    goto :goto_1

    .line 109
    .end local v16    # "e":Ljava/net/SocketTimeoutException;
    :cond_1
    :try_start_1
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v27, "trace":Ljava/lang/StringBuffer;
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->readLine()Ljava/lang/StringBuffer;

    move-result-object v23

    .line 114
    .local v23, "line":Ljava/lang/StringBuffer;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    if-nez v3, :cond_6

    .line 126
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_7

    .line 131
    :goto_5
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 132
    .local v19, "firstLineTags":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v3, v0

    const/4 v8, 0x3

    if-ge v3, v8, :cond_8

    .line 134
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_c

    .line 137
    :goto_6
    return-void

    .line 115
    .end local v19    # "firstLineTags":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 118
    :goto_7
    return-void

    .line 116
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "End of stream"

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 362
    .end local v23    # "line":Ljava/lang/StringBuffer;
    .end local v27    # "trace":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v14

    .line 340
    .local v14, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->terminated:Z

    if-nez v3, :cond_2c

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 351
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getMsrpEventListener()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->Unknown:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-interface {v3, v0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->checkMsrpTransactionInfo()V

    .line 361
    :cond_5
    :goto_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->terminated:Z

    goto/16 :goto_1

    .line 122
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v23    # "line":Ljava/lang/StringBuffer;
    .restart local v27    # "trace":Ljava/lang/StringBuffer;
    :cond_6
    :try_start_2
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "\r\n"

    .line 123
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 127
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Read a new chunk"

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .restart local v19    # "firstLineTags":[Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    .line 132
    aget-object v3, v19, v3

    const-string/jumbo v8, "MSRP"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 141
    aget-object v4, v19, v3

    .line 142
    .local v4, "txId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_d

    .line 145
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "-------"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    .local v17, "end":Ljava/lang/String;
    const/16 v25, -0x1

    .local v25, "responseCode":I
    const/16 v24, 0x0

    .local v24, "method":Ljava/lang/String;
    const/4 v3, 0x2

    .line 151
    :try_start_3
    aget-object v3, v19, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    if-nez v3, :cond_e

    .end local v24    # "method":Ljava/lang/String;
    :cond_9
    :goto_b
    const/4 v7, 0x0

    .line 166
    .local v7, "data":[B
    :try_start_4
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 167
    .local v5, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "continuationFlag":C
    const/16 v26, 0x0

    .line 170
    .end local v6    # "continuationFlag":C
    .end local v7    # "data":[B
    .local v26, "totalSize":I
    :cond_a
    :goto_c
    if-eqz v6, :cond_f

    :cond_b
    const/4 v3, -0x1

    .line 285
    move/from16 v0, v25

    if-ne v0, v3, :cond_22

    .line 293
    if-nez v24, :cond_24

    .line 326
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->checkMsrpTransactionInfo()V

    goto/16 :goto_0

    .line 135
    .end local v4    # "txId":Ljava/lang/String;
    .end local v5    # "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "end":Ljava/lang/String;
    .end local v25    # "responseCode":I
    .end local v26    # "totalSize":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Not a MSRP message"

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 143
    .restart local v4    # "txId":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Transaction-ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    .line 153
    .restart local v17    # "end":Ljava/lang/String;
    .restart local v24    # "method":Ljava/lang/String;
    .restart local v25    # "responseCode":I
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    .line 160
    :catch_2
    move-exception v15

    .local v15, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x2

    .line 156
    :try_start_6
    aget-object v24, v19, v3

    .line 157
    .local v24, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 170
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .end local v24    # "method":Ljava/lang/String;
    .restart local v5    # "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "totalSize":I
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->terminated:Z

    if-nez v3, :cond_b

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->readLine()Ljava/lang/StringBuffer;

    move-result-object v23

    .line 172
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    if-nez v3, :cond_10

    .line 180
    :goto_e
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_11

    .line 261
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string/jumbo v3, ":"

    .line 268
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 269
    .local v22, "index":I
    if-ltz v22, :cond_a

    const/4 v3, 0x0

    .line 270
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 271
    .local v20, "headerName":Ljava/lang/String;
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 275
    .local v21, "headerValue":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Header: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - Value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 173
    .end local v20    # "headerName":Ljava/lang/String;
    .end local v21    # "headerValue":Ljava/lang/String;
    .end local v22    # "index":I
    :cond_10
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "\r\n"

    .line 174
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :cond_11
    const-string/jumbo v3, "Byte-Range"

    .line 182
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "byteRange":Ljava/lang/String;
    const/4 v12, -0x1

    .line 185
    .local v12, "chunkSize":I
    if-nez v11, :cond_15

    .line 198
    :cond_12
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_17

    .line 202
    :goto_10
    if-gez v12, :cond_18

    .line 228
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v2, "buffer":Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    .line 231
    .local v18, "endchunk":Z
    :goto_11
    if-eqz v18, :cond_1b

    .line 249
    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 251
    .local v7, "data":[B
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    if-nez v3, :cond_20

    .line 258
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v18    # "endchunk":Z
    :cond_14
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 186
    .end local v7    # "data":[B
    :cond_15
    invoke-static {v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpUtils;->getChunkSize(Ljava/lang/String;)I

    move-result v12

    .line 187
    invoke-static {v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpUtils;->getTotalSize(Ljava/lang/String;)I

    move-result v26

    const/4 v3, -0x1

    .line 189
    if-eq v12, v3, :cond_16

    .line 193
    :goto_13
    if-nez v12, :cond_12

    .line 194
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->buffer_length:I

    goto :goto_f

    .line 190
    :cond_16
    move/from16 v12, v26

    goto :goto_13

    .line 199
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Read data ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_10

    .line 206
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->readChunkedData(ILjava/lang/String;)[B

    move-result-object v10

    .line 208
    .local v10, "buffer":[B
    if-gtz v12, :cond_19

    .line 212
    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    new-array v7, v3, [B

    .restart local v7    # "data":[B
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 213
    array-length v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v10, v3, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v10, v3

    int-to-char v3, v3

    int-to-char v6, v3

    .line 216
    .local v6, "continuationFlag":C
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 222
    .end local v6    # "continuationFlag":C
    :goto_14
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    if-eqz v3, :cond_14

    .line 223
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "\r\n"

    .line 224
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_12

    .line 209
    .end local v7    # "data":[B
    :cond_19
    move-object v7, v10

    .restart local v7    # "data":[B
    goto :goto_14

    .line 217
    .restart local v6    # "continuationFlag":C
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Continuous flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_14

    .line 231
    .end local v6    # "continuationFlag":C
    .end local v7    # "data":[B
    .end local v10    # "buffer":[B
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v18    # "endchunk":Z
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/16 v8, 0x800

    if-ge v3, v8, :cond_13

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->readLine()Ljava/lang/StringBuffer;

    move-result-object v13

    .line 233
    .local v13, "dataline":Ljava/lang/StringBuffer;
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v3, v8, :cond_1d

    .line 243
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_1f

    .line 246
    :goto_15
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    .line 233
    :cond_1d
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 235
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    int-to-char v6, v3

    .line 237
    .restart local v6    # "continuationFlag":C
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 241
    :goto_16
    const/16 v18, 0x1

    goto/16 :goto_11

    .line 238
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Continuous flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_16

    .end local v6    # "continuationFlag":C
    :cond_1f
    const-string/jumbo v3, "\r\n"

    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 252
    .end local v13    # "dataline":Ljava/lang/StringBuffer;
    .restart local v7    # "data":[B
    :cond_20
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "\r\n"

    .line 253
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_12

    .line 262
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v7    # "data":[B
    .end local v11    # "byteRange":Ljava/lang/String;
    .end local v12    # "chunkSize":I
    .end local v18    # "endchunk":Z
    :cond_21
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    int-to-char v6, v3

    .line 263
    .restart local v6    # "continuationFlag":C
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Continuous flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 287
    .end local v6    # "continuationFlag":C
    :cond_22
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    if-nez v3, :cond_23

    .line 291
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receiveMsrpResponse(ILjava/lang/String;Ljava/util/Hashtable;)V

    goto/16 :goto_d

    .line 288
    :cond_23
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<<< Receive MSRP response:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_17

    .line 295
    :cond_24
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "SEND"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 304
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "REPORT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_29

    .line 321
    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->removeMsrpTransactionInfo(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 297
    :cond_25
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    if-nez v3, :cond_26

    .line 302
    :goto_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v3

    move/from16 v0, v26

    int-to-long v8, v0

    invoke-virtual/range {v3 .. v9}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receiveMsrpSend(Ljava/lang/String;Ljava/util/Hashtable;I[BJ)V

    goto/16 :goto_d

    .line 298
    :cond_26
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<<< Receive MSRP SEND request:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_19

    .line 307
    :cond_27
    sget-boolean v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->MSRP_TRACE_ENABLED:Z

    if-nez v3, :cond_28

    .line 312
    :goto_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receiveMsrpReport(Ljava/lang/String;Ljava/util/Hashtable;)V

    goto/16 :goto_d

    .line 308
    :cond_28
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<<< Receive MSRP REPORT request:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 317
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown request received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_18

    .line 330
    .end local v4    # "txId":Ljava/lang/String;
    .end local v5    # "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "end":Ljava/lang/String;
    .end local v19    # "firstLineTags":[Ljava/lang/String;
    .end local v23    # "line":Ljava/lang/StringBuffer;
    .end local v25    # "responseCode":I
    .end local v26    # "totalSize":I
    .end local v27    # "trace":Ljava/lang/StringBuffer;
    .restart local v16    # "e":Ljava/net/SocketTimeoutException;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Chunk receiver thread terminated"

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 335
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->getSession()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getMsrpEventListener()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->Unknown:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-interface {v3, v0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    goto/16 :goto_3

    .line 341
    .end local v16    # "e":Ljava/net/SocketTimeoutException;
    .restart local v14    # "e":Ljava/lang/Exception;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Chunk receiver thread terminated"

    invoke-virtual {v3, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 346
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Chunk receiver has failed"

    invoke-virtual {v3, v8, v14}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->terminated:Z

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ChunkReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Receiver is terminated"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
