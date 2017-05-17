.class public Lcom/sonymobile/conversations/transaction/SendTransaction;
.super Lcom/sonymobile/conversations/transaction/Transaction;
.source "SendTransaction.java"


# instance fields
.field private final mSendReqURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transId"    # I
    .param p3, "connectionSettings"    # Lcom/sonymobile/conversations/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "subscriptionId"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sonymobile/conversations/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;I)V

    .line 72
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 73
    iput-object p4, p0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mId:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getSendReqURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 34

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v17

    .line 80
    .local v17, "rateCtlr":Lcom/android/mms/util/RateController;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v30

    if-eqz v30, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 86
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getDefaultTransactionSettings()Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    .line 89
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->isMmscSet()Z

    move-result v30

    if-nez v30, :cond_5

    .line 90
    const-string/jumbo v30, "MMSC is Empty"

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v30

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 208
    const-string/jumbo v30, "Delivery failed."

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 210
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/SendTransaction;->notifyNetworkHandler()V

    .line 91
    return-void

    .line 81
    :cond_3
    :try_start_1
    const-string/jumbo v30, "Sending rate limit surpassed."

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v30

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 208
    const-string/jumbo v30, "Delivery failed."

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 210
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/SendTransaction;->notifyNetworkHandler()V

    .line 82
    return-void

    .line 95
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v12

    .line 96
    .local v12, "isDefaultSmsPackage":Z
    if-nez v12, :cond_7

    .line 99
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/conversations/transaction/SendTransaction;->mPermanentError:Z

    .line 100
    const-string/jumbo v30, "Not the default SMS/MMS app, refusing to send. "

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v30

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 208
    const-string/jumbo v30, "Delivery failed."

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 210
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/SendTransaction;->notifyNetworkHandler()V

    .line 101
    return-void

    .line 105
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v16

    .line 106
    .local v16, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v23

    check-cast v23, Lcom/google/android/mms/pdu/SendReq;

    .line 109
    .local v23, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v30

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    div-long v8, v30, v32

    .line 113
    .local v8, "date":J
    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 116
    .local v14, "mmsId":J
    invoke-static {v14, v15}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMmsMessage(J)Landroid/net/Uri;

    move-result-object v25

    .line 117
    .local v25, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v30

    const-wide/16 v32, 0x3e8

    mul-long v32, v32, v8

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/model/ModelCache;->modifySlideshowTag(Landroid/net/Uri;J)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8, v9}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateDateValue(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v28

    .line 124
    .local v28, "tokenKey":J
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v26

    .line 125
    .local v26, "token":J
    new-instance v30, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v22

    .line 126
    .local v22, "sendPdu":[B
    const/16 v20, 0x0

    .line 127
    .local v20, "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    const/16 v21, 0x0

    .line 128
    .local v21, "resultOK":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->getApns()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v20    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .local v5, "apn$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .local v4, "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :try_start_4
    sget-boolean v30, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v30, :cond_9

    .line 131
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Sending with Apn mmsc: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v4}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getServiceCenter()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 133
    :cond_9
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/conversations/transaction/SendTransaction;->sendPdu(J[BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v20

    .line 134
    .local v20, "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getHttpCode()I

    move-result v30

    const/16 v31, 0xc8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 135
    const/16 v21, 0x1

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->moveApnToTop(Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    .end local v4    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v20    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    :cond_a
    if-nez v21, :cond_d

    .line 146
    :try_start_5
    new-instance v30, Ljava/lang/Exception;

    const-string/jumbo v31, "Failed to connect, No working APN found "

    invoke-direct/range {v30 .. v31}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 198
    .end local v5    # "apn$iterator":Ljava/util/Iterator;
    .end local v8    # "date":J
    .end local v12    # "isDefaultSmsPackage":Z
    .end local v14    # "mmsId":J
    .end local v16    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v17    # "rateCtlr":Lcom/android/mms/util/RateController;
    .end local v21    # "resultOK":Z
    .end local v22    # "sendPdu":[B
    .end local v23    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v26    # "token":J
    .end local v28    # "tokenKey":J
    :catch_0
    move-exception v10

    .line 199
    .local v10, "e":Ljava/lang/Exception;
    :try_start_6
    sget-boolean v30, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v30, :cond_17

    .line 200
    const-string/jumbo v30, "Exception during process of Sendtransaction"

    move-object/from16 v0, v30

    invoke-static {v0, v10}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 205
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v30

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_b

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 208
    const-string/jumbo v30, "Delivery failed."

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 210
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/SendTransaction;->notifyNetworkHandler()V

    .line 77
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 139
    .restart local v4    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .restart local v5    # "apn$iterator":Ljava/util/Iterator;
    .restart local v8    # "date":J
    .restart local v12    # "isDefaultSmsPackage":Z
    .restart local v14    # "mmsId":J
    .restart local v16    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .restart local v17    # "rateCtlr":Lcom/android/mms/util/RateController;
    .restart local v21    # "resultOK":Z
    .restart local v22    # "sendPdu":[B
    .restart local v23    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .restart local v25    # "uri":Landroid/net/Uri;
    .restart local v26    # "token":J
    .restart local v28    # "tokenKey":J
    :catch_1
    move-exception v11

    .line 140
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_7
    sget-boolean v30, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v30, :cond_8

    .line 141
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, " Failed to connect "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v4}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getServiceCenter()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 204
    .end local v4    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v5    # "apn$iterator":Ljava/util/Iterator;
    .end local v8    # "date":J
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v12    # "isDefaultSmsPackage":Z
    .end local v14    # "mmsId":J
    .end local v16    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v17    # "rateCtlr":Lcom/android/mms/util/RateController;
    .end local v21    # "resultOK":Z
    .end local v22    # "sendPdu":[B
    .end local v23    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v26    # "token":J
    .end local v28    # "tokenKey":J
    :catchall_0
    move-exception v30

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v31

    sget-object v32, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_c

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v31, v0

    sget-object v32, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v31 .. v32}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 208
    const-string/jumbo v31, "Delivery failed."

    invoke-static/range {v31 .. v31}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 210
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/SendTransaction;->notifyNetworkHandler()V

    .line 204
    throw v30

    .line 148
    .restart local v5    # "apn$iterator":Ljava/util/Iterator;
    .restart local v8    # "date":J
    .restart local v12    # "isDefaultSmsPackage":Z
    .restart local v14    # "mmsId":J
    .restart local v16    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .restart local v17    # "rateCtlr":Lcom/android/mms/util/RateController;
    .restart local v21    # "resultOK":Z
    .restart local v22    # "sendPdu":[B
    .restart local v23    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .restart local v25    # "uri":Landroid/net/Uri;
    .restart local v26    # "token":J
    .restart local v28    # "tokenKey":J
    :cond_d
    :try_start_8
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSubscriptionId:I

    move/from16 v30, v0

    .line 150
    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionUtil;->shouldParseContentDisposition(I)Z

    move-result v24

    .line 152
    .local v24, "shouldParseContentDisposition":Z
    new-instance v30, Lcom/google/android/mms/pdu/PduParser;

    .line 153
    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getData()[B

    move-result-object v31

    .line 152
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/pdu/SendConf;

    .line 154
    .local v6, "conf":Lcom/google/android/mms/pdu/SendConf;
    if-nez v6, :cond_e

    .line 155
    const-string/jumbo v30, "No M-Send.conf received."

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 158
    new-instance v30, Ljava/lang/NullPointerException;

    const-string/jumbo v31, "No M-Send.conf"

    invoke-direct/range {v30 .. v31}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 163
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v18

    .line 164
    .local v18, "reqId":[B
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v7

    .line 165
    .local v7, "confId":[B
    move-object/from16 v0, v18

    invoke-static {v0, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v30

    if-nez v30, :cond_10

    .line 166
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Inconsistent Transaction-ID: req="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 167
    new-instance v31, Ljava/lang/String;

    sget-object v32, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 166
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 167
    const-string/jumbo v31, ", conf="

    .line 166
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 167
    new-instance v31, Ljava/lang/String;

    .line 168
    sget-object v32, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 167
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 166
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v30

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_f

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 208
    const-string/jumbo v30, "Delivery failed."

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 210
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/SendTransaction;->notifyNetworkHandler()V

    .line 169
    return-void

    .line 175
    :cond_10
    :try_start_9
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v19

    .line 177
    .local v19, "respStatus":I
    const/16 v30, 0x80

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    .line 178
    const/16 v30, 0x84

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    .line 179
    const/16 v30, 0x82

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 183
    :cond_11
    :goto_3
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/conversations/transaction/SendTransaction;->mPermanentError:Z

    .line 185
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v19

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateResponseStatusAndMessageId(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    .line 186
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Server returned an error code: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v30

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_13

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 208
    const-string/jumbo v30, "Delivery failed."

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 210
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/SendTransaction;->notifyNetworkHandler()V

    .line 187
    return-void

    .line 180
    :cond_14
    const/16 v30, 0x83

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    .line 181
    const/16 v30, 0x87

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    .line 182
    const/16 v30, 0x88

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    goto/16 :goto_3

    .line 190
    :cond_15
    :try_start_a
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "messageId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v13}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateResponseStatusAndMessageId(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v30, v0

    sget-object v31, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v25

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v30

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_16

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    sget-object v31, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 208
    const-string/jumbo v30, "Delivery failed."

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 210
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/SendTransaction;->notifyNetworkHandler()V

    goto/16 :goto_2

    .line 202
    .end local v5    # "apn$iterator":Ljava/util/Iterator;
    .end local v6    # "conf":Lcom/google/android/mms/pdu/SendConf;
    .end local v7    # "confId":[B
    .end local v8    # "date":J
    .end local v12    # "isDefaultSmsPackage":Z
    .end local v13    # "messageId":Ljava/lang/String;
    .end local v14    # "mmsId":J
    .end local v16    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v17    # "rateCtlr":Lcom/android/mms/util/RateController;
    .end local v18    # "reqId":[B
    .end local v19    # "respStatus":I
    .end local v21    # "resultOK":Z
    .end local v22    # "sendPdu":[B
    .end local v23    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .end local v24    # "shouldParseContentDisposition":Z
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v26    # "token":J
    .end local v28    # "tokenKey":J
    .restart local v10    # "e":Ljava/lang/Exception;
    :cond_17
    :try_start_b
    const-string/jumbo v30, "Exception during process of Sendtransaction"

    invoke-static/range {v30 .. v30}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1
.end method
