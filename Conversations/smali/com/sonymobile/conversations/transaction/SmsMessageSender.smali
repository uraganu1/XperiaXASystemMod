.class public Lcom/sonymobile/conversations/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/sonymobile/conversations/transaction/MessageSender;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field private mMessagePriority:I

.field private final mMessageText:Ljava/lang/String;

.field private final mNumberOfDests:I

.field private mParentUri:Landroid/net/Uri;

.field private mRequestDeliveryReport:Z

.field private mSendUris:[Landroid/net/Uri;

.field private final mServiceCenter:Ljava/lang/String;

.field private final mSubscriptionId:I

.field private final mThreadId:J

.field private mTimestamp:J

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromUriEx(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v0

    .line 104
    .local v0, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 106
    iput v2, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 107
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mTimestamp:J

    .line 109
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getThreadId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mThreadId:J

    .line 110
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getServiceCenter()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 111
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getOriginPrority()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessagePriority:I

    .line 112
    iput-object p2, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    .line 113
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getSubscriptionId()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSubscriptionId:I

    .line 114
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->init()V

    .line 101
    return-void

    .line 116
    :cond_0
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "Illegal URI"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dests"    # [Ljava/lang/String;
    .param p3, "msgText"    # Ljava/lang/String;
    .param p4, "threadId"    # J
    .param p6, "subscriptionId"    # I

    .prologue
    .line 80
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dests"    # [Ljava/lang/String;
    .param p3, "msgText"    # Ljava/lang/String;
    .param p4, "threadId"    # J
    .param p6, "priority"    # I
    .param p7, "subscriptionId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 86
    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    .end local p3    # "msgText":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 87
    array-length v1, p2

    iput v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 88
    iget v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v2, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mTimestamp:J

    .line 91
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v0

    .line 92
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_1

    .end local p4    # "threadId":J
    :goto_0
    iput-wide p4, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mThreadId:J

    .line 94
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mThreadId:J

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/model/SmsMessage;->getOutgoingServiceCenter(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 95
    iput-object v4, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    .line 96
    iput p6, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessagePriority:I

    .line 97
    iput p7, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSubscriptionId:I

    .line 98
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->init()V

    .line 84
    return-void

    .line 93
    .restart local p4    # "threadId":J
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-interface {v0, p1, v1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide p4

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v0, v0, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    .line 293
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    .line 291
    return-void
.end method

.method private prepareParentMessage()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 302
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v16

    if-ge v0, v3, :cond_0

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 307
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, "addresses":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 312
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mTimestamp:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mThreadId:J

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessagePriority:I

    .line 313
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSubscriptionId:I

    .line 311
    const/4 v4, -0x1

    .line 312
    const/4 v9, 0x0

    .line 311
    invoke-static/range {v3 .. v15}, Lcom/sonyericsson/conversations/model/SmsMessage;->addMessage(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;JZJJII)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v5    # "addresses":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-void

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method

.method private prepareRecipientMessage(I)V
    .locals 19
    .param p1, "recipientIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 324
    .local v18, "uri":Landroid/net/Uri;
    if-nez v18, :cond_3

    .line 328
    :try_start_0
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v17

    .line 330
    .local v17, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, p1

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    .line 332
    .local v10, "threadId":J
    :goto_0
    const-wide/16 v12, -0x1

    .line 334
    .local v12, "parentId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 337
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v5, v2, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 339
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mTimestamp:J

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    .line 340
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessagePriority:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSubscriptionId:I

    .line 338
    const/4 v4, 0x4

    .line 337
    invoke-static/range {v3 .. v15}, Lcom/sonyericsson/conversations/model/SmsMessage;->addMessage(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;JZJJII)Landroid/net/Uri;

    move-result-object v18

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 345
    const-class v3, Lcom/sonymobile/conversations/transaction/SmsSendQueuedMessagesReceiver;

    const/4 v4, 0x1

    .line 344
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v10    # "threadId":J
    .end local v12    # "parentId":J
    .end local v17    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    aput-object v18, v2, p1

    .line 320
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_1
    return-void

    .line 331
    .restart local v17    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .restart local v18    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mThreadId:J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v10    # "threadId":J
    goto :goto_0

    .line 347
    .end local v10    # "threadId":J
    .end local v17    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    :catch_0
    move-exception v16

    .line 348
    .local v16, "e":Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 351
    .end local v16    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mTimestamp:J

    .line 352
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessagePriority:I

    move-object/from16 v3, v18

    .line 351
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/conversations/model/SmsMessage;->updateMessage(Landroid/content/ContentResolver;Landroid/net/Uri;JZI)V

    goto :goto_1
.end method

.method private sendSingleMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 12
    .param p1, "smsManager"    # Landroid/telephony/SmsManager;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "serviceCenter"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .prologue
    .line 257
    if-lez p7, :cond_2

    .line 258
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/provider/CapabilityUtil;->isPriorityAvailable()Z

    move-result v0

    .line 257
    if-eqz v0, :cond_2

    .line 260
    const/4 v9, 0x0

    .line 262
    .local v9, "methodInvoked":Z
    :try_start_0
    const-class v0, Landroid/telephony/SmsManager;

    .line 263
    const-string/jumbo v1, "sendTextMessage"

    .line 264
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-class v3, Landroid/app/PendingIntent;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 265
    const-class v3, Landroid/app/PendingIntent;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 262
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 267
    .local v10, "sendTextMessageWithPriority":Ljava/lang/reflect/Method;
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p6, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 268
    const/4 v1, 0x4

    aput-object p5, v0, v1

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 267
    invoke-virtual {v10, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    const/4 v9, 0x1

    .line 280
    if-nez v9, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 256
    .end local v9    # "methodInvoked":Z
    .end local v10    # "sendTextMessageWithPriority":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v9    # "methodInvoked":Z
    :catch_0
    move-exception v6

    .line 277
    .local v6, "e":Ljava/lang/IllegalAccessException;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendTextMessage is not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    if-nez v9, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 273
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v8

    .line 274
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendTextMessage is not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    if-nez v9, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 270
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v7

    .line 271
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendTextMessage is not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    if-nez v9, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 279
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 280
    if-nez v9, :cond_1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 279
    :cond_1
    throw v11

    .end local v9    # "methodInvoked":Z
    :cond_2
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 287
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public prepareForSendMessage()Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    iget v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "No participants in this conversation."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->prepareParentMessage()V

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v0, v1, :cond_1

    .line 128
    invoke-direct {p0, v0}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->prepareRecipientMessage(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;

    :goto_1
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    aget-object v1, v1, v3

    goto :goto_1
.end method

.method public sendMessage(J)Z
    .locals 12
    .param p1, "token"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "Null message body or dest."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iget v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSubscriptionId:I

    invoke-static {v0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v2

    .line 147
    .local v2, "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->prepareParentMessage()V

    .line 149
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v10, v0, :cond_4

    .line 152
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCharacterConversionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSubscriptionId:I

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/SimCardUtils;->shallEnableFeatureCapitalCedilla(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v3, 0x1

    .line 161
    const/4 v4, 0x1

    .line 160
    invoke-static {v0, v1, v3, v4}, Lcom/sonyericsson/conversations/util/TextUtil;->convertForCostSaving(Ljava/lang/String;ZZI)Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, "textToSend":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v11}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 171
    .local v5, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v10}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->prepareRecipientMessage(I)V

    .line 173
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v0, v10

    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 174
    iget-boolean v6, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    aget-object v7, v0, v10

    iget v8, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessagePriority:I

    iget v9, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mSubscriptionId:I

    move-object v0, p0

    .line 173
    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->sendSubmitPdus(Landroid/content/Context;Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/net/Uri;II)V

    .line 149
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 163
    .end local v5    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "textToSend":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/sonyericsson/conversations/util/TextUtil;->convertForCostSaving(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "textToSend":Ljava/lang/String;
    goto :goto_1

    .line 166
    .end local v11    # "textToSend":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .restart local v11    # "textToSend":Ljava/lang/String;
    goto :goto_1

    .line 177
    .end local v11    # "textToSend":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method protected sendSubmitPdus(Landroid/content/Context;Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/net/Uri;II)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smsManager"    # Landroid/telephony/SmsManager;
    .param p3, "dest"    # Ljava/lang/String;
    .param p4, "serviceCenter"    # Ljava/lang/String;
    .param p6, "requestDeliveryReport"    # Z
    .param p7, "uri"    # Landroid/net/Uri;
    .param p8, "priority"    # I
    .param p9, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/SmsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/net/Uri;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p5, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 184
    .local v20, "partsCount":I
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v8, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v7, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p3 .. p3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 189
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 190
    if-eqz p6, :cond_0

    add-int/lit8 v3, v20, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_0

    .line 194
    new-instance v18, Landroid/content/Intent;

    .line 195
    const-string/jumbo v3, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    .line 196
    const-class v4, Lcom/sonymobile/conversations/transaction/MessageStatusReceiver;

    .line 194
    move-object/from16 v0, v18

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v18, "deliveryIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v3

    move-object/from16 v0, v18

    move/from16 v1, p9

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->addSubscriptionIdToIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    .line 199
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v18    # "deliveryIntent":Landroid/content/Intent;
    :goto_1
    new-instance v24, Landroid/content/Intent;

    .line 204
    const-string/jumbo v3, "com.android.mms.transaction.MESSAGE_SENT"

    .line 205
    const-class v4, Lcom/sonymobile/conversations/transaction/PrivilegedSmsSentReceiver;

    .line 203
    move-object/from16 v0, v24

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v24, "sentIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v3

    move-object/from16 v0, v24

    move/from16 v1, p9

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->addSubscriptionIdToIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    .line 207
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 201
    .end local v24    # "sentIntent":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v20

    if-le v0, v3, :cond_3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 212
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 182
    :cond_2
    :goto_2
    return-void

    .line 215
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 216
    .local v15, "text":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v13, 0x0

    .line 217
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 218
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v16, p8

    .line 219
    invoke-direct/range {v9 .. v16}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->sendSingleMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 222
    .end local v15    # "text":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 230
    .local v23, "re":Ljava/lang/RuntimeException;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "pi$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/PendingIntent;

    .line 232
    .local v21, "pi":Landroid/app/PendingIntent;
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 233
    :catch_1
    move-exception v17

    .line 234
    .local v17, "ce":Landroid/app/PendingIntent$CanceledException;
    sget-boolean v3, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 235
    const-string/jumbo v3, "CanceledException when calling send on pending intent."

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_5

    .line 216
    .end local v17    # "ce":Landroid/app/PendingIntent$CanceledException;
    .end local v21    # "pi":Landroid/app/PendingIntent;
    .end local v22    # "pi$iterator":Ljava/util/Iterator;
    .end local v23    # "re":Ljava/lang/RuntimeException;
    .restart local v15    # "text":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .local v13, "sentIntent":Landroid/app/PendingIntent;
    goto :goto_3

    .line 218
    .end local v13    # "sentIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .local v14, "deliveryIntent":Landroid/app/PendingIntent;
    goto :goto_4
.end method
