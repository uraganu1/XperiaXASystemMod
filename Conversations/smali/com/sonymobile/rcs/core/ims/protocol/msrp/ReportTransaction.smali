.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;
.super Ljava/lang/Object;
.source "ReportTransaction.java"


# instance fields
.field private isNotified:Z

.field private receivedByteRangeHeader:Z

.field private reportedSize:J

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->reportedSize:J

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->statusCode:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->isNotified:Z

    .line 58
    return-void
.end method

.method public static parseStatusCode(Ljava/util/Hashtable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, -0x1

    .local v2, "statusCode":I
    const-string/jumbo v3, "Status"

    .line 153
    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "status":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v3, "000 "

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, " "

    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "parts":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    .line 158
    :try_start_0
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 161
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->statusCode:I

    return v0
.end method

.method public isTransactionFinished(J)Z
    .locals 5
    .param p1, "totalSize"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->isNotified:Z

    if-nez v0, :cond_1

    .line 142
    :cond_0
    return v2

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->receivedByteRangeHeader:Z

    if-eqz v0, :cond_2

    .line 138
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->reportedSize:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 139
    return v3

    .line 136
    :cond_2
    return v3
.end method

.method public notifyReport(ILjava/util/Hashtable;)V
    .locals 4
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 68
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->receivedByteRangeHeader:Z

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->isNotified:Z

    .line 70
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->statusCode:I

    const-string/jumbo v1, "Byte-Range"

    .line 73
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "byteRange":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->notify()V

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 75
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpUtils;->getChunkSize(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->reportedSize:J

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->receivedByteRangeHeader:Z

    goto :goto_0

    .line 81
    .end local v0    # "byteRange":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->notify()V

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

.method public waitReport()V
    .locals 2

    .prologue
    .line 88
    monitor-enter p0

    const-wide/32 v0, 0x36ee80

    .line 91
    :try_start_0
    invoke-super {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 96
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
