.class public Lcom/sonymobile/conversations/transaction/TransactionService;
.super Lcom/sonymobile/conversations/transaction/ConversationService;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# instance fields
.field private final mCurrentNetworks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

.field private mStayAlive:Z

.field private volatile mStopService:Z


# direct methods
.method static synthetic -get0(Lcom/sonymobile/conversations/transaction/TransactionService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mCurrentNetworks:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/conversations/transaction/TransactionService;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/conversations/transaction/TransactionService;)Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/conversations/transaction/TransactionService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mStayAlive:Z

    return v0
.end method

.method static synthetic -get4(Lcom/sonymobile/conversations/transaction/TransactionService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mStopService:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonymobile/conversations/transaction/TransactionService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mStopService:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/conversations/transaction/TransactionService;ILcom/sonymobile/conversations/transaction/TransactionBundle;)Lcom/sonymobile/conversations/transaction/Transaction;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "transactionBundle"    # Lcom/sonymobile/conversations/transaction/TransactionBundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/conversations/transaction/TransactionService;->createTransaction(ILcom/sonymobile/conversations/transaction/TransactionBundle;)Lcom/sonymobile/conversations/transaction/Transaction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/conversations/transaction/TransactionService;Lcom/sonymobile/conversations/transaction/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/sonymobile/conversations/transaction/Transaction;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/TransactionService;->broadcastTransactionResult(Lcom/sonymobile/conversations/transaction/Transaction;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/conversations/transaction/TransactionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/TransactionService;->logEventQuit()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonymobile/conversations/transaction/TransactionService;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/conversations/transaction/TransactionService;->onLaunchStartService(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonymobile/conversations/transaction/TransactionService;I)V
    .locals 0
    .param p1, "startId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/TransactionService;->postStopSelfIfIdle(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonymobile/conversations/transaction/TransactionService;I)V
    .locals 0
    .param p1, "startId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/TransactionService;->stopSelfIfIdle(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/ConversationService;-><init>()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mStayAlive:Z

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mStopService:Z

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    .line 197
    const/4 v1, 0x2

    .line 196
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mCurrentNetworks:Landroid/util/SparseArray;

    .line 198
    new-instance v0, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;

    const-string/jumbo v1, "Transaction #"

    invoke-direct {v0, v1}, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 81
    return-void
.end method

