.class public Lcom/sonymobile/conversations/transaction/SmsReceiverService;
.super Lcom/sonymobile/conversations/transaction/ConversationService;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;,
        Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;
    }
.end annotation


# static fields
.field private static final STATUS_URI:Landroid/net/Uri;


# instance fields
.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/conversations/filter/ISmsFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceHandler:Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->handleMessageStatusReceived(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/conversations/transaction/SmsReceiverService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->handleSendQueuedMessages()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgs"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "content://sms/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->STATUS_URI:Landroid/net/Uri;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/ConversationService;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mFilters:Ljava/util/List;

    .line 104
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;-><init>(Lcom/sonymobile/conversations/transaction/SmsReceiverService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 511
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 513
    const/high16 v2, 0x18000000

    .line 511
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 516
    .local v0, "smsDialogIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 508
    return-void
.end method

.method private handleMessageStatusReceived(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 378
    .local v6, "messageUri":Landroid/net/Uri;
    const-string/jumbo v14, "pdu"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [B

    .line 379
    .local v7, "pdu":[B
    const-string/jumbo v14, "format"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "format":Ljava/lang/String;
    if-nez p2, :cond_0

    move-object/from16 p2, p0

    .line 382
    :cond_0
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 385
    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/sonyericsson/conversations/model/SmsMessage;->getMessageIdByUri(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 388
    .local v5, "messageId":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_8

    .line 389
    sget-object v14, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->STATUS_URI:Landroid/net/Uri;

    int-to-long v0, v5

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 390
    .local v13, "updateUri":Landroid/net/Uri;
    invoke-static {v7, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 391
    .local v4, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v8

    .line 397
    .local v8, "status":I
    const/4 v2, -0x1

    .line 398
    .local v2, "deliveryStatus":I
    const v14, 0xffff

    and-int/2addr v14, v8

    if-eqz v14, :cond_5

    .line 401
    const/16 v14, 0x40

    if-lt v8, v14, :cond_3

    .line 402
    const/4 v2, 0x3

    .line 422
    :cond_1
    :goto_0
    move-object/from16 v0, p2

    invoke-static {v0, v13, v8, v2}, Lcom/sonyericsson/conversations/model/SmsMessage;->updateReceivedMessageStatus(Landroid/content/Context;Landroid/net/Uri;II)V

    .line 425
    const/4 v14, 0x3

    if-ne v2, v14, :cond_2

    .line 430
    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/sonyericsson/conversations/model/MessageUtil;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v10

    .line 432
    .local v10, "threadId":J
    const-wide/16 v14, -0x1

    cmp-long v14, v10, v14

    if-eqz v14, :cond_2

    .line 433
    sget-object v14, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 434
    .local v12, "threadUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v14

    invoke-interface {v14}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v14

    .line 435
    sget-object v15, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DELIVERY_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/16 v16, 0x0

    .line 434
    move/from16 v0, v16

    invoke-interface {v14, v12, v15, v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 376
    .end local v2    # "deliveryStatus":I
    .end local v4    # "message":Landroid/telephony/SmsMessage;
    .end local v5    # "messageId":I
    .end local v8    # "status":I
    .end local v10    # "threadId":J
    .end local v12    # "threadUri":Landroid/net/Uri;
    .end local v13    # "updateUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    return-void

    .line 403
    .restart local v2    # "deliveryStatus":I
    .restart local v4    # "message":Landroid/telephony/SmsMessage;
    .restart local v5    # "messageId":I
    .restart local v8    # "status":I
    .restart local v13    # "updateUri":Landroid/net/Uri;
    :cond_3
    const/16 v14, 0x20

    if-lt v8, v14, :cond_4

    .line 404
    const/4 v2, 0x1

    goto :goto_0

    .line 405
    :cond_4
    const/4 v14, -0x1

    if-eq v8, v14, :cond_1

    .line 406
    const/4 v2, 0x2

    goto :goto_0

    .line 412
    :cond_5
    shr-int/lit8 v9, v8, 0x10

    .line 413
    .local v9, "statusCdma":I
    const/16 v14, 0x300

    if-lt v9, v14, :cond_6

    .line 414
    const/4 v2, 0x3

    goto :goto_0

    .line 415
    :cond_6
    const/16 v14, 0x200

    if-lt v9, v14, :cond_7

    .line 416
    const/4 v2, 0x1

    goto :goto_0

    .line 417
    :cond_7
    const/4 v14, -0x1

    if-eq v9, v14, :cond_1

    .line 418
    const/4 v2, 0x2

    goto :goto_0

    .line 439
    .end local v2    # "deliveryStatus":I
    .end local v4    # "message":Landroid/telephony/SmsMessage;
    .end local v8    # "status":I
    .end local v9    # "statusCdma":I
    .end local v13    # "updateUri":Landroid/net/Uri;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[MESSAGE_STATUS_RECEIVED] Can\'t find message for status update: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSendQueuedMessages()V
    .locals 4

    .prologue
    .line 357
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->moveOutboxMessagesToQueuedBox(Landroid/content/Context;)V

    .line 360
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "activeSubIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V

    .line 364
    return-void

    .line 366
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subId$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 367
    .local v1, "subId":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 368
    invoke-virtual {p0, v1}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V

    goto :goto_0

    .line 356
    .end local v1    # "subId":I
    :cond_2
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 248
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 249
    const-string/jumbo v4, "bundle is null"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 250
    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyServiceStateProxy()Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    move-result-object v1

    .line 255
    .local v1, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;
    invoke-interface {v1, v0}, Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 256
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    const-string/jumbo v4, "subscription"

    .line 257
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v5

    .line 256
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 258
    .local v3, "subId":I
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_1

    .line 259
    invoke-virtual {p0, v3}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V

    .line 245
    :cond_1
    return-void
.end method

.method private handleSmsReceived(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 338
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v4

    .line 339
    .local v4, "proxyService":Lcom/sonymobile/conversations/proxy/ProxyService;
    invoke-virtual {v4}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v3

    .line 340
    .local v3, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v3, p1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 341
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    invoke-direct {p0, p0, v2, p1}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 342
    .local v1, "messageUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 343
    aget-object v5, v2, v7

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "address":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/Apis;->getXmsManager()Lcom/sonyericsson/conversations/sms/XmsManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/sms/XmsManager;->xmsReceived(Ljava/lang/String;)V

    .line 346
    aget-object v5, v2, v7

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v5, v6, :cond_1

    .line 347
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v5

    .line 348
    sget-object v6, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v7, 0x1

    .line 347
    invoke-interface {v5, v1, v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 337
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 350
    .restart local v0    # "address":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v5

    .line 351
    sget-object v6, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 350
    invoke-interface {v5, v1, v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x0

    const-wide/16 v8, 0x1

    const/4 v6, 0x2

    .line 284
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v4

    if-nez v4, :cond_0

    .line 285
    const-string/jumbo v4, "Not the default SMS/MMS app, abort handling."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 289
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 290
    const-string/jumbo v4, "Sent SMS contained no URI reference."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 291
    return-void

    .line 293
    :cond_1
    const-string/jumbo v4, "result"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 294
    .local v1, "resultCode":I
    const-string/jumbo v4, "errorCode"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 295
    .local v0, "errorCode":I
    const-string/jumbo v4, "Conversations"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSmsSent resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " errorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 298
    :cond_2
    const-string/jumbo v4, "subscription"

    .line 299
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v5

    .line 298
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 300
    .local v2, "subId":I
    packed-switch v1, :pswitch_data_0

    .line 326
    :pswitch_0
    invoke-direct {p0, p2, v3, v2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->markSentMessageAsFailed(ILandroid/net/Uri;I)V

    .line 282
    :goto_0
    return-void

    .line 302
    :pswitch_1
    invoke-static {p0, v3, v6, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 303
    invoke-virtual {p0, v2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V

    goto :goto_0

    .line 307
    :pswitch_2
    const/4 v4, 0x6

    invoke-static {p0, v3, v4, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 308
    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 309
    const/4 v6, 0x1

    .line 308
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 312
    :pswitch_3
    invoke-static {p0, v3, v7, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 313
    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 317
    :pswitch_4
    const/16 v4, 0x200

    if-ne v0, v4, :cond_3

    .line 318
    invoke-static {p0, v3, v7, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 319
    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 320
    const/4 v6, 0x3

    .line 319
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 322
    :cond_3
    invoke-direct {p0, p2, v3, v2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->markSentMessageAsFailed(ILandroid/net/Uri;I)V

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 454
    iget-object v5, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mFilters:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "filter$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/conversations/filter/ISmsFilter;

    .line 455
    .local v0, "filter":Lcom/sonymobile/conversations/filter/ISmsFilter;
    invoke-interface {v0, p1, p2}, Lcom/sonymobile/conversations/filter/ISmsFilter;->doFilter(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 456
    return-object v7

    .line 461
    .end local v0    # "filter":Lcom/sonymobile/conversations/filter/ISmsFilter;
    :cond_1
    aget-object v3, p2, v8

    .line 462
    .local v3, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    .line 463
    .local v2, "protocolIdentifier":I
    const/16 v5, 0x40

    .line 470
    if-ne v2, v5, :cond_2

    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TP_PID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 472
    const-string/jumbo v6, ",Received Type0 Message, Ignoring It"

    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 473
    return-object v7

    .line 476
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getIgnoreClass2SmsEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 477
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v5, v6, :cond_3

    .line 479
    const-string/jumbo v5, "Receiving Class 2 Message, Ignoring It"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 480
    return-object v7

    .line 483
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v5, v6, :cond_4

    .line 484
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 485
    return-object v7

    .line 486
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 487
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 489
    :cond_5
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v4

    .line 493
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_6

    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 498
    :cond_6
    :goto_0
    return-object v4

    .line 494
    :cond_7
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserAllowedToUseMessaging()Z

    move-result v5

    .line 493
    if-eqz v5, :cond_6

    .line 496
    aget-object v5, p2, v8

    .line 495
    invoke-static {p1, v5}, Lcom/sonyericsson/conversations/model/SmsMessage;->isDuplicateMessage(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method private markSentMessageAsFailed(ILandroid/net/Uri;I)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "subId"    # I

    .prologue
    .line 331
    const/4 v0, 0x5

    invoke-static {p0, p2, v0, p1}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 332
    invoke-virtual {p0, p3}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V

    .line 333
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    .line 334
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SENDING_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v2, 0x0

    .line 333
    invoke-interface {v0, p2, v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 330
    return-void
.end method

.method private showInfoDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgs"    # Ljava/lang/String;

    .prologue
    .line 522
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    const-string/jumbo v2, "CLASS_ZERO_BODY"

    .line 522
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 524
    const-string/jumbo v2, "USE_AS_WARNING_DIALOG"

    const/4 v3, 0x1

    .line 522
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 525
    const/high16 v2, 0x30000000

    .line 522
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 528
    .local v0, "smsDialogIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 131
    const-string/jumbo v1, "Conversations"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string/jumbo v1, "onCreate"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mFilters:Ljava/util/List;

    new-instance v2, Lcom/sonymobile/conversations/filter/MobilboxProFilter;

    invoke-direct {v2}, Lcom/sonymobile/conversations/filter/MobilboxProFilter;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SmsReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 141
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 143
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 144
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v1, :cond_1

    .line 145
    new-instance v1, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;

    .line 130
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "Conversations"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string/jumbo v0, "onDestroy"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 166
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    .line 151
    const-string/jumbo v1, "Conversations"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartCommand: startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string/jumbo v2, " flags: "

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, " intent.getExtras(): "

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    if-nez p1, :cond_1

    const-string/jumbo v1, "intent is null"

    .line 152
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 159
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 160
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->mServiceHandler:Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return v3

    .line 155
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized sendFirstQueuedMessage(I)V
    .locals 6
    .param p1, "subscriptionId"    # I

    .prologue
    monitor-enter p0

    .line 264
    :try_start_0
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getFirstQueuedMessage(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 266
    .local v1, "msgUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 268
    :try_start_1
    new-instance v2, Lcom/sonymobile/conversations/transaction/SmsMessageSender;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 269
    .local v2, "sender":Lcom/sonymobile/conversations/transaction/SmsMessageSender;
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "sender":Lcom/sonymobile/conversations/transaction/SmsMessageSender;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 263
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Lcom/google/android/mms/MmsException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    .end local v1    # "msgUri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 276
    .restart local v1    # "msgUri":Landroid/net/Uri;
    :cond_1
    :try_start_3
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->isOutboxEmpty(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    const-class v3, Lcom/sonymobile/conversations/transaction/SmsSendQueuedMessagesReceiver;

    const/4 v4, 0x0

    .line 277
    invoke-static {p0, v3, v4}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
