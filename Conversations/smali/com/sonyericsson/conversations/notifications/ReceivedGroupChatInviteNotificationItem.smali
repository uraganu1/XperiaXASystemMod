.class public Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.source "ReceivedGroupChatInviteNotificationItem.java"


# instance fields
.field private mImGroupInvitation:Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "invitation"    # Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p4, "isSilent"    # Z
    .param p5, "uniqueNotificationId"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->mImGroupInvitation:Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;

    .line 29
    return-void
.end method

.method private getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "isAlert"    # Z

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 45
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContentText()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "contentText":Ljava/lang/String;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 49
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 51
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 55
    sget-object v4, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 54
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 57
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 58
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->makeNotificationExpandable(Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->isSilent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->updateNotificationSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getWearableExtender()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 67
    invoke-static {v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationPriorityAndCategory(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 68
    return-object v2
.end method

.method private getSmallIcon()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f02005c

    return v0
.end method

.method private makeNotificationExpandable(Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 130
    invoke-static {p2, p1}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addBigTextStyle(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->mImGroupInvitation:Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;->getItemId()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "itemId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getContentText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 122
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v2

    .line 123
    .local v2, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->mImGroupInvitation:Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "author":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "authorName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 126
    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f0b0150

    .line 125
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSingleNotification(Z)Landroid/app/Notification;
    .locals 1
    .param p1, "isAlert"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->mImGroupInvitation:Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getGroupContentTitle(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWearableExtender()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 117
    .local v0, "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getWearableContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 118
    return-object v0
.end method

.method public getWearableNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 87
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 88
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method protected updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 36
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationLedEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedGroupChatInviteNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v0

    .line 38
    .local v0, "ledARGB":I
    const/16 v1, 0x64

    .line 39
    const/16 v2, 0x1770

    .line 38
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 35
    .end local v0    # "ledARGB":I
    :cond_0
    return-void
.end method
