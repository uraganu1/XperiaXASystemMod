.class public Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;
.super Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;
.source "DownloadFailedAggregateHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;-><init>()V

    return-void
.end method

.method private getAggregatedNotificationSeveralConversations(Z)Landroid/app/Notification;
    .locals 12
    .param p1, "isAlert"    # Z

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getNumberOfItems()I

    move-result v8

    .line 87
    .local v8, "numberOfItems":I
    add-int/lit8 v10, v8, -0x1

    invoke-virtual {p0, v10}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;

    .line 88
    .local v4, "lastItem":Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getLastItemsInConversations()Ljava/util/List;

    move-result-object v5

    .line 89
    .local v5, "lastItemsInConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v6, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 91
    const v11, 0x7f0b004e

    .line 90
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 92
    invoke-static {v5}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getContentTextForAggregationOfSeveralConversations(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "contentText":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 96
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;->getSmallIcon()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 97
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v11

    .line 99
    invoke-static {v10, v11}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getContentIntentNoConversation(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 104
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {v4, v8}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;->getContentText(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 110
    :cond_0
    new-instance v2, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 111
    .local v2, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .line 112
    .local v9, "numberOfLastItems":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    const/4 v10, 0x5

    if-ge v1, v10, :cond_1

    .line 116
    add-int/lit8 v10, v9, -0x1

    sub-int/2addr v10, v1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;

    .line 117
    .local v3, "item":Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;->getConversationIdKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getNumberOfItems(Ljava/lang/String;)I

    move-result v7

    .line 118
    .local v7, "noOfMessages":I
    invoke-virtual {v3, v7}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;->getSummaryNotificationLineSingleConversation(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "item":Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;
    .end local v7    # "noOfMessages":I
    :cond_1
    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 122
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    return-object v10
.end method


# virtual methods
.method public createNotificationItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "isSilent"    # Z

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 36
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    if-nez v2, :cond_0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create the notification for uri "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    const-string/jumbo v4, ". The uri returned a null message."

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 39
    return-object v5

    .line 41
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 42
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 41
    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 43
    .local v3, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    new-instance v0, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getUniqueId(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)I

    move-result v5

    move v4, p3

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 46
    .local v0, "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->setGroupType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 47
    return-object v0
.end method

.method public createNotificationItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .locals 1
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "isSilent"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionsForUpdatedState(Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 11
    .param p1, "isAlert"    # Z

    .prologue
    const/4 v9, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getNumberOfItems()I

    move-result v8

    .line 60
    .local v8, "numberOfItems":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getNumberOfConversations()I

    move-result v7

    .line 61
    .local v7, "numberOfConversations":I
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 63
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    if-ne v7, v9, :cond_1

    .line 64
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;

    .line 65
    .local v2, "dfItem":Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;
    invoke-virtual {v2, v8, p1}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;->getSingleNotification(IZ)Landroid/app/Notification;

    move-result-object v9

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v10

    .line 65
    invoke-interface {v0, v9, v10}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    .line 81
    .end local v2    # "dfItem":Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    if-le v7, v9, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getLastItemsInConversations()Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .local v3, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    move-object v2, v3

    .line 71
    check-cast v2, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;

    .line 72
    .restart local v2    # "dfItem":Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;->getConversationIdKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getNumberOfItems(Ljava/lang/String;)I

    move-result v6

    .line 73
    .local v6, "noOfMessages":I
    invoke-virtual {v2, v6}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;->getWearableNotification(I)Landroid/app/Notification;

    move-result-object v9

    .line 74
    invoke-interface {v3}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getNotificationId()I

    move-result v10

    .line 73
    invoke-interface {v0, v9, v10}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_1

    .line 77
    .end local v2    # "dfItem":Lcom/sonyericsson/conversations/notifications/DownloadFailedNotificationItem;
    .end local v3    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .end local v6    # "noOfMessages":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getAggregatedNotificationSeveralConversations(Z)Landroid/app/Notification;

    move-result-object v1

    .line 78
    .local v1, "aggregatedNotification":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DownloadFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v9

    invoke-interface {v0, v1, v9}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_0
.end method

.method protected getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DOWNLOAD_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    return-object v0
.end method
