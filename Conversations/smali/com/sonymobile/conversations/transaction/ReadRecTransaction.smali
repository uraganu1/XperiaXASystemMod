.class public Lcom/sonymobile/conversations/transaction/ReadRecTransaction;
.super Lcom/sonymobile/conversations/transaction/Transaction;
.source "ReadRecTransaction.java"


# instance fields
.field private final mReadReportURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transId"    # I
    .param p3, "connectionSettings"    # Lcom/sonymobile/conversations/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "subscriptionId"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sonymobile/conversations/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;I)V

    .line 76
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    .line 77
    iput-object p4, p0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private getReadReportDataVersion1_0(Lcom/google/android/mms/pdu/ReadRecInd;)[B
    .locals 13
    .param p1, "readRecInd"    # Lcom/google/android/mms/pdu/ReadRecInd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x81

    .line 197
    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 198
    .local v5, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    invoke-virtual {v5, v12}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 199
    invoke-virtual {v5, v12}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 200
    const-string/jumbo v8, "auto"

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 201
    const/16 v8, 0x80

    invoke-virtual {v5, v8}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V

    .line 202
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadRecInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 203
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 205
    .local v0, "date":J
    invoke-virtual {v5, v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 206
    invoke-virtual {v5, v12}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    .line 207
    new-instance v7, Lcom/android/mms/model/TextModel;

    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "text/plain"

    const-string/jumbo v10, "text_0.txt"

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 209
    .local v7, "textModel":Lcom/android/mms/model/TextModel;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 210
    const v10, 0x7f0b0231

    .line 209
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 210
    const-string/jumbo v9, " "

    .line 209
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 211
    const/4 v9, 0x2

    const/4 v10, 0x3

    .line 210
    invoke-static {v9, v10}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v9

    .line 211
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 210
    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 209
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "messageBody":Ljava/lang/String;
    invoke-virtual {v7, v3}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    .line 215
    .local v6, "ssm":Lcom/android/mms/model/SlideshowModel;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v2, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v8, Lcom/android/mms/model/SlideModel;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v2}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/List;)V

    invoke-virtual {v6, v8}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 219
    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 220
    .local v4, "pduBody":Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v5, v4}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 222
    new-instance v8, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v9, p0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v5}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v8

    return-object v8
.end method

