.class public Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.source "DeliveryFailedNotificationItem.java"


# instance fields
.field private mMessage:Lcom/sonyericsson/conversations/model/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p4, "isSilent"    # Z
    .param p5, "uniqueNotificationId"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 31
    return-void
.end method

.method private getContentTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 150
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatBidiNumberString(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method private getNotificationBuilder(IZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "noOfMessages"    # I
    .param p2, "isAlert"    # Z

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 111
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentText(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "contentText":Ljava/lang/String;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 117
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 121
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 122
    if-eqz p2, :cond_0

    .line 123
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->isSilent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 126
    const/high16 v4, 0x7f080000

    .line 125
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->resIdToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    :cond_0
    return-object v2
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getContentText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    const v1, 0x7f0b0045

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentText(I)Ljava/lang/String;
    .locals 4
    .param p1, "noOfMessages"    # I

    .prologue
    const/4 v1, 0x1

    .line 99
    if-le p1, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 101
    const v2, 0x7f0b0044

    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSingleNotification(IZ)Landroid/app/Notification;
    .locals 1
    .param p1, "noOfMessages"    # I
    .param p2, "isAlert"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getNotificationBuilder(IZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSingleNotification(Z)Landroid/app/Notification;
    .locals 1
    .param p1, "isAlert"    # Z

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getNotificationBuilder(IZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f02005d

    return v0
.end method

.method public getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 48
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentText()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "contentText":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public getSummaryNotificationLineSingleConversation(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "noOfMessages"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentText(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "contentText":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getContentTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWearableNotification()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 66
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getNotificationBuilder(IZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 67
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public getWearableNotification(I)Landroid/app/Notification;
    .locals 2
    .param p1, "noOfMessages"    # I

    .prologue
    .line 72
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getNotificationBuilder(IZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 73
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