.method private broadcastTransactionResult(Lcom/sonymobile/conversations/transaction/Transaction;)V
    .locals 7
    .param p1, "transaction"    # Lcom/sonymobile/conversations/transaction/Transaction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 723
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getState()Lcom/sonymobile/conversations/transaction/TransactionState;

    move-result-object v2

    .line 724
    .local v2, "transactionState":Lcom/sonymobile/conversations/transaction/TransactionState;
    invoke-virtual {v2}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v1

    .line 726
    .local v1, "state":Lcom/sonymobile/conversations/transaction/TransactionState$State;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "state"

    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/TransactionState$State;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    sget-object v3, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    if-ne v1, v3, :cond_0

    .line 729
    const-string/jumbo v3, "uri"

    invoke-virtual {v2}, Lcom/sonymobile/conversations/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 732
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 750
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_1

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update: broadcast transaction result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/TransactionState$State;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 754
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sonymobile/conversations/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 722
    return-void

    .line 735
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v3

    .line 736
    invoke-virtual {v2}, Lcom/sonymobile/conversations/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 735
    invoke-interface {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Landroid/net/Uri;)V

    .line 737
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v3

    .line 738
    invoke-virtual {v2}, Lcom/sonymobile/conversations/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 739
    sget-object v5, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 740
    const/4 v6, 0x0

    .line 737
    invoke-interface {v3, v4, v5, v6}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 743
    :pswitch_1
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/RateController;->update()V

    goto :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createTransaction(ILcom/sonymobile/conversations/transaction/TransactionBundle;)Lcom/sonymobile/conversations/transaction/Transaction;
    .locals 20
    .param p1, "serviceId"    # I
    .param p2, "transactionBundle"    # Lcom/sonymobile/conversations/transaction/TransactionBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 467
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/conversations/transaction/TransactionService;->createTransactionSettings(Lcom/sonymobile/conversations/transaction/TransactionBundle;)Lcom/sonymobile/conversations/transaction/TransactionSettings;

    move-result-object v5

    .line 468
    .local v5, "transactionSettings":Lcom/sonymobile/conversations/transaction/TransactionSettings;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getSubscriptionId()I

    move-result v7

    .line 470
    .local v7, "subscriptionId":I
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getTransactionType()I

    move-result v19

    .line 472
    .local v19, "transactionType":I
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createTransaction: transactionType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 476
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, "uri":Ljava/lang/String;
    packed-switch v19, :pswitch_data_0

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid transaction type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x0

    .line 523
    :goto_0
    return-object v2

    .line 481
    :pswitch_0
    if-eqz v6, :cond_1

    .line 482
    new-instance v2, Lcom/sonymobile/conversations/transaction/NotificationTransaction;

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Ljava/lang/String;I)V

    .local v2, "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    goto :goto_0

    .line 486
    .end local v2    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getPushData()[B

    move-result-object v17

    .line 487
    .local v17, "pushData":[B
    invoke-static {v7}, Lcom/sonymobile/conversations/transaction/TransactionUtil;->shouldParseContentDisposition(I)Z

    move-result v18

    .line 489
    .local v18, "shouldParseContentDisposition":Z
    new-instance v16, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct/range {v16 .. v18}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    .line 490
    .local v16, "parser":Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v15

    .line 493
    .local v15, "ind":Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v3

    .line 492
    const/16 v4, 0x82

    .line 493
    if-ne v3, v4, :cond_2

    .line 494
    new-instance v2, Lcom/sonymobile/conversations/transaction/NotificationTransaction;

    move-object v12, v15

    .line 495
    check-cast v12, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v8, v2

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object v11, v5

    move v13, v7

    .line 494
    invoke-direct/range {v8 .. v13}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;I)V

    .line 493
    .restart local v2    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    goto :goto_0

    .line 497
    .end local v2    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :cond_2
    const-string/jumbo v3, "Invalid PUSH data."

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    goto :goto_0

    .line 504
    .end local v2    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    .end local v15    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v16    # "parser":Lcom/google/android/mms/pdu/PduParser;
    .end local v17    # "pushData":[B
    .end local v18    # "shouldParseContentDisposition":Z
    :pswitch_1
    new-instance v2, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    .line 505
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 506
    const-string/jumbo v4, "manual_request"

    const/4 v8, 0x0

    .line 505
    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    move-object v8, v2

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object v11, v5

    move-object v12, v6

    move v14, v7

    .line 504
    invoke-direct/range {v8 .. v14}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Ljava/lang/String;ZI)V

    .line 508
    .local v2, "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    goto :goto_0

    .line 510
    .end local v2    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :pswitch_2
    new-instance v2, Lcom/sonymobile/conversations/transaction/SendTransaction;

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/conversations/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Ljava/lang/String;I)V

    .line 512
    .restart local v2    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    goto :goto_0

    .line 514
    .end local v2    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :pswitch_3
    new-instance v2, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/conversations/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;Ljava/lang/String;I)V

    .line 516
    .restart local v2    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createTransactionSettings(Lcom/sonymobile/conversations/transaction/TransactionBundle;)Lcom/sonymobile/conversations/transaction/TransactionSettings;
    .locals 5
    .param p1, "bundle"    # Lcom/sonymobile/conversations/transaction/TransactionBundle;

    .prologue
    .line 449
    const/4 v1, 0x0

    .line 453
    .local v1, "transactionSettings":Lcom/sonymobile/conversations/transaction/TransactionSettings;
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "mmsc":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 455
    new-instance v1, Lcom/sonymobile/conversations/transaction/TransactionSettings;

    .end local v1    # "transactionSettings":Lcom/sonymobile/conversations/transaction/TransactionSettings;
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getProxyPort()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getSubscriptionId()I

    move-result v4

    .line 455
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sonymobile/conversations/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 458
    :cond_0
    return-object v1
.end method

