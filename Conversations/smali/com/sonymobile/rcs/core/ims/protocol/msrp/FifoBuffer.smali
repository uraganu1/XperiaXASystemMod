.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;
.super Ljava/lang/Object;
.source "FifoBuffer.java"


# instance fields
.field private fifo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private numMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->numMessage:I

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->fifo:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public declared-synchronized getMessage()Ljava/lang/Object;
    .locals 3

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .line 58
    .local v0, "message":Ljava/lang/Object;
    :try_start_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->numMessage:I

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->numMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .end local v0    # "message":Ljava/lang/Object;
    :goto_1
    monitor-exit p0

    .line 71
    return-object v0

    .line 60
    .restart local v0    # "message":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0

    .line 66
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->fifo:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->fifo:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 68
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->numMessage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->numMessage:I

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "message":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized putMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->fifo:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 46
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->numMessage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/FifoBuffer;->numMessage:I

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 48
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unblockRead()V
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
