.class public Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;
.super Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;
.source "ReceivedMessageAggregateHandler.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/AggregateHandlerApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BaseAggregateHandler;-><init>()V

    return-void
.end method

.method private getAggregatedNotificationSeveralConversations(Z)Landroid/app/Notification;
    .locals 12
    .param p1, "isAlert"    # Z

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getNumberOfItems()I

    move-result v7

    .line 166
    .local v7, "numberOfItems":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v4

    .line 167
    .local v4, "lastItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getLastItemsInConversations()Ljava/util/List;

    move-result-object v5

    .line 168
    .local v5, "lastItemsInConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v6, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 170
    const v10, 0x7f0b004e

    .line 169
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 171
    invoke-static {v5}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getContentTextForAggregationOfSeveralConversations(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "contentText":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 175
    const v9, 0x7f02005c

    invoke-virtual {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 176
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v10

    .line 178
    invoke-static {v9, v10}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getContentIntentNoConversation(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 181
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 183
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-object v9, v4

    .line 185
    check-cast v9, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;

    invoke-virtual {v9, v6}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 187
    new-instance v2, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 188
    .local v2, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .line 189
    .local v8, "numberOfLastItems":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    const/4 v9, 0x5

    if-ge v1, v9, :cond_0

    .line 192
    add-int/lit8 v9, v8, -0x1

    sub-int/2addr v9, v1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 193
    .local v3, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v3}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_0
    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 197
    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationSoundAndVibration(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 199
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationLed(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 200
    invoke-interface {v4}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 202
    :cond_1
    invoke-static {v6}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationPriorityAndCategory(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 203
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    return-object v9
.end method

.method private getAggregatedNotificationSingleConversation(Z)Landroid/app/Notification;
    .locals 8
    .param p1, "isAlert"    # Z

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getNumberOfItems()I

    move-result v4

    .line 132
    .local v4, "numberOfItems":I
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v2

    .line 133
    .local v2, "lastItem":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v3, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 135
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getContentText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 136
    const v6, 0x7f02005c

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 139
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 142
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 143
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getWearableExtender()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-object v6, v2

    .line 145
    check-cast v6, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;

    invoke-virtual {v6, v3}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 147
    new-instance v1, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 148
    .local v1, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    add-int/lit8 v6, v4, -0x5

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 149
    .local v5, "start":I
    move v0, v5

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 155
    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationSoundAndVibration(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationLed(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 158
    invoke-interface {v2}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 160
    :cond_1
    invoke-static {v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationPriorityAndCategory(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 161
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public createNotificationItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "isSilent"    # Z

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 38
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    if-nez v2, :cond_0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create the notification for uri "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    const-string/jumbo v4, ". The uri returned a null message."

    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 41
    return-object v5

    .line 43
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 44
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 43
    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 45
    .local v3, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getUniqueId(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)I

    move-result v5

    move v4, p3

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 47
    .local v0, "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->setGroupType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 48
    return-object v0
.end method

.method public createNotificationItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Z)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .locals 7
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "isSilent"    # Z

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/ImNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v6

    .line 56
    .local v6, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-interface {v6}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 58
    invoke-interface {v6}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 63
    .local v3, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :goto_0
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getUniqueId(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)I

    move-result v5

    .line 65
    .local v5, "uniqueId":I
    instance-of v1, p1, Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    if-eqz v1, :cond_1

    .line 66
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    .line 67
    check-cast v2, Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    move v4, p2

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImTextNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 80
    .local v0, "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->setGroupType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 81
    return-object v0

    .line 60
    .end local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    .end local v3    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v5    # "uniqueId":I
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 61
    invoke-interface {v6}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .restart local v3    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    goto :goto_0

    .line 68
    .restart local v5    # "uniqueId":I
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    if-eqz v1, :cond_2

    .line 69
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    .line 70
    check-cast v2, Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    move v4, p2

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImFileNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .restart local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    goto :goto_1

    .line 71
    .end local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_2
    instance-of v1, p1, Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;

    if-eqz v1, :cond_3

    .line 72
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    .line 73
    check-cast v2, Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;

    move v4, p2

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .restart local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    goto :goto_1

    .line 77
    .end local v0    # "notification":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a valid im notification type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActionsForUpdatedState(Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    .locals 8
    .param p1, "isAlert"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getNumberOfItems()I

    move-result v5

    .line 92
    .local v5, "numberOfItems":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getNumberOfConversations()I

    move-result v4

    .line 93
    .local v4, "numberOfConversations":I
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationActions;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/notifications/NotificationActions;-><init>()V

    .line 95
    .local v0, "actions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    if-nez v4, :cond_0

    .line 96
    return-object v0

    .line 97
    :cond_0
    if-ne v4, v7, :cond_2

    .line 98
    if-ne v5, v7, :cond_1

    .line 99
    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getItem(I)Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getSingleNotification(Z)Landroid/app/Notification;

    move-result-object v6

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v7

    .line 99
    invoke-interface {v0, v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    .line 127
    :goto_0
    return-object v0

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getAggregatedNotificationSingleConversation(Z)Landroid/app/Notification;

    move-result-object v6

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v7

    .line 107
    invoke-interface {v0, v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getLastItemsInConversations()Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 119
    .local v1, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getWearableNotification()Landroid/app/Notification;

    move-result-object v6

    .line 120
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getNotificationId()I

    move-result v7

    .line 119
    invoke-interface {v0, v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_1

    .line 123
    .end local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getAggregatedNotificationSeveralConversations(Z)Landroid/app/Notification;

    move-result-object v6

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedMessageAggregateHandler;->getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v7

    .line 123
    invoke-interface {v0, v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->addNotificationToShow(Landroid/app/Notification;I)V

    goto :goto_0
.end method

.method public getType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    return-object v0
.end method
