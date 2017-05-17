.class public Lcom/sonyericsson/conversations/notifications/NotificationStorage;
.super Ljava/lang/Object;
.source "NotificationStorage.java"


# static fields
.field private static synthetic -com_sonyericsson_conversations_notifications_NotificationManagerApi$NotificationTypeSwitchesValues:[I


# instance fields
.field private final mAggregateHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;",
            "Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPersistenceManager:Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

.field private final mSingleNotificationHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;",
            "Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_notifications_NotificationManagerApi$NotificationTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->-com_sonyericsson_conversations_notifications_NotificationManagerApi$NotificationTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->-com_sonyericsson_conversations_notifications_NotificationManagerApi$NotificationTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->values()[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->CLASS_0_MESSAGE_RECEIVED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DELIVERY_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DOWNLOAD_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SENDING_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_1_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_2_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SMS_REJECTED_MEMORY_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SWITCH_DEFAULT_SMS_APP_REMINDER:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->-com_sonyericsson_conversations_notifications_NotificationManagerApi$NotificationTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mSingleNotificationHandlerMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mAggregateHandlerMap:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mPersistenceManager:Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

    .line 30
    return-void
.end method

.method private createAggregateHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    .locals 4
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 207
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->-getcom_sonyericsson_conversations_notifications_NotificationManagerApi$NotificationTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No aggregate handler for type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 225
    const-string/jumbo v3, "specified"

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;-><init>()V

    .line 227
    .local v0, "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;->setContext(Landroid/content/Context;)V

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mPersistenceManager:Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->restoreHandlerItemsIfPossible(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;)V

    .line 229
    return-object v0

    .line 212
    .end local v0    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;-><init>()V

    .line 213
    .restart local v0    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    goto :goto_0

    .line 215
    .end local v0    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;-><init>()V

    .line 216
    .restart local v0    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    goto :goto_0

    .line 218
    .end local v0    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/conversations/notifications/DeliveryFailedAggregateHandler;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedAggregateHandler;-><init>()V

    .line 219
    .restart local v0    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    goto :goto_0

    .line 221
    .end local v0    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    :pswitch_4
    new-instance v0, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;-><init>()V

    .line 222
    .restart local v0    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createSingleNotificationHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;
    .locals 3
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 140
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->-getcom_sonyericsson_conversations_notifications_NotificationManagerApi$NotificationTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No single notification handler for type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, " "

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, "specified"

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/conversations/notifications/SimFullSingleNotificationHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    return-object v0

    .line 145
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/notifications/SmsRejectedMemoryFullSingleNotificationHandler;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 147
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/notifications/SwitchDefaultAppReminderNotificationHandler;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAggregateHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mAggregateHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    .line 189
    .local v0, "aggregateHandler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->createAggregateHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mAggregateHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    return-object v0
.end method

.method private getSingleHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mSingleNotificationHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;

    .line 168
    .local v0, "singleNotificationHandler":Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;
    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->createSingleNotificationHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mSingleNotificationHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getActionsToAddItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p4, "isSilent"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getAggregateHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    move-result-object v1

    .line 54
    .local v1, "aggregateHandler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    invoke-interface {v1, p1, p2, p4}, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;->getActionsToAddItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 55
    .local v0, "actionsToAddItem":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mPersistenceManager:Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

    invoke-virtual {v2, p3, v1}, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->saveHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;)V

    .line 56
    return-object v0
.end method

.method public getActionsToAddItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 3
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p3, "isSilent"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getAggregateHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    move-result-object v1

    .line 64
    .local v1, "aggregateHandler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    invoke-interface {v1, p1, p3}, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;->getActionsToAddItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 65
    .local v0, "actionsToAddItem":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mPersistenceManager:Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

    invoke-virtual {v2, p2, v1}, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->saveHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;)V

    .line 66
    return-object v0
.end method

.method public getActionsToAddItem(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getSingleHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;

    move-result-object v0

    .line 39
    .local v0, "singleNotificationHandler":Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;->getActionsToAddItem()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v1

    return-object v1
.end method

.method public getActionsToAddItem(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Landroid/os/Bundle;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getSingleHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;

    move-result-object v0

    .line 46
    .local v0, "singleNotificationHandler":Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;
    invoke-interface {v0, p2}, Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;->getActionsToAddItem(Landroid/os/Bundle;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v1

    return-object v1
.end method

.method public getActionsToRemoveAllNotificationsOfType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 4
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->isAggregate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getAggregateHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    move-result-object v1

    .line 73
    .local v1, "aggregateHandler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;->getActionsToRemoveAllNotifications()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 74
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mPersistenceManager:Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

    invoke-virtual {v3, p1, v1}, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->saveHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;)V

    .line 75
    return-object v0

    .line 77
    .end local v0    # "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .end local v1    # "aggregateHandler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getSingleHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;

    move-result-object v2

    .line 78
    .local v2, "singleHandler":Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/SingleNotificationHandlerApi;->getActionsToRemoveNotification()Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v3

    return-object v3
.end method

.method public getActionsToRemoveNotificationsForConversation(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 8
    .param p1, "conversationIdKey"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v2, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 86
    .local v2, "mergedActions":Lcom/sonyericsson/conversations/notifications/NotificationActions;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->values()[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 87
    .local v3, "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->isAggregate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getAggregateHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    move-result-object v1

    .line 90
    .local v1, "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    invoke-interface {v1, p1}, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;->getActionsToRemoveNotificationsForConversation(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 91
    .local v0, "actionsToRemove":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;->merge(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 92
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mPersistenceManager:Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

    invoke-virtual {v7, v3, v1}, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->saveHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;)V

    .line 86
    .end local v0    # "actionsToRemove":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .end local v1    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    .end local v3    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_1
    return-object v2
.end method

.method public getActionsToRemoveSpecificNotification(Landroid/net/Uri;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 117
    new-instance v2, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 118
    .local v2, "mergedActions":Lcom/sonyericsson/conversations/notifications/NotificationActions;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->values()[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 119
    .local v3, "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->isAggregate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getAggregateHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    move-result-object v1

    .line 121
    .local v1, "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    invoke-interface {v1, p1}, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;->getActionsToRemoveSpecificNotification(Landroid/net/Uri;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 123
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;->merge(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 124
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mPersistenceManager:Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

    invoke-virtual {v7, v3, v1}, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->saveHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;)V

    .line 118
    .end local v0    # "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .end local v1    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    .end local v3    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_1
    return-object v2
.end method

.method public getActionsToRemoveSpecificNotification(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 8
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v2, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 102
    .local v2, "mergedActions":Lcom/sonyericsson/conversations/notifications/NotificationActions;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->values()[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 103
    .local v3, "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->isAggregate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getAggregateHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;

    move-result-object v1

    .line 106
    .local v1, "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    invoke-interface {v1, p1}, Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;->getActionsToRemoveSpecificNotification(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 107
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;->merge(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 108
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->mPersistenceManager:Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;

    invoke-virtual {v7, v3, v1}, Lcom/sonyericsson/conversations/notifications/NotificationPersistenceManager;->saveHandler(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;)V

    .line 102
    .end local v0    # "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .end local v1    # "handler":Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_1
    return-object v2
.end method
