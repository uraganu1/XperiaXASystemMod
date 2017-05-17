.class public Lcom/sonymobile/conversations/transaction/RetrieveTransaction;
.super Lcom/sonymobile/conversations/transaction/Transaction;
.source "RetrieveTransaction.java"


# instance fields
.field private final mContentLocation:Ljava/lang/String;

.field private final mManualRequest:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/sonymobile/conversations/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "manualRequest"    # Z
    .param p6, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/sonymobile/conversations/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;I)V

    .line 75
    const-string/jumbo v0, "content://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 77
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/sonymobile/conversations/transaction/TransactionInvokeProviderWrapper;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mId:Ljava/lang/String;

    .line 87
    iput-boolean p5, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mManualRequest:Z

    .line 72
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    const-string/jumbo v1, "Initializing from X-Mms-Content-Location is abandoned!"

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;Ljava/lang/String;Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)V
    .locals 4
    .param p1, "rc"    # Lcom/google/android/mms/pdu/RetrieveConf;
    .param p2, "mmsc"    # Ljava/lang/String;
    .param p3, "apn"    # Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v1

    .line 208
    .local v1, "tranId":[B
    if-eqz v1, :cond_0

    .line 211
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .line 214
    .local v0, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->sendPdu([BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    .line 202
    .end local v0    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local v0    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :cond_1
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-virtual {p0, p2, v2, p3}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->sendPdu(Ljava/lang/String;[BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isManualRequest()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mManualRequest:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 93
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mManualRequest:Z

    if-eqz v14, :cond_0

    .line 95
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    const-class v15, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;

    invoke-direct {v6, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v6, "intent":Landroid/content/Intent;
    sget-object v14, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_ACTION_MARK_XMS_AS_READ:Ljava/lang/String;

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    sget-object v14, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    if-nez v14, :cond_1

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-virtual {v14}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getDefaultTransactionSettings()Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    .line 106
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    invoke-virtual {v14}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->isMmscSet()Z

    move-result v14

    if-nez v14, :cond_3

    .line 107
    const-string/jumbo v14, "MMSC is Empty"

    invoke-static {v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    invoke-virtual {v14}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v14

    sget-object v15, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    if-eq v14, v15, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    sget-object v15, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 187
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 188
    const/16 v16, 0x82

    .line 187
    invoke-virtual/range {v14 .. v16}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 189
    const-string/jumbo v14, "Retrieval failed."

    invoke-static {v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 191
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->notifyNetworkHandler()V

    .line 108
    return-void

    .line 112
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/16 v16, 0x81

    invoke-virtual/range {v14 .. v16}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 115
    const/4 v9, 0x0

    .line 116
    .local v9, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    const/4 v13, 0x0

    .line 117
    .local v13, "workingApn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    invoke-virtual {v14}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->getApns()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v9    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v13    # "workingApn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .local v2, "apn$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .local v1, "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->getPdu(Ljava/lang/String;Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v8

    .line 120
    .local v8, "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    invoke-virtual {v8}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getHttpCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_7

    .line 123
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mSubscriptionId:I

    .line 122
    invoke-static {v14}, Lcom/sonymobile/conversations/transaction/TransactionUtil;->shouldParseContentDisposition(I)Z

    move-result v10

    .line 124
    .local v10, "shouldParseContentDisposition":Z
    new-instance v14, Lcom/google/android/mms/pdu/PduParser;

    .line 125
    invoke-virtual {v8}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getData()[B

    move-result-object v15

    .line 124
    invoke-direct {v14, v15, v10}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v9, v0

    .line 126
    .local v9, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    move-object v13, v1

    .line 127
    .local v13, "workingApn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    invoke-virtual {v14, v1}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->moveApnToTop(Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .end local v1    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v8    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .end local v9    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v10    # "shouldParseContentDisposition":Z
    .end local v13    # "workingApn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :cond_5
    if-nez v13, :cond_9

    .line 142
    :try_start_3
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "No working APN"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    .end local v2    # "apn$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 182
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    invoke-virtual {v14}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v14

    sget-object v15, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    if-eq v14, v15, :cond_6

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    sget-object v15, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 187
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 188
    const/16 v16, 0x82

    .line 187
    invoke-virtual/range {v14 .. v16}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 189
    const-string/jumbo v14, "Retrieval failed."

    invoke-static {v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 191
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->notifyNetworkHandler()V

    .line 91
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 130
    .restart local v1    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .restart local v2    # "apn$iterator":Ljava/util/Iterator;
    .restart local v8    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    :cond_7
    :try_start_5
    sget-boolean v14, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v14, :cond_4

    .line 131
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Server responded with HTTP "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getHttpCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 134
    .end local v8    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    :catch_1
    move-exception v7

    .line 135
    .local v7, "io":Ljava/io/IOException;
    :try_start_6
    sget-boolean v14, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v14, :cond_4

    .line 136
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "IOException on connecting with APN: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getServiceCenter()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 137
    const-string/jumbo v15, " : "

    .line 136
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 183
    .end local v1    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v2    # "apn$iterator":Ljava/util/Iterator;
    .end local v7    # "io":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    invoke-virtual {v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v15

    sget-object v16, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    sget-object v16, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 187
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 188
    const/16 v17, 0x82

    .line 187
    invoke-virtual/range {v15 .. v17}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 189
    const-string/jumbo v15, "Retrieval failed."

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 191
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->notifyNetworkHandler()V

    .line 183
    throw v14

    .line 145
    .restart local v2    # "apn$iterator":Ljava/util/Iterator;
    :cond_9
    if-nez v9, :cond_a

    .line 146
    :try_start_7
    new-instance v14, Lcom/google/android/mms/MmsException;

    const-string/jumbo v15, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v14, v15}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 149
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-static {v14, v9}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    sget-object v15, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 170
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionInvokeProviderWrapper;->deleteByUri(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_7
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 174
    const/4 v3, 0x0

    .line 176
    .local v3, "contentLocationUrl":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-static {v14}, Lcom/sonymobile/conversations/transaction/TransactionUtil;->getMmscFromContentUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v3

    .line 180
    .end local v3    # "contentLocationUrl":Ljava/lang/String;
    :goto_3
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v13}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;Ljava/lang/String;Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)V
    :try_end_9
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    invoke-virtual {v14}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v14

    sget-object v15, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    if-eq v14, v15, :cond_b

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    sget-object v15, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 187
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 188
    const/16 v16, 0x82

    .line 187
    invoke-virtual/range {v14 .. v16}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 189
    const-string/jumbo v14, "Retrieval failed."

    invoke-static {v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 191
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->notifyNetworkHandler()V

    goto/16 :goto_1

    .line 156
    :cond_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v11

    .line 158
    .local v11, "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseSCTimestamp()Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x0

    .line 157
    :goto_4
    invoke-virtual {v11, v9, v15, v14}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsRetrievedContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v12

    .line 161
    .local v12, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    sget-object v15, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual {v14, v15}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    invoke-virtual {v14, v12}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-static {v14, v12, v15}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->mSubscriptionId:I

    invoke-static {v14, v12, v15}, Lcom/sonyericsson/conversations/model/MessageUtil;->updateSubscriptionId(Landroid/content/Context;Landroid/net/Uri;I)V
    :try_end_a
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 158
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_d
    const/4 v14, 0x1

    goto :goto_4

    .line 177
    .end local v11    # "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .restart local v3    # "contentLocationUrl":Ljava/lang/String;
    :catch_2
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_3
.end method
