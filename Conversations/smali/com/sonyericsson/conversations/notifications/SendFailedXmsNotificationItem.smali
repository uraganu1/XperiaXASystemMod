.class public Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.source "SendFailedXmsNotificationItem.java"


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
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 31
    return-void
.end method

.method private getContentTitle()Landroid/text/SpannableStringBuilder;
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 118
    const v3, 0x7f0b004e

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 121
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 123
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatBidiNumberString(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method private getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "isAlert"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getSmallIcon()I

    move-result v3

    .line 67
    .local v3, "smallIcon":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContentTitle()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 68
    .local v1, "contentTitle":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContentText()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "contentText":Ljava/lang/String;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->isSilent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->updateNotificationSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 83
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 87
    :cond_0
    return-object v2
.end method

.method private getSmallIcon()I
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f020060

    return v0
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

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
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getContentText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    const v1, 0x7f0b0049

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSingleNotification(Z)Landroid/app/Notification;
    .locals 1
    .param p1, "isAlert"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    const-string/jumbo v1, " "

    .line 110
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getSummaryNotificationLineSingleConversation()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getSummaryNotificationLineSingleConversation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineSingleConversation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContentTitle()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 44
    .local v1, "contentTitle":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContentText()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "contentText":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getContentTitle()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getWearableNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 51
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/SendFailedXmsNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
