.class public Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;
.super Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;
.source "JoynFailedAggregateHandler.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;-><init>()V

    return-void
.end method

.method private getAggregatedNotificationSeveralConversations(Z)Landroid/app/Notification;
    .locals 10
    .param p1, "isAlert"    # Z

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getNumberOfItems()I

    move-result v7

    .line 114
    .local v7, "numberOfItems":I
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {p0, v8}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v4

    .line 115
    .local v4, "lastItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getLastItemsInConversations()Ljava/util/List;

    move-result-object v5

    .line 116
    .local v5, "lastItemsInConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v6, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 118
    const v9, 0x7f0b004e

    .line 117
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 119
    invoke-static {v5}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getContentTextForAggregationOfSeveralConversations(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "contentText":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 123
    const v8, 0x7f020060

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 124
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v9

    .line 126
    invoke-static {v8, v9}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getContentIntentNoConversation(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 129
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 131
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 133
    new-instance v2, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 134
    .local v2, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    const/4 v8, 0x5

    if-ge v1, v8, :cond_0

    .line 136
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 137
    .local v3, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v3}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_0
    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationSoundAndVibration(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationLed(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 144
    invoke-interface {v4}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 147
    :cond_1
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public createNotificationItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "isSilent"    # Z

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public createNotificationItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .locals 7
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "isSilent"    # Z

    .prologue
    .line 37
    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/ImNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v6

    .line 39
    .local v6, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-interface {v6}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 41
    invoke-interface {v6}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 46
    .local v3, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :goto_0
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getUniqueId(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)I

    move-result v5

    .line 48
    .local v5, "uniqueId":I
    instance-of v1, p1, Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;

    if-eqz v1, :cond_1

    .line 49
    new-instance v0, Lcom/sonyericsson/conversations/notifications/JoynTextMessageFailedNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    .line 50
    check-cast v2, Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;

    move v4, p2

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/JoynTextMessageFailedNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 72
    .local v0, "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->setGroupType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 73
    return-object v0

    .line 43
    .end local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .end local v3    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v5    # "uniqueId":I
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 44
    invoke-interface {v6}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .restart local v3    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    goto :goto_0

    .line 52
    .restart local v5    # "uniqueId":I
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;

    if-eqz v1, :cond_2

    .line 53
    new-instance v0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    .line 54
    check-cast v2, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;

    move v4, p2

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .restart local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    goto :goto_1

    .line 56
    .end local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_2
    instance-of v1, p1, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    if-eqz v1, :cond_3

    .line 57
    new-instance v0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    .line 58
    check-cast v2, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    move v4, p2

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .restart local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    goto :goto_1

    .line 60
    .end local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_3
    instance-of v1, p1, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;

    if-eqz v1, :cond_4

    .line 61
    new-instance v0, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    .line 62
    check-cast v2, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;

    move v4, p2

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .restart local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    goto :goto_1

    .line 64
    .end local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_4
    instance-of v1, p1, Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;

    if-eqz v1, :cond_5

    .line 65
    new-instance v0, Lcom/sonyericsson/conversations/notifications/JoynUndeliveredNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    .line 66
    check-cast v2, Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;

    move v4, p2

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/JoynUndeliveredNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .restart local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    goto :goto_1

    .line 69
    .end local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a valid im notification type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getActionsForUpdatedState(Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 9
    .param p1, "isAlert"    # Z

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getNumberOfConversations()I

    move-result v6

    .line 84
    .local v6, "numberOfConversations":I
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 86
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    if-nez v6, :cond_0

    .line 87
    return-object v0

    .line 88
    :cond_0
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getNumberOfItems()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v5

    .line 90
    .local v5, "lastItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v5, p1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSingleNotification(Z)Landroid/app/Notification;

    move-result-object v7

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v8

    .line 90
    invoke-interface {v0, v7, v8}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    .line 109
    .end local v5    # "lastItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getLastItemsInConversations()Ljava/util/List;

    move-result-object v4

    .line 99
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 100
    .local v2, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getWearableNotification()Landroid/app/Notification;

    move-result-object v7

    .line 101
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getNotificationId()I

    move-result v8

    .line 100
    invoke-interface {v0, v7, v8}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_1

    .line 105
    .end local v2    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getAggregatedNotificationSeveralConversations(Z)Landroid/app/Notification;

    move-result-object v1

    .line 106
    .local v1, "aggregatedNotification":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFailedAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v7

    invoke-interface {v0, v1, v7}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_0
.end method

.method protected getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    return-object v0
.end method