.method private getTransactionType(I)I
    .locals 4
    .param p1, "msgType"    # I

    .prologue
    .line 418
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    .line 419
    .local v1, "downloadManager":Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    .line 421
    .local v0, "autoDownload":Z
    sparse-switch p1, :sswitch_data_0

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 438
    const/4 v2, -0x1

    return v2

    .line 428
    :sswitch_0
    if-nez v0, :cond_0

    .line 429
    const/4 v2, 0x0

    return v2

    .line 431
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 433
    :sswitch_1
    const/4 v2, 0x3

    return v2

    .line 435
    :sswitch_2
    const/4 v2, 0x2

    return v2

    .line 421
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private static isTransientFailure(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 413
    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchServiceStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 264
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 266
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method private launchTransaction(ILcom/sonymobile/conversations/transaction/TransactionBundle;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "txnBundle"    # Lcom/sonymobile/conversations/transaction/TransactionBundle;

    .prologue
    .line 527
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 528
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 529
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 531
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchTransaction: sending message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    return-void
.end method

.method private logEventQuit()V
    .locals 5

    .prologue
    .line 693
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_2

    .line 694
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mCurrentNetworks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 695
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mCurrentNetworks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 696
    .local v2, "key":I
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mCurrentNetworks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    .line 697
    .local v0, "handler":Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
    if-nez v0, :cond_0

    .line 694
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    :cond_0
    const-string/jumbo v3, "there are "

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    .line 701
    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNumberOfProcessing()I

    move-result v4

    .line 700
    invoke-virtual {v3, v4}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    .line 702
    const-string/jumbo v4, " transactions processing on subscription "

    .line 700
    invoke-virtual {v3, v4}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 705
    const-string/jumbo v3, "there are "

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    .line 706
    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNumberOfPending()I

    move-result v4

    .line 705
    invoke-virtual {v3, v4}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    .line 707
    const-string/jumbo v4, " transactions pending on subscription "

    .line 705
    invoke-virtual {v3, v4}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    goto :goto_1

    .line 712
    .end local v0    # "handler":Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
    .end local v2    # "key":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retry alarm set to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sonymobile/conversations/transaction/RetryScheduler;->isRetryAlarmEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MmsConnectivityReceiver is enabled? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 715
    const-class v4, Lcom/sonymobile/conversations/transaction/MmsConnectivityReceiver;

    .line 714
    invoke-static {p0, v4}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->getComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    .line 713
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MmsBootRetryReceiver is enabled? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 718
    const-class v4, Lcom/sonymobile/conversations/transaction/MmsBootRetryReceiver;

    .line 717
    invoke-static {p0, v4}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->getComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    .line 716
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 692
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private onLaunchStartService(Landroid/content/Intent;I)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 271
    sget-boolean v17, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v17, :cond_0

    .line 272
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "onLaunchStartService: #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " intent="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "action":Ljava/lang/String;
    sget-boolean v17, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v17, :cond_1

    .line 279
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "onLaunchStartService: launch transaction by action: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 282
    :cond_1
    const-string/jumbo v17, "android.intent.action.ACTION_ONBOOT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string/jumbo v17, "android.intent.action.ACTION_ONCONNECTIVITY"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 283
    const-string/jumbo v17, "android.intent.action.ACTION_HANDLE_PENDING"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 282
    if-nez v17, :cond_2

    .line 283
    const-string/jumbo v17, "android.intent.action.ACTION_ONALARM"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 282
    if-nez v17, :cond_2

    .line 284
    const-string/jumbo v17, "android.intent.action.ACTION_SEND_TRANSACTION"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 282
    if-nez v17, :cond_2

    .line 285
    const-string/jumbo v17, "android.intent.action.ACTION_READREC_TRANSACTION"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 282
    if-eqz v17, :cond_e

    .line 286
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 287
    .local v10, "dueTime":J
    const-string/jumbo v17, "android.intent.action.ACTION_HANDLE_PENDING"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string/jumbo v17, "android.intent.action.ACTION_ONBOOT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 288
    const-string/jumbo v17, "android.intent.action.ACTION_ONCONNECTIVITY"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 287
    if-eqz v17, :cond_4

    .line 290
    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    .line 293
    :cond_4
    const/4 v8, 0x0

    .line 295
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getPendingMessages(J)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 299
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    sget-boolean v17, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v17, :cond_5

    .line 300
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "get pending messages before: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 302
    :cond_5
    if-eqz v8, :cond_c

    .line 304
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 306
    .local v7, "count":I
    sget-boolean v17, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v17, :cond_6

    .line 307
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "onStart: cursor.count="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 310
    :cond_6
    if-nez v7, :cond_8

    .line 311
    sget-boolean v17, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v17, :cond_7

    .line 312
    const-string/jumbo v17, "onStart: No pending messages. Stopping service."

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 315
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 316
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/conversations/transaction/TransactionService;->postStopSelfIfIdle(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 317
    return-void

    .line 296
    .end local v7    # "count":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 297
    .local v9, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v17, "get pending messages failed"

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 321
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Lcom/google/android/mms/MmsException;
    .restart local v7    # "count":I
    :cond_8
    :try_start_2
    const-string/jumbo v17, "msg_id"

    .line 320
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 323
    .local v5, "columnIndexOfMsgId":I
    const-string/jumbo v17, "msg_type"

    .line 322
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 325
    .local v6, "columnIndexOfMsgType":I
    :goto_1
    :pswitch_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 326
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 328
    .local v13, "msgType":I
    sget-object v17, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 332
    .local v16, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    .line 331
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getValidSubscriptionIdForMessage(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v14

    .line 334
    .local v14, "subscriptionId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sonymobile/conversations/transaction/TransactionService;->getTransactionType(I)I

    move-result v15

    .line 336
    .local v15, "transactionType":I
    packed-switch v15, :pswitch_data_0

    .line 357
    :cond_9
    new-instance v3, Lcom/sonymobile/conversations/transaction/TransactionBundle;

    .line 358
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    .line 357
    :goto_2
    move-object/from16 v0, v17

    invoke-direct {v3, v15, v0}, Lcom/sonymobile/conversations/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 359
    .local v3, "args":Lcom/sonymobile/conversations/transaction/TransactionBundle;
    invoke-virtual {v3, v14}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->setSubscriptionId(I)V

    .line 360
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/conversations/transaction/TransactionService;->launchTransaction(ILcom/sonymobile/conversations/transaction/TransactionBundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 364
    .end local v3    # "args":Lcom/sonymobile/conversations/transaction/TransactionBundle;
    .end local v5    # "columnIndexOfMsgId":I
    .end local v6    # "columnIndexOfMsgType":I
    .end local v7    # "count":I
    .end local v13    # "msgType":I
    .end local v14    # "subscriptionId":I
    .end local v15    # "transactionType":I
    .end local v16    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v17

    .line 365
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 364
    throw v17

    .line 350
    .restart local v5    # "columnIndexOfMsgId":I
    .restart local v6    # "columnIndexOfMsgType":I
    .restart local v7    # "count":I
    .restart local v13    # "msgType":I
    .restart local v14    # "subscriptionId":I
    .restart local v15    # "transactionType":I
    .restart local v16    # "uri":Landroid/net/Uri;
    :pswitch_1
    :try_start_3
    const-string/jumbo v17, "err_type"

    .line 349
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 351
    .local v12, "failureType":I
    invoke-static {v12}, Lcom/sonymobile/conversations/transaction/TransactionService;->isTransientFailure(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v17

    if-nez v17, :cond_9

    .line 352
    if-eqz v12, :cond_9

    goto :goto_1

    .line 358
    .end local v12    # "failureType":I
    :cond_a
    const/16 v17, 0x0

    goto :goto_2

    .line 365
    .end local v13    # "msgType":I
    .end local v14    # "subscriptionId":I
    .end local v15    # "transactionType":I
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 270
    .end local v5    # "columnIndexOfMsgId":I
    .end local v6    # "columnIndexOfMsgType":I
    .end local v7    # "count":I
    .end local v10    # "dueTime":J
    :goto_3
    return-void

    .line 369
    .restart local v10    # "dueTime":J
    :cond_c
    sget-boolean v17, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v17, :cond_d

    .line 370
    const-string/jumbo v17, "onStart: No pending messages. Stopping service."

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 373
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 374
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/conversations/transaction/TransactionService;->postStopSelfIfIdle(I)V

    goto :goto_3

    .line 376
    .end local v10    # "dueTime":J
    :cond_e
    const-string/jumbo v17, "android.intent.action.ACTION_NOTIFY_TRANSACTION"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 377
    const-string/jumbo v17, "android.intent.action.ACTION_RETRIEVE_TRANSACTION"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 376
    if-eqz v17, :cond_12

    .line 378
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 379
    .local v4, "bundle":Landroid/os/Bundle;
    if-nez v4, :cond_10

    .line 380
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "bundle is null when action is :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 381
    return-void

    .line 384
    :cond_10
    new-instance v3, Lcom/sonymobile/conversations/transaction/TransactionBundle;

    invoke-direct {v3, v4}, Lcom/sonymobile/conversations/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 385
    .restart local v3    # "args":Lcom/sonymobile/conversations/transaction/TransactionBundle;
    const-string/jumbo v17, "android.intent.action.ACTION_RETRIEVE_TRANSACTION"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v3}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 387
    invoke-static/range {v17 .. v18}, Lcom/sonyericsson/conversations/model/MessageUtil;->getValidSubscriptionIdForMessage(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v14

    .line 390
    .restart local v14    # "subscriptionId":I
    invoke-virtual {v3, v14}, Lcom/sonymobile/conversations/transaction/TransactionBundle;->setSubscriptionId(I)V

    .line 392
    .end local v14    # "subscriptionId":I
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/conversations/transaction/TransactionService;->launchTransaction(ILcom/sonymobile/conversations/transaction/TransactionBundle;)V

    goto :goto_3

    .line 394
    .end local v3    # "args":Lcom/sonymobile/conversations/transaction/TransactionBundle;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_12
    const-string/jumbo v17, "onStart: Invalid action!"

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 336
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postStopSelfCmd(II)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "startId"    # I

    .prologue
    .line 556
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postStopSelf, cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 559
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mStayAlive:Z

    .line 560
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 561
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 562
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 555
    return-void
.end method

.method private postStopSelfIfIdle(I)V
    .locals 1
    .param p1, "startId"    # I

    .prologue
    .line 552
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/conversations/transaction/TransactionService;->postStopSelfCmd(II)V

    .line 551
    return-void
.end method

.method private stopSelfIfIdle(I)V
    .locals 5
    .param p1, "startId"    # I

    .prologue
    .line 399
    const/4 v1, 0x1

    .line 400
    .local v1, "isIdle":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mCurrentNetworks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 401
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mCurrentNetworks:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mCurrentNetworks:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    .line 402
    .local v2, "networkHandler":Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_1
    const/4 v1, 0x0

    .line 407
    .end local v2    # "networkHandler":Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
    :cond_2
    if-eqz v1, :cond_3

    .line 408
    invoke-virtual {p0, p1}, Lcom/sonymobile/conversations/transaction/TransactionService;->stopSelf(I)V

    .line 398
    :cond_3
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Lcom/sonymobile/conversations/transaction/ConversationService;->onCreate()V

    .line 203
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 204
    const-string/jumbo v2, "Creating TransactionService"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 210
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "TransactionService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 213
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 214
    .local v0, "serviceLooper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 215
    new-instance v2, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;-><init>(Lcom/sonymobile/conversations/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    .line 201
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mStopService:Z

    .line 540
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 541
    const-string/jumbo v0, "Destroying TransactionService"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 538
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 221
    iget-boolean v0, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mStopService:Z

    if-eqz v0, :cond_2

    .line 222
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 223
    if-eqz p1, :cond_1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartCommand: will go stopping service by abort, return action + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    return v2

    .line 227
    :cond_1
    const-string/jumbo v0, "onStartCommand: will go stopping service by abort, intent is null"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_2
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_3

    .line 234
    if-eqz p1, :cond_4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartCommand: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "Action: "

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 245
    :cond_3
    :goto_1
    const-class v0, Lcom/sonymobile/conversations/transaction/MmsBootRetryReceiver;

    invoke-static {p0, v0, v3}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 251
    const-class v0, Lcom/sonymobile/conversations/transaction/MmsConnectivityReceiver;

    const/4 v1, 0x0

    .line 250
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 253
    invoke-static {p0}, Lcom/sonymobile/conversations/transaction/RetryScheduler;->cancelRetryAlarm(Landroid/content/Context;)V

    .line 255
    if-nez p1, :cond_5

    .line 256
    return v2

    .line 239
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartCommand: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": intent is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_5
    iput-boolean v3, p0, Lcom/sonymobile/conversations/transaction/TransactionService;->mStayAlive:Z

    .line 259
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/conversations/transaction/TransactionService;->launchServiceStart(Landroid/content/Intent;I)V

    .line 260
    return v2
.end method
