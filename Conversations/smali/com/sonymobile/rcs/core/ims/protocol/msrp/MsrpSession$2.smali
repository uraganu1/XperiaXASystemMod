.class Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;
.super Ljava/lang/Object;
.source "MsrpSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->checkMsrpTransactionInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1277
    .local v4, "msrpTransactionInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;>;"
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionMsgIdMapLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$300(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1280
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$400(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    .end local v4    # "msrpTransactionInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;>;"
    .local v5, "msrpTransactionInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;>;"
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1283
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1301
    return-void

    .line 1282
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "msrpTransactionInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;>;"
    :catchall_0
    move-exception v6

    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1283
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "msrpTransactionInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;

    .line 1284
    .local v3, "msrpTransactionInfo":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->timestamp:J
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->access$500(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v0, v10, v12

    .local v0, "delta":J
    const-wide/16 v10, 0x1e

    .line 1285
    cmp-long v6, v0, v10

    if-ltz v6, :cond_3

    move v6, v7

    :goto_2
    if-nez v6, :cond_2

    const-wide/16 v10, 0x0

    cmp-long v6, v0, v10

    if-ltz v6, :cond_4

    move v6, v7

    :goto_3
    if-nez v6, :cond_0

    .line 1287
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$600(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1293
    :goto_4
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mTransactionInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$400(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iget-object v9, v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->transactionId:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$700(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1296
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->mMessageTransactionMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$700(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iget-object v9, v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->msrpMsgId:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v6, v8

    .line 1285
    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3

    .line 1288
    :cond_5
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$600(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Transaction info have expired (transactionId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->transactionId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", msgId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;->msrpMsgId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 1282
    .end local v0    # "delta":J
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "msrpTransactionInfo":Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "msrpTransactionInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;>;"
    .local v4, "msrpTransactionInfos":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$MsrpTransactionInfo;>;"
    goto/16 :goto_1
.end method
