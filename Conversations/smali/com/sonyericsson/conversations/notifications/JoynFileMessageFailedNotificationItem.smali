.class public Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.source "JoynFileMessageFailedNotificationItem.java"


# instance fields
.field mImFileMessageFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;

.field private mIsGroupChat:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imFileMessageFailNotification"    # Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p4, "isSilent"    # Z
    .param p5, "uniqueNotificationId"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 35
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->mImFileMessageFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;

    .line 36
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->mIsGroupChat:Z

    .line 33
    return-void
.end method

.method private getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "isAlert"    # Z

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 68
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    .local v0, "contentText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->isSilent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->updateNotificationSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 83
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 87
    :cond_0
    return-object v2
.end method

.method private getSmallIcon()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f020060

    return v0
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getContentText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 97
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->mImFileMessageFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b021a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "contentText":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 102
    .end local v0    # "contentText":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentText":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSingleNotification(Z)Landroid/app/Notification;
    .locals 1
    .param p1, "isAlert"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 123
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 124
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->mIsGroupChat:Z

    if-nez v1, :cond_0

    .line 125
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 128
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getSummaryNotificationLineSingleConversation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineSingleConversation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 110
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->mIsGroupChat:Z

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->mImFileMessageFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    .line 111
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getGroupContentTitle(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 114
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 116
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatBidiNumberString(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method public getWearableNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 51
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 52
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileMessageFailedNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
