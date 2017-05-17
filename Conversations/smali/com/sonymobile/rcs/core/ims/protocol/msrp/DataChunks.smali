.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;
.super Ljava/lang/Object;
.source "DataChunks.java"


# instance fields
.field private cache:Ljava/io/ByteArrayOutputStream;

.field private currentSize:I

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->currentSize:I

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->cache:Ljava/io/ByteArrayOutputStream;

    .line 56
    return-void
.end method


# virtual methods
.method public addChunk([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->cache:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 66
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->currentSize:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->currentSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v2, "Not enough memory to save data"

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReceivedData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    .local v1, "result":[B
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    .local v1, "result":[B
    return-object v1

    .line 83
    .local v1, "result":[B
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v3, "Not enough memory to copy data"

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetCache()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 92
    return-void
.end method

.method public resetCurrentSize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->currentSize:I

    .line 99
    return-void
.end method