.method private getReadReportDataVersion1_1(Lcom/google/android/mms/pdu/ReadRecInd;)[B
    .locals 2
    .param p1, "readRecInd"    # Lcom/google/android/mms/pdu/ReadRecInd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/ReadRecInd;->setMmsVersion(I)V

    .line 181
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x3

    return v0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v12

    .line 86
    .local v12, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getDefaultTransactionSettings()Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    .line 90
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->isMmscSet()Z

    move-result v19

    if-nez v19, :cond_2

    .line 91
    const-string/jumbo v19, "MMSC is Empty"

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->notifyNetworkHandler()V

    .line 92
    return-void

    .line 97
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 99
    .local v14, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v19

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 100
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->getReadReportDataVersion1_0(Lcom/google/android/mms/pdu/ReadRecInd;)[B

    move-result-object v13

    .line 104
    .local v13, "postingData":[B
    :goto_0
    const/16 v16, 0x0

    .line 105
    .local v16, "resultOk":Z
    const/4 v11, 0x0

    .line 106
    .local v11, "lastException":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->getApns()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v11    # "lastException":Ljava/io/IOException;
    .local v5, "apn$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .local v4, "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->sendPdu([BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v15

    .line 109
    .local v15, "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    invoke-virtual {v15}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getHttpCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 110
    const/16 v16, 0x1

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->moveApnToTop(Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .end local v4    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v15    # "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    :cond_4
    if-nez v16, :cond_a

    .line 122
    if-eqz v11, :cond_8

    :goto_2
    :try_start_3
    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    .end local v5    # "apn$iterator":Ljava/util/Iterator;
    .end local v13    # "postingData":[B
    .end local v14    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v16    # "resultOk":Z
    :catch_0
    move-exception v8

    .line 133
    .local v8, "e":Ljava/io/IOException;
    :try_start_4
    sget-boolean v19, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v19, :cond_11

    .line 134
    const-string/jumbo v19, "Failed to send M-Read-Rec.Ind."

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->notifyNetworkHandler()V

    .line 81
    .end local v8    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 102
    .restart local v14    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->getReadReportDataVersion1_1(Lcom/google/android/mms/pdu/ReadRecInd;)[B

    move-result-object v13

    .restart local v13    # "postingData":[B
    goto/16 :goto_0

    .line 114
    .restart local v4    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .restart local v5    # "apn$iterator":Ljava/util/Iterator;
    .restart local v16    # "resultOk":Z
    :catch_1
    move-exception v10

    .line 115
    .local v10, "ex":Ljava/io/IOException;
    move-object v11, v10

    .line 116
    .local v11, "lastException":Ljava/io/IOException;
    sget-boolean v19, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v19, :cond_3

    .line 117
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to connect APN "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getServiceCenter()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 138
    .end local v4    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v5    # "apn$iterator":Ljava/util/Iterator;
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v11    # "lastException":Ljava/io/IOException;
    .end local v13    # "postingData":[B
    .end local v14    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v16    # "resultOk":Z
    :catch_2
    move-exception v6

    .line 139
    .local v6, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :try_start_6
    sget-boolean v19, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v19, :cond_10

    .line 140
    const-string/jumbo v19, "Failed to add standard values to the PDU."

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 157
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->notifyNetworkHandler()V

    goto :goto_4

    .line 122
    .end local v6    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .restart local v5    # "apn$iterator":Ljava/util/Iterator;
    .restart local v13    # "postingData":[B
    .restart local v14    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    .restart local v16    # "resultOk":Z
    :cond_8
    :try_start_7
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v19, " Failed to connect"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 144
    .end local v5    # "apn$iterator":Ljava/util/Iterator;
    .end local v13    # "postingData":[B
    .end local v14    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v16    # "resultOk":Z
    :catch_3
    move-exception v7

    .line 145
    .local v7, "e":Lcom/google/android/mms/MmsException;
    :try_start_8
    sget-boolean v19, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v19, :cond_f

    .line 146
    const-string/jumbo v19, "Failed to load message from Outbox."

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 157
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->notifyNetworkHandler()V

    goto/16 :goto_4

    .line 125
    .end local v7    # "e":Lcom/google/android/mms/MmsException;
    .restart local v5    # "apn$iterator":Ljava/util/Iterator;
    .restart local v13    # "postingData":[B
    .restart local v14    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    .restart local v16    # "resultOk":Z
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    move-object/from16 v19, v0

    sget-object v20, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v17

    .line 126
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 130
    const-string/jumbo v18, "m_type=135"

    .line 131
    .local v18, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->notifyNetworkHandler()V

    goto/16 :goto_4

    .line 150
    .end local v5    # "apn$iterator":Ljava/util/Iterator;
    .end local v13    # "postingData":[B
    .end local v14    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v16    # "resultOk":Z
    .end local v17    # "uri":Landroid/net/Uri;
    .end local v18    # "where":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 151
    .local v9, "e":Ljava/lang/RuntimeException;
    :try_start_a
    sget-boolean v19, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v19, :cond_d

    .line 152
    const-string/jumbo v19, "Unexpected RuntimeException."

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 157
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v19

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->notifyNetworkHandler()V

    goto/16 :goto_4

    .line 154
    :cond_d
    :try_start_b
    const-string/jumbo v19, "Unexpected RuntimeException."

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    .line 156
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v19

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v20

    sget-object v21, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual/range {v20 .. v21}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;->notifyNetworkHandler()V

    .line 156
    throw v19

    .line 148
    .restart local v7    # "e":Lcom/google/android/mms/MmsException;
    :cond_f
    :try_start_c
    const-string/jumbo v19, "Failed to load message from Outbox."

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 142
    .end local v7    # "e":Lcom/google/android/mms/MmsException;
    .restart local v6    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_10
    const-string/jumbo v19, "Failed to add standard values to the PDU."

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 136
    .end local v6    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .restart local v8    # "e":Ljava/io/IOException;
    :cond_11
    const-string/jumbo v19, "Failed to send M-Read-Rec.Ind."

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3
.end method
