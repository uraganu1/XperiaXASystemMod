.class public Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;
.super Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;
.source "SendingFailedXmsAggregateHandler.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;-><init>()V

    return-void
.end method

.method private getAggregatedNotificationSeveralConversations(Z)Landroid/app/Notification;
    .locals 10
    .param p1, "isAlert"    # Z

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getNumberOfItems()I

    move-result v7

    .line 90
    .local v7, "numberOfItems":I
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {p0, v8}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v4

    .line 91
    .local v4, "lastItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getLastItemsInConversations()Ljava/util/List;

    move-result-object v5

    .line 92
    .local v5, "lastItemsInConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v6, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 94
    const v9, 0x7f0b004e

    .line 93
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 95
    invoke-static {v5}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getContentTextForAggregationOfSeveralConversations(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "contentText":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 99
    const v8, 0x7f020060

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 100
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v9

    .line 102
    invoke-static {v8, v9}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getContentIntentNoConversation(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 105
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 107
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 109
    new-instance v2, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 110
    .local v2, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    const/4 v8, 0x5

    if-ge v1, v8, :cond_0

    .line 112
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 113
    .local v3, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v3}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_0
    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 117
    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationSoundAndVibration(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationLed(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 120
    invoke-interface {v4}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 123
    :cond_1
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public createNotificationItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "isSilent"    # Z

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 32
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    if-nez v2, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create the notification for uri "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34
    const-string/jumbo v4, ". The uri returned a null message."

    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 35
    return-object v5

    .line 37
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 38
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 37
    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 39
    .local v3, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    new-instance v0, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getUniqueId(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)I

    move-result v5

    move v4, p3

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 41
    .local v0, "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->setGroupType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 42
    return-object v0
.end method

.method public createNotificationItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .locals 1
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "isSilent"    # Z

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getActionsForUpdatedState(Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 9
    .param p1, "isAlert"    # Z

    .prologue
    const/4 v7, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getNumberOfConversations()I

    move-result v6

    .line 60
    .local v6, "numberOfConversations":I
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 62
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    if-nez v6, :cond_0

    .line 63
    return-object v0

    .line 64
    :cond_0
    if-ne v6, v7, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getNumberOfItems()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v5

    .line 66
    .local v5, "lastItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v5, p1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSingleNotification(Z)Landroid/app/Notification;

    move-result-object v7

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v8

    .line 66
    invoke-interface {v0, v7, v8}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    .line 85
    .end local v5    # "lastItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_1
    :goto_0
    return-object v0

    .line 68
    :cond_2
    if-le v6, v7, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getLastItemsInConversations()Ljava/util/List;

    move-result-object v4

    .line 75
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 76
    .local v2, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getWearableNotification()Landroid/app/Notification;

    move-result-object v7

    .line 77
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getNotificationId()I

    move-result v8

    .line 76
    invoke-interface {v0, v7, v8}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_1

    .line 81
    .end local v2    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getAggregatedNotificationSeveralConversations(Z)Landroid/app/Notification;

    move-result-object v1

    .line 82
    .local v1, "aggregatedNotification":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendingFailedXmsAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v7

    invoke-interface {v0, v1, v7}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_0
.end method

.method protected getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SENDING_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    return-object v0
.end method
