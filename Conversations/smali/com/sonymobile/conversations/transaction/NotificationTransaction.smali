.class public Lcom/sonymobile/conversations/transaction/NotificationTransaction;
.super Lcom/sonymobile/conversations/transaction/Transaction;
.source "NotificationTransaction.java"


# instance fields
.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/sonymobile/conversations/transaction/TransactionSettings;
    .param p4, "ind"    # Lcom/google/android/mms/pdu/NotificationInd;
    .param p5, "subscriptionId"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sonymobile/conversations/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;I)V

    .line 103
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsNotification(Lcom/google/android/mms/pdu/GenericPdu;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    iput-object p4, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 110
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 99
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v1, "Failed to save NotificationInd in constructor."

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/sonymobile/conversations/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;
    .param p5, "subscriptionId"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sonymobile/conversations/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;I)V

    .line 83
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 87
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    .line 86
    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 80
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lcom/google/android/mms/MmsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to load NotificationInd from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private sendNotifyRespInd(I)V
    .locals 12
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v6, Lcom/google/android/mms/pdu/NotifyRespInd;

    .line 271
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v10

    .line 272
    iget-object v11, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v11

    .line 270
    invoke-direct {v6, v10, v11, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 276
    .local v6, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    const/4 v2, 0x0

    .line 278
    .local v2, "contentLocationUrl":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->getContentLocationUri()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/transaction/TransactionUtil;->getMmscFromContentUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 282
    .end local v2    # "contentLocationUrl":Ljava/lang/String;
    :goto_0
    new-instance v10, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v11, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v6}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v9

    .line 283
    .local v9, "sendPdu":[B
    const/4 v5, 0x0

    .line 284
    .local v5, "lastException":Ljava/io/IOException;
    const/4 v8, 0x0

    .line 285
    .local v8, "responseOk":Z
    iget-object v10, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    invoke-virtual {v10}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->getApns()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v5    # "lastException":Ljava/io/IOException;
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;

    .line 287
    .local v0, "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    if-nez v2, :cond_2

    .line 288
    :try_start_1
    invoke-virtual {p0, v9, v0}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->sendPdu([BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v7

    .line 289
    .local v7, "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    :goto_2
    invoke-virtual {v7}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getHttpCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_0

    .line 290
    const/4 v8, 0x1

    .line 291
    iget-object v10, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    invoke-virtual {v10, v0}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->moveApnToTop(Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    .end local v0    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v7    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    :cond_1
    if-nez v8, :cond_4

    .line 299
    if-eqz v5, :cond_3

    :goto_3
    throw v5

    .line 288
    .restart local v0    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2, v9, v0}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->sendPdu(Ljava/lang/String;[BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .restart local v7    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    goto :goto_2

    .line 294
    .end local v7    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    :catch_0
    move-exception v4

    .line 295
    .local v4, "io":Ljava/io/IOException;
    move-object v5, v4

    .local v5, "lastException":Ljava/io/IOException;
    goto :goto_1

    .line 299
    .end local v0    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v4    # "io":Ljava/io/IOException;
    .end local v5    # "lastException":Ljava/io/IOException;
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v10, "Failed to send"

    invoke-direct {v5, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 267
    :cond_4
    return-void

    .line 279
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    .end local v8    # "responseOk":Z
    .end local v9    # "sendPdu":[B
    .restart local v2    # "contentLocationUrl":Ljava/lang/String;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public getContentLocationUri()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 257
    .local v0, "clBytes":[B
    if-nez v0, :cond_0

    .line 258
    return-object v3

    .line 260
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 264
    .local v1, "contentLocation":Ljava/lang/String;
    return-object v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public isObsoletedBy(Lcom/sonymobile/conversations/transaction/RetrieveTransaction;)Z
    .locals 3
    .param p1, "rt"    # Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    .prologue
    .line 316
    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 317
    .local v0, "cl":[B
    if-eqz v0, :cond_0

    .line 318
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 319
    .local v1, "contentLocation":Ljava/lang/String;
    iget-object v2, p1, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 321
    .end local v1    # "contentLocation":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public run()V
    .locals 23

    .prologue
    .line 115
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v7

    .line 116
    .local v7, "downloadManager":Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v7}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v5

    .line 117
    .local v5, "autoDownload":Z
    const/4 v11, 0x0

    .line 122
    .local v11, "mmscInvalid":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getDefaultTransactionSettings()Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    .line 129
    :cond_0
    const/16 v18, 0x83

    .line 130
    .local v18, "status":I
    if-nez v5, :cond_4

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/conversations/model/MessageUtil;->updateMmsThreadId(Landroid/content/Context;Landroid/net/Uri;)V

    .line 132
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    .line 133
    sget-object v21, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/16 v22, 0x0

    .line 132
    invoke-interface/range {v19 .. v22}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionInvokeProviderWrapper;->deletePendingMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    const/16 v20, 0x80

    .line 135
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 137
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->notifyNetworkHandler()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 230
    if-nez v5, :cond_1

    .line 231
    if-nez v11, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 240
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    const/16 v20, 0x82

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 243
    const-string/jumbo v19, "NotificationTransaction failed."

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 245
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->notifyNetworkHandler()V

    .line 139
    return-void

    .line 237
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    goto :goto_0

    .line 140
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageType()I

    move-result v19

    const/16 v20, 0x82

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateReadStatus(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 147
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    const/16 v20, 0x81

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 149
    const/4 v15, 0x0

    .line 152
    .local v15, "retrieveConfData":[B
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->getContentLocationUri()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "contentLocation":Ljava/lang/String;
    if-nez v6, :cond_8

    .line 154
    new-instance v19, Lcom/google/android/mms/MmsException;

    const-string/jumbo v20, "Content-Location may not be null."

    invoke-direct/range {v19 .. v20}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v6    # "contentLocation":Ljava/lang/String;
    .end local v15    # "retrieveConfData":[B
    .end local v18    # "status":I
    :catch_0
    move-exception v10

    .line 224
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v19

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 230
    if-nez v5, :cond_6

    .line 231
    if-nez v11, :cond_18

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v20 .. v21}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 240
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v20

    sget-object v21, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v20 .. v21}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    const/16 v21, 0x82

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 243
    const-string/jumbo v20, "NotificationTransaction failed."

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 245
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->notifyNetworkHandler()V

    .line 228
    throw v19

    .line 156
    .restart local v6    # "contentLocation":Ljava/lang/String;
    .restart local v15    # "retrieveConfData":[B
    .restart local v18    # "status":I
    :cond_8
    const/4 v14, 0x0

    .line 157
    .local v14, "resultOk":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->getApns()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v15    # "retrieveConfData":[B
    .local v4, "apn$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    .local v3, "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v13

    .line 161
    .local v13, "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    invoke-virtual {v13}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getHttpCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 162
    invoke-virtual {v13}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getData()[B

    move-result-object v15

    .line 163
    .local v15, "retrieveConfData":[B
    const/4 v14, 0x1

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->moveApnToTop(Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    .end local v3    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v13    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .end local v15    # "retrieveConfData":[B
    :cond_a
    if-nez v14, :cond_b

    .line 176
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 179
    :cond_b
    if-eqz v15, :cond_d

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mSubscriptionId:I

    move/from16 v19, v0

    .line 180
    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionUtil;->shouldParseContentDisposition(I)Z

    move-result v16

    .line 182
    .local v16, "shouldParseContentDisposition":Z
    new-instance v19, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v12

    .line 184
    .local v12, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v19

    const/16 v20, 0x84

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    .line 185
    :cond_c
    const-string/jumbo v19, "Invalid M-RETRIEVE.CONF PDU."

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 187
    const/16 v18, 0x84

    .line 210
    .end local v12    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v16    # "shouldParseContentDisposition":Z
    :cond_d
    :goto_3
    packed-switch v18, :pswitch_data_0

    .line 222
    :cond_e
    :goto_4
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 230
    if-nez v5, :cond_f

    .line 231
    if-nez v11, :cond_16

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 240
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    const/16 v20, 0x82

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 243
    const-string/jumbo v19, "NotificationTransaction failed."

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 245
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->notifyNetworkHandler()V

    .line 114
    .end local v4    # "apn$iterator":Ljava/util/Iterator;
    .end local v6    # "contentLocation":Ljava/lang/String;
    .end local v14    # "resultOk":Z
    .end local v18    # "status":I
    :goto_6
    return-void

    .line 167
    .restart local v3    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .restart local v4    # "apn$iterator":Ljava/util/Iterator;
    .restart local v6    # "contentLocation":Ljava/lang/String;
    .restart local v13    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .restart local v14    # "resultOk":Z
    .restart local v18    # "status":I
    :cond_11
    :try_start_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Server responded with HTTP "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getHttpCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 169
    .end local v13    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    :catch_1
    move-exception v8

    .line 170
    .local v8, "e":Ljava/io/IOException;
    :try_start_7
    sget-boolean v19, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v19, :cond_9

    .line 171
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "IOException for APN: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getServiceCenter()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 225
    .end local v3    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v4    # "apn$iterator":Ljava/util/Iterator;
    .end local v6    # "contentLocation":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v14    # "resultOk":Z
    .end local v18    # "status":I
    :catch_2
    move-exception v9

    .line 226
    .local v9, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 227
    const/4 v11, 0x1

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 230
    if-nez v5, :cond_12

    .line 231
    if-nez v11, :cond_17

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 240
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    const/16 v20, 0x82

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 243
    const-string/jumbo v19, "NotificationTransaction failed."

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 245
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->notifyNetworkHandler()V

    goto/16 :goto_6

    .line 190
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "apn$iterator":Ljava/util/Iterator;
    .restart local v6    # "contentLocation":Ljava/lang/String;
    .restart local v12    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v14    # "resultOk":Z
    .restart local v16    # "shouldParseContentDisposition":Z
    .restart local v18    # "status":I
    :cond_14
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v17

    .line 193
    .local v17, "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseSCTimestamp()Z

    move-result v19

    if-eqz v19, :cond_15

    const/16 v19, 0x0

    .line 192
    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v12, v1, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsRetrievedContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mSubscriptionId:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/sonyericsson/conversations/model/MessageUtil;->updateSubscriptionId(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 201
    const/16 v18, 0x81

    goto/16 :goto_3

    .line 193
    :cond_15
    const/16 v19, 0x1

    goto :goto_8

    .line 212
    .end local v12    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v16    # "shouldParseContentDisposition":Z
    .end local v17    # "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    goto/16 :goto_4

    .line 216
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->INITIALIZED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 237
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    goto/16 :goto_5

    .end local v4    # "apn$iterator":Ljava/util/Iterator;
    .end local v6    # "contentLocation":Ljava/lang/String;
    .end local v14    # "resultOk":Z
    .end local v18    # "status":I
    .restart local v9    # "e":Ljava/lang/Exception;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    goto/16 :goto_7

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v20 .. v21}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    goto/16 :goto_1

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
