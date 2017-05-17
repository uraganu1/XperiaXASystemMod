.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;
.super Ljava/lang/Object;
.source "MsrpSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;,
        Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    }
.end annotation


# static fields
.field private static random:Ljava/util/Random;


# instance fields
.field private cancelTransfer:Z

.field private connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

.field private failureReportOption:Z

.field private from:Ljava/lang/String;

.field private isEstablished:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mMapMsgIdFromTransationId:Z

.field private mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionMsgIdMapLock:Ljava/lang/Object;

.field private msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

.field private msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

.field private progress:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private receivedBytes:J

.field private receivedChunks:Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;

.field private reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

.field private requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

.field private successReportOption:Z

.field private to:Ljava/lang/String;

.field private totalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 160
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->failureReportOption:Z

    .line 115
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->successReportOption:Z

    const-wide/16 v0, 0x0

    .line 120
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedBytes:J

    .line 125
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    .line 130
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->from:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->to:Ljava/lang/String;

    .line 140
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    .line 145
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    .line 150
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedChunks:Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;

    .line 155
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    .line 165
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    .line 170
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    .line 175
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->progress:Ljava/util/Vector;

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 196
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 202
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionMsgIdMapLock:Ljava/lang/Object;

    .line 215
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMapMsgIdFromTransationId:Z

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setMapMsgIdFromTransationId(Z)V

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionMsgIdMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private addMsrpTransactionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 8
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "msrpMsgId"    # Ljava/lang/String;
    .param p3, "cpimMsgId"    # Ljava/lang/String;
    .param p4, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1198
    :cond_1
    if-eqz p1, :cond_0

    .line 1199
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionMsgIdMapLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1200
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    invoke-virtual {v7, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_3

    .line 1205
    :cond_2
    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1202
    :cond_3
    if-eqz p2, :cond_2

    .line 1203
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized generateTransactionId()Ljava/lang/String;
    .locals 4

    .prologue
    const-class v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    monitor-enter v1

    .line 242
    :try_start_0
    sget-object v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMsrpTransactionInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    .locals 2
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1234
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 1240
    :cond_0
    return-object v1

    .line 1234
    :cond_1
    if-eqz p1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionMsgIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1236
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 1237
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMsrpTransactionInfoByMessageId(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    .locals 4
    .param p1, "msrpMsgId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1252
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-object v3

    .line 1252
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1254
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionMsgIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1255
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1256
    .local v0, "transactionId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1259
    monitor-exit v2

    goto :goto_0

    .end local v0    # "transactionId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1257
    .restart local v0    # "transactionId":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method private isFailureReportAllowed(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)Z
    .locals 2
    .param p1, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .prologue
    const/4 v0, 0x0

    .line 1323
    sget-object v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->TextMessage:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDeliveredReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->MessageDisplayedReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private sendEmptyMsrpSendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "txId"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "msrpMsgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xfa0

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 753
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const-string/jumbo v4, "MSRP"

    .line 754
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v4, 0x20

    .line 755
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 756
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v4, " SEND"

    .line 757
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v4, "\r\n"

    .line 758
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "To-Path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "toHeader":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "From-Path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "fromHeader":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message-ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "msgIdHeader":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v4, "-------"

    .line 771
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 772
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v4, 0x24

    .line 774
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v4, "\r\n"

    .line 775
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 778
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    invoke-direct {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    .line 779
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sendChunkImmediately([B)V

    .line 780
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 781
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->waitResponse()V

    .line 782
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->isResponseReceived()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 785
    return-void

    .line 783
    :cond_0
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v5, "timeout"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private sendMsrpReportRequest(Ljava/lang/String;Ljava/util/Hashtable;JJ)V
    .locals 7
    .param p1, "txId"    # Ljava/lang/String;
    .param p3, "lastByte"    # J
    .param p5, "totalSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;,
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v6, 0x3a

    const/16 v5, 0x20

    .line 851
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xfa0

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 852
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const-string/jumbo v3, "MSRP"

    .line 853
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 854
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 855
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, " REPORT"

    .line 856
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "\r\n"

    .line 857
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "To-Path"

    .line 859
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 860
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 861
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v3, "From-Path"

    .line 862
    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "\r\n"

    .line 863
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "From-Path"

    .line 865
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 866
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 867
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v3, "To-Path"

    .line 868
    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "\r\n"

    .line 869
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "Message-ID"

    .line 871
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 872
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 873
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v3, "Message-ID"

    .line 874
    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "\r\n"

    .line 875
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "Byte-Range"

    .line 877
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 878
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 879
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "1-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, "byteRange":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "\r\n"

    .line 882
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "Status"

    .line 884
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 885
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 886
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v2, "000 200 OK"

    .line 888
    .local v2, "status":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "\r\n"

    .line 889
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v3, "-------"

    .line 891
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v3, 0x24

    .line 893
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v3, "\r\n"

    .line 894
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 897
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    invoke-direct {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    .line 898
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sendChunk([B)V

    .line 899
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 900
    return-void
.end method

.method private sendMsrpResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "txId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v3, 0x3a

    const/16 v2, 0x20

    .line 799
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xfa0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v1, "MSRP"

    .line 800
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 801
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 802
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 803
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v1, "\r\n"

    .line 805
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v1, "To-Path"

    .line 807
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 808
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 809
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v1, "From-Path"

    .line 810
    invoke-virtual {p3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v1, "\r\n"

    .line 811
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v1, "From-Path"

    .line 813
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 814
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 815
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v1, "To-Path"

    .line 816
    invoke-virtual {p3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v1, "\r\n"

    .line 817
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v1, "Byte-Range"

    .line 820
    invoke-virtual {p3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "-------"

    .line 829
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 830
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x24

    .line 831
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v1, "\r\n"

    .line 832
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 834
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sendChunk([B)V

    .line 835
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 836
    return-void

    :cond_0
    const-string/jumbo v1, "Byte-Range"

    .line 821
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 822
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 823
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string/jumbo v1, "Byte-Range"

    .line 824
    invoke-virtual {p3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v1, "\r\n"

    .line 826
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0
.end method

.method private sendMsrpSendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BJJJLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 14
    .param p1, "txId"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "msrpMsgId"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "dataSize"    # I
    .param p7, "data"    # [B
    .param p8, "firstByte"    # J
    .param p10, "lastByte"    # J
    .param p12, "totalSize"    # J
    .param p14, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;,
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 636
    cmp-long v11, p10, p12

    if-nez v11, :cond_3

    const/4 v8, 0x1

    .line 639
    .local v8, "isLastChunk":Z
    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0xfa0

    invoke-direct {v2, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 640
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    const-string/jumbo v11, "MSRP"

    .line 641
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v11, 0x20

    .line 642
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 643
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v11, " SEND"

    .line 644
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v11, "\r\n"

    .line 645
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 647
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "To-Path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 649
    .local v10, "toHeader":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 650
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "From-Path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, "fromHeader":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 654
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Message-ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 656
    .local v9, "msgIdHeader":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v7, 0x0

    .line 660
    .local v7, "homeDomain":Ljava/lang/String;
    sget-object v11, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    if-nez v11, :cond_4

    .line 664
    .end local v7    # "homeDomain":Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_5

    .line 671
    :cond_0
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Byte-Range: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p8

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p10

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p12

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "byteRange":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 677
    iget-boolean v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->failureReportOption:Z

    if-eqz v11, :cond_8

    .line 682
    :cond_1
    :goto_4
    iget-boolean v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->successReportOption:Z

    if-nez v11, :cond_9

    .line 689
    :goto_5
    if-nez p5, :cond_a

    .line 696
    :goto_6
    if-nez p7, :cond_b

    :goto_7
    const-string/jumbo v11, "-------"

    .line 703
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 704
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 705
    if-nez v8, :cond_c

    const/16 v11, 0x2b

    .line 710
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_8
    const-string/jumbo v11, "\r\n"

    .line 712
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 715
    iget-boolean v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->failureReportOption:Z

    if-nez v11, :cond_d

    .line 731
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sendChunk([B)V

    .line 732
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 733
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    if-nez v11, :cond_f

    .line 737
    :cond_2
    :goto_9
    return-void

    .end local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "byteRange":Ljava/lang/String;
    .end local v5    # "fromHeader":Ljava/lang/String;
    .end local v8    # "isLastChunk":Z
    .end local v9    # "msgIdHeader":Ljava/lang/String;
    .end local v10    # "toHeader":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 636
    goto/16 :goto_0

    .line 661
    .restart local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "fromHeader":Ljava/lang/String;
    .restart local v7    # "homeDomain":Ljava/lang/String;
    .restart local v8    # "isLastChunk":Z
    .restart local v9    # "msgIdHeader":Ljava/lang/String;
    .restart local v10    # "toHeader":Ljava/lang/String;
    :cond_4
    sget-object v11, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v7

    .local v7, "homeDomain":Ljava/lang/String;
    goto/16 :goto_1

    .end local v7    # "homeDomain":Ljava/lang/String;
    :cond_5
    const-string/jumbo v11, "t-mobile"

    .line 664
    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const/16 v11, 0x800

    move/from16 v0, p6

    if-le v0, v11, :cond_0

    .line 668
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Byte-Range: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p8

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p12

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "byteRange":Ljava/lang/String;
    goto/16 :goto_3

    .end local v3    # "byteRange":Ljava/lang/String;
    :cond_7
    const-string/jumbo v11, "telekom"

    .line 664
    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    goto/16 :goto_2

    .line 677
    .restart local v3    # "byteRange":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p14

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->isFailureReportAllowed(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v6, "Failure-Report: no\r\n"

    .line 680
    .local v6, "header":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_4

    .end local v6    # "header":Ljava/lang/String;
    :cond_9
    const-string/jumbo v6, "Success-Report: yes\r\n"

    .line 685
    .restart local v6    # "header":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_5

    .line 690
    .end local v6    # "header":Ljava/lang/String;
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Content-Type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "content":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_6

    .end local v4    # "content":Ljava/lang/String;
    :cond_b
    const-string/jumbo v11, "\r\n"

    .line 697
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v11, 0x0

    .line 698
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-virtual {v2, v0, v11, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const-string/jumbo v11, "\r\n"

    .line 699
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_7

    :cond_c
    const/16 v11, 0x24

    .line 707
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_8

    .line 716
    :cond_d
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    if-nez v11, :cond_e

    .line 720
    new-instance v11, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    invoke-direct {v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;-><init>()V

    iput-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    .line 722
    :goto_a
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->sendChunk([B)V

    .line 723
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 724
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    if-eqz v11, :cond_2

    .line 725
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->waitResponse()V

    .line 726
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->isResponseReceived()Z

    move-result v11

    if-nez v11, :cond_2

    .line 727
    new-instance v11, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v12, "timeout"

    invoke-direct {v11, v12}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 717
    :cond_e
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->handleRequest()V

    const/4 v11, 0x0

    .line 718
    iput-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    goto :goto_a

    .line 734
    :cond_f
    iget-object v11, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->handleRequest()V

    goto/16 :goto_9
.end method


# virtual methods
.method public addMsrpEventListener(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    .line 315
    return-void
.end method

.method public checkMsrpTransactionInfo()V
    .locals 2

    .prologue
    .line 1270
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 1305
    :goto_0
    return-void

    .line 1271
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1303
    .local v0, "checkThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    .line 365
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    if-nez v0, :cond_1

    .line 370
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    if-nez v0, :cond_2

    .line 375
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    if-nez v0, :cond_3

    .line 380
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    if-nez v0, :cond_4

    .line 383
    :goto_4
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Close session"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;->close()V

    goto :goto_1

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->terminate()V

    goto :goto_2

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->terminate()V

    goto :goto_3

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->terminate()V

    goto :goto_4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->setMapMsgIdFromTransationId(Z)V

    .line 233
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 234
    return-void
.end method

.method public getConnection()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    return-object v0
.end method

.method public getMsrpEventListener()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    return-object v0
.end method

.method public isEstablished()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1313
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->isEstablished:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFailureReportRequested()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->failureReportOption:Z

    return v0
.end method

.method public receiveMsrpReport(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 12
    .param p1, "txId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    .line 1100
    .local p2, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-nez v9, :cond_2

    :goto_0
    const-string/jumbo v9, "Message-ID"

    .line 1105
    invoke-virtual {p2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "msrpMsgId":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "cpimMsgId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1109
    .local v6, "originalTransactionId":Ljava/lang/String;
    sget-object v8, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->Unknown:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .line 1110
    .local v8, "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    invoke-direct {p0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getMsrpTransactionInfoByMessageId(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;

    move-result-object v5

    .line 1111
    .local v5, "msrpTransactionInfo":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    if-nez v5, :cond_3

    .line 1124
    .end local v0    # "cpimMsgId":Ljava/lang/String;
    .end local v6    # "originalTransactionId":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v3, 0x1

    .local v3, "failureReportNeeded":Z
    const-string/jumbo v9, "Failure-Report"

    .line 1125
    invoke-virtual {p2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1126
    .local v2, "failureHeader":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 1131
    :cond_1
    :goto_2
    if-nez v3, :cond_5

    .line 1142
    :goto_3
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->parseStatusCode(Ljava/util/Hashtable;)I

    move-result v7

    .local v7, "statusCode":I
    const/16 v9, 0xc8

    .line 1143
    if-ne v7, v9, :cond_6

    .line 1148
    :goto_4
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    if-nez v9, :cond_7

    .line 1154
    :goto_5
    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->removeMsrpTransactionInfo(Ljava/lang/String;)V

    .line 1155
    return-void

    .line 1101
    .end local v2    # "failureHeader":Ljava/lang/String;
    .end local v3    # "failureReportNeeded":Z
    .end local v4    # "msrpMsgId":Ljava/lang/String;
    .end local v5    # "msrpTransactionInfo":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    .end local v7    # "statusCode":I
    .end local v8    # "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    :cond_2
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "REPORT request received (transaction="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    .restart local v0    # "cpimMsgId":Ljava/lang/String;
    .restart local v4    # "msrpMsgId":Ljava/lang/String;
    .restart local v5    # "msrpTransactionInfo":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    .restart local v6    # "originalTransactionId":Ljava/lang/String;
    .restart local v8    # "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    :cond_3
    iget-object v8, v5, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->typeMsrpChunk:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .line 1113
    iget-object v6, v5, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->transactionId:Ljava/lang/String;

    .line 1114
    .local v6, "originalTransactionId":Ljava/lang/String;
    iget-object v0, v5, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->cpimMsgId:Ljava/lang/String;

    .line 1115
    .local v0, "cpimMsgId":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1116
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "REPORT request details; originalTransactionId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; cpimMsgId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; typeMsrpChunk="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "cpimMsgId":Ljava/lang/String;
    .end local v6    # "originalTransactionId":Ljava/lang/String;
    .restart local v2    # "failureHeader":Ljava/lang/String;
    .restart local v3    # "failureReportNeeded":Z
    :cond_4
    const-string/jumbo v9, "no"

    .line 1126
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1127
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :try_start_0
    const-string/jumbo v9, "200 OK"

    .line 1133
    invoke-direct {p0, v9, p1, p2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->sendMsrpResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1138
    :catch_0
    move-exception v1

    .line 1137
    .local v1, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->printStackTrace()V

    goto/16 :goto_3

    .line 1144
    .end local v1    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    .restart local v7    # "statusCode":I
    :cond_6
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "error report "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v0, v10, v8}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    goto/16 :goto_4

    .line 1149
    :cond_7
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    invoke-virtual {v9, v7, p2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->notifyReport(ILjava/util/Hashtable;)V

    goto/16 :goto_5
.end method

.method public receiveMsrpResponse(ILjava/lang/String;Ljava/util/Hashtable;)V
    .locals 12
    .param p1, "code"    # I
    .param p2, "txId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v11, 0xc8

    const/4 v10, 0x0

    .line 1037
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1042
    :goto_0
    if-eq p1, v11, :cond_3

    .line 1051
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->failureReportOption:Z

    if-nez v3, :cond_4

    .line 1061
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    if-nez v3, :cond_5

    .line 1066
    :goto_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    if-nez v3, :cond_6

    .line 1072
    :goto_4
    if-ne p1, v11, :cond_7

    .line 1089
    :goto_5
    return-void

    .line 1038
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Response received (code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", transaction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1043
    :cond_3
    invoke-direct {p0, p2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getMsrpTransactionInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;

    move-result-object v1

    .line 1044
    .local v1, "msrpTransactionInfo":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    if-eqz v1, :cond_0

    .line 1045
    iget-object v3, v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->typeMsrpChunk:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    sget-object v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->EmptyChunk:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->isEstablished:Z

    goto :goto_1

    .line 1053
    .end local v1    # "msrpTransactionInfo":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    :cond_4
    iget-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->progress:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1054
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->progress:Ljava/util/Vector;

    invoke-virtual {v3, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->totalSize:J

    invoke-interface {v4, v6, v7, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferProgress(JJ)V

    .line 1056
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->progress:Ljava/util/Vector;

    invoke-virtual {v3, v10}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    .line 1062
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->requestTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;

    invoke-virtual {v3, p1, p3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->notifyResponse(ILjava/util/Hashtable;)V

    goto :goto_3

    .line 1067
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->handleResponse()V

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 1075
    .local v0, "cpimMsgId":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->Unknown:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    .line 1076
    .local v2, "typeMsrpChunk":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    invoke-direct {p0, p2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getMsrpTransactionInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;

    move-result-object v1

    .line 1077
    .restart local v1    # "msrpTransactionInfo":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    if-nez v1, :cond_8

    .line 1081
    .end local v0    # "cpimMsgId":Ljava/lang/String;
    :goto_6
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 1087
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->removeMsrpTransactionInfo(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1078
    .restart local v0    # "cpimMsgId":Ljava/lang/String;
    :cond_8
    iget-object v0, v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->cpimMsgId:Ljava/lang/String;

    .line 1079
    .local v0, "cpimMsgId":Ljava/lang/String;
    iget-object v2, v1, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->typeMsrpChunk:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    goto :goto_6
.end method

.method public receiveMsrpSend(Ljava/lang/String;Ljava/util/Hashtable;I[BJ)V
    .locals 19
    .param p1, "txId"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "data"    # [B
    .param p5, "totalSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I[BJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 917
    .local p2, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    const-string/jumbo v5, "Message-ID"

    .line 923
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 926
    .local v15, "msgId":Ljava/lang/String;
    const/4 v14, 0x1

    .local v14, "failureReportNeeded":Z
    const-string/jumbo v5, "Failure-Report"

    .line 927
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 928
    .local v13, "failureHeader":Ljava/lang/String;
    if-nez v13, :cond_3

    .line 933
    :cond_0
    :goto_1
    if-nez v14, :cond_4

    .line 939
    :goto_2
    if-eqz p4, :cond_5

    .line 948
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedChunks:Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->addChunk([B)V

    const/16 v5, 0x24

    .line 951
    move/from16 v0, p3

    if-eq v0, v5, :cond_7

    const/16 v5, 0x23

    .line 994
    move/from16 v0, p3

    if-eq v0, v5, :cond_d

    const/16 v5, 0x2b

    .line 1004
    move/from16 v0, p3

    if-eq v0, v5, :cond_f

    .line 1026
    :cond_1
    :goto_3
    return-void

    .line 918
    .end local v13    # "failureHeader":Ljava/lang/String;
    .end local v14    # "failureReportNeeded":Z
    .end local v15    # "msgId":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SEND request received (flag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", transaction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .restart local v13    # "failureHeader":Ljava/lang/String;
    .restart local v14    # "failureReportNeeded":Z
    .restart local v15    # "msgId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "no"

    .line 928
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 929
    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "200 OK"

    .line 934
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->sendMsrpResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_2

    .line 940
    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->isEstablished:Z

    .line 941
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_6

    .line 944
    :goto_4
    return-void

    .line 942
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Empty chunk"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 953
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_9

    .line 958
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedChunks:Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->getReceivedData()[B

    move-result-object v10

    .line 959
    .local v10, "dataContent":[B
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedChunks:Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->resetCache()V

    .line 960
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedChunks:Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->resetCurrentSize()V

    .line 961
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedBytes:J

    move-object/from16 v0, p4

    array-length v5, v0

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedBytes:J

    const-string/jumbo v5, "Content-Type"

    .line 964
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 966
    .local v4, "contentTypeHeader":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    invoke-interface {v5, v15, v10, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpDataReceived(Ljava/lang/String;[BLjava/lang/String;)V

    .line 970
    const/16 v18, 0x0

    .local v18, "successReportNeeded":Z
    const-string/jumbo v5, "Success-Report"

    .line 971
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 973
    .local v16, "reportHeader":Ljava/lang/String;
    if-nez v16, :cond_a

    .line 978
    :cond_8
    :goto_6
    if-nez v18, :cond_b

    .end local v10    # "dataContent":[B
    :goto_7
    const-wide/16 v6, 0x0

    .line 993
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedBytes:J

    goto/16 :goto_3

    .line 954
    .end local v4    # "contentTypeHeader":Ljava/lang/String;
    .end local v16    # "reportHeader":Ljava/lang/String;
    .end local v18    # "successReportNeeded":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Transfer terminated"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_5

    .restart local v4    # "contentTypeHeader":Ljava/lang/String;
    .restart local v10    # "dataContent":[B
    .restart local v16    # "reportHeader":Ljava/lang/String;
    .restart local v18    # "successReportNeeded":Z
    :cond_a
    const-string/jumbo v5, "yes"

    .line 973
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 974
    const/16 v18, 0x1

    goto :goto_6

    .line 980
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedBytes:J

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->sendMsrpReportRequest(Ljava/lang/String;Ljava/util/Hashtable;JJ)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 991
    .end local v10    # "dataContent":[B
    :catch_0
    move-exception v12

    .line 984
    .local v12, "e":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_c

    .line 989
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;->getMessage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->StatusReport:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    invoke-interface {v5, v15, v6, v7}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    goto :goto_7

    .line 985
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t send report"

    invoke-virtual {v5, v6, v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 996
    .end local v4    # "contentTypeHeader":Ljava/lang/String;
    .end local v12    # "e":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
    .end local v16    # "reportHeader":Ljava/lang/String;
    .end local v18    # "successReportNeeded":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_e

    :goto_9
    const-wide/16 v6, 0x0

    .line 1000
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedBytes:J

    .line 1003
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    invoke-interface {v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferAborted()V

    goto/16 :goto_3

    .line 997
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Transfer aborted"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_9

    .line 1006
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1009
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedChunks:Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->getReceivedData()[B

    move-result-object v10

    .line 1011
    .restart local v10    # "dataContent":[B
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedBytes:J

    move-object/from16 v0, p4

    array-length v5, v0

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedBytes:J

    .line 1014
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedBytes:J

    move-wide/from16 v8, p5

    invoke-interface/range {v5 .. v10}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferProgress(JJ[B)Z

    move-result v17

    .line 1022
    .local v17, "resetCache":Z
    if-eqz v17, :cond_1

    .line 1023
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->receivedChunks:Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/DataChunks;->resetCache()V

    goto/16 :goto_3

    .line 1007
    .end local v10    # "dataContent":[B
    .end local v17    # "resetCache":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Transfer in progress..."

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public removeMsrpTransactionInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    if-eqz p1, :cond_0

    .line 1215
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionMsgIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1216
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_3

    .line 1224
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1217
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->getMsrpTransactionInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;

    move-result-object v0

    .line 1218
    .local v0, "transactionInfo":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->msrpMsgId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1220
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->msrpMsgId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public sendChunks(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
    .locals 22
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "totalSize"    # J
    .param p6, "typeMsrpChunk"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 403
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->from:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->to:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    if-eqz v4, :cond_5

    .line 415
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->totalSize:J

    const/16 v4, 0x2800

    .line 419
    :try_start_0
    new-array v11, v4, [B

    .local v11, "data":[B
    const-wide/16 v12, 0x1

    .local v12, "firstByte":J
    const-wide/16 v14, 0x0

    .line 422
    .local v14, "lastByte":J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    .line 423
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->successReportOption:Z

    if-nez v4, :cond_6

    const/4 v4, 0x0

    .line 426
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    .line 428
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->failureReportOption:Z

    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 431
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    .line 436
    :goto_2
    move-wide/from16 v0, p4

    long-to-double v6, v0

    const-wide/high16 v16, 0x40c4000000000000L    # 10240.0

    div-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v20, v0

    .line 439
    .local v20, "totalChunks":I
    new-instance v21, Ljava/lang/Thread;

    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, p4

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;-><init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;IJ)V

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 461
    .local v21, "updater":Ljava/lang/Thread;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    const/4 v5, 0x0

    .line 473
    .local v5, "newTransactionId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MID-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "_"

    const-string/jumbo v9, "-"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 476
    .local v8, "msrpMsgId":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .end local v5    # "newTransactionId":Ljava/lang/String;
    .local v10, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    move v6, v4

    :goto_4
    const/4 v4, -0x1

    if-gt v10, v4, :cond_9

    const/4 v4, 0x0

    :goto_5
    and-int/2addr v4, v6

    if-nez v4, :cond_a

    .line 506
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    if-nez v4, :cond_d

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    if-nez v4, :cond_f

    .line 527
    :cond_0
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    if-nez v4, :cond_12

    .line 547
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_15

    .line 560
    :cond_1
    :goto_8
    if-nez p1, :cond_16

    .line 566
    :goto_9
    return-void

    .line 399
    .end local v8    # "msrpMsgId":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "data":[B
    .end local v12    # "firstByte":J
    .end local v14    # "lastByte":J
    .end local v20    # "totalChunks":I
    .end local v21    # "updater":Ljava/lang/Thread;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send content ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - MSRP chunk type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :cond_3
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v6, "From not set"

    invoke-direct {v4, v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 408
    :cond_4
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v6, "To not set"

    invoke-direct {v4, v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 412
    :cond_5
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v6, "No connection set"

    invoke-direct {v4, v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 424
    .restart local v11    # "data":[B
    .restart local v12    # "firstByte":J
    .restart local v14    # "lastByte":J
    :cond_6
    :try_start_1
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    invoke-direct {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 565
    .end local v11    # "data":[B
    .end local v12    # "firstByte":J
    .end local v14    # "lastByte":J
    :catch_0
    move-exception v19

    .line 552
    .local v19, "e":Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_17

    .line 556
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-interface {v4, v0, v6, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 557
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 560
    if-nez p1, :cond_18

    .line 564
    :goto_b
    throw v4

    .line 429
    .restart local v11    # "data":[B
    .restart local v12    # "firstByte":J
    .restart local v14    # "lastByte":J
    :cond_7
    :try_start_3
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    invoke-direct {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    goto/16 :goto_2

    .restart local v8    # "msrpMsgId":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v20    # "totalChunks":I
    .restart local v21    # "updater":Ljava/lang/Thread;
    :cond_8
    const/4 v4, 0x1

    move v6, v4

    .line 476
    goto/16 :goto_4

    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 479
    :cond_a
    int-to-long v6, v10

    add-long/2addr v14, v6

    .line 482
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->generateTransactionId()Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "newTransactionId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-direct {v0, v5, v8, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->addMsrpTransactionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->to:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->from:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    move-wide/from16 v16, p4

    move-object/from16 v18, p6

    invoke-direct/range {v4 .. v18}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->sendMsrpSendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BJJJLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 492
    int-to-long v6, v10

    add-long/2addr v12, v6

    .line 495
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->failureReportOption:Z

    if-nez v4, :cond_b

    .line 500
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    if-eqz v4, :cond_c

    .line 476
    :goto_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v10

    goto/16 :goto_3

    .line 497
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->progress:Ljava/util/Vector;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 501
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    move-wide/from16 v0, p4

    invoke-interface {v4, v14, v15, v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferProgress(JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_c

    .line 560
    .end local v5    # "newTransactionId":Ljava/lang/String;
    :cond_d
    if-nez p1, :cond_e

    .line 564
    :goto_d
    return-void

    .line 561
    :cond_e
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_d

    .line 564
    :catch_1
    move-exception v4

    goto :goto_d

    .line 514
    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->waitAllResponses()V

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->isAllResponsesReceived()Z

    move-result v4

    if-nez v4, :cond_10

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z

    if-nez v4, :cond_0

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    const-string/jumbo v6, "response timeout 408"

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-interface {v4, v0, v6, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    goto/16 :goto_6

    .line 518
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpDataTransfered(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 530
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->waitReport()V

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->getStatusCode()I

    move-result v4

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_13

    .line 529
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->isTransactionFinished(J)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 538
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->getStatusCode()I

    move-result v4

    const/16 v6, 0xc8

    if-eq v4, v6, :cond_14

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error report "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-interface {v4, v0, v6, v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    goto/16 :goto_7

    .line 539
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpDataTransfered(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 547
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->reportTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/ReportTransaction;

    if-nez v4, :cond_1

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpDataTransfered(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_8

    .line 561
    :cond_16
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_9

    .line 564
    :catch_2
    move-exception v19

    .line 563
    .restart local v19    # "e":Ljava/lang/Exception;
    goto/16 :goto_9

    .line 553
    .end local v8    # "msrpMsgId":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "data":[B
    .end local v12    # "firstByte":J
    .end local v14    # "lastByte":J
    .end local v20    # "totalChunks":I
    .end local v21    # "updater":Ljava/lang/Thread;
    :cond_17
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Send chunk failed"

    move-object/from16 v0, v19

    invoke-virtual {v4, v6, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_a

    .line 561
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_18
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_b

    .line 564
    :catch_3
    move-exception v6

    goto/16 :goto_b
.end method

.method public sendEmptyChunk()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 578
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->from:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 582
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->to:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 586
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    if-eqz v4, :cond_3

    .line 593
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->generateTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "newTransactionId":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->generateTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "newMsgId":Ljava/lang/String;
    sget-object v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;->EmptyChunk:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->addMsrpTransactionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V

    .line 597
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->to:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->from:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->sendEmptyMsrpSendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    return-void

    .line 575
    .end local v2    # "newMsgId":Ljava/lang/String;
    .end local v3    # "newTransactionId":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Send an empty chunk"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_1
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v5, "From not set"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 583
    :cond_2
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v5, "To not set"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 587
    :cond_3
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    const-string/jumbo v5, "No connection set"

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 602
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
    throw v0

    .end local v0    # "e":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;
    :catch_1
    move-exception v1

    .line 601
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setConnection(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->connection:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpConnection;

    .line 288
    return-void
.end method

.method public setFailureReportOption(Z)V
    .locals 0
    .param p1, "failureReportOption"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->failureReportOption:Z

    .line 261
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->from:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setMapMsgIdFromTransationId(Z)V
    .locals 2
    .param p1, "mapMsgIdFromTransationId"    # Z

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMapMsgIdFromTransationId:Z

    if-ne v0, p1, :cond_0

    .line 1181
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionMsgIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1165
    if-nez p1, :cond_1

    .line 1169
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 1173
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_3

    .line 1178
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMapMsgIdFromTransationId:Z

    goto :goto_0

    .line 1166
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1167
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_2

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1170
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    .line 1171
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    .line 1174
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    .line 1175
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setSuccessReportOption(Z)V
    .locals 0
    .param p1, "successReportOption"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->successReportOption:Z

    .line 279
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->to:Ljava/lang/String;

    .line 351
    return-void
.end method
