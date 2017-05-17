.class public Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.source "ReceivedJoynTextNotificationItem.java"


# instance fields
.field private mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

.field private mIsGroupChat:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImTextNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imTextNotification"    # Lcom/sonyericsson/conversations/notifications/ImTextNotification;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p4, "isSilent"    # Z
    .param p5, "uniqueNotificationId"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mIsGroupChat:Z

    .line 38
    return-void
.end method

.method private appendAuthorName(Landroid/text/SpannableStringBuilder;)V
    .locals 7
    .param p1, "sb"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 190
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "author":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v1

    .line 192
    .local v1, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "displayName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 194
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    .line 195
    const/16 v6, 0x21

    .line 194
    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 189
    return-void
.end method

.method private getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .param p1, "isAlert"    # Z

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 148
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 150
    .local v0, "contentText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 152
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 154
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 155
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getWhen()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 158
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 159
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mIsGroupChat:Z

    if-nez v3, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 162
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->makeNotificationExpandable(Ljava/lang/CharSequence;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 163
    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->isSilent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->updateNotificationSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 167
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getId()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getNotificationId()I

    move-result v6

    sget-object v7, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->HANDHELD:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    .line 171
    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->getMarkAsReadAction(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 175
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getWearableExtender(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 176
    invoke-static {v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationPriorityAndCategory(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 177
    return-object v2
.end method

.method private getSmallIcon()I
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f02005c

    return v0
.end method

.method private getWearableExtender(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 6
    .param p1, "isSingleNotification"    # Z

    .prologue
    .line 127
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 128
    .local v0, "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mIsGroupChat:Z

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getWearableContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addConversationPage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/support/v4/app/NotificationCompat$WearableExtender;)V

    .line 132
    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getNotificationId()I

    move-result v4

    .line 136
    sget-object v5, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->WEARABLE:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    .line 133
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->getMarkAsReadAction(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 138
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mIsGroupChat:Z

    if-nez v1, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getId()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getNotificationId()I

    move-result v4

    .line 139
    invoke-static {v1, v0, v2, v3, v4}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addWearableReplyAction(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;I)V

    .line 143
    :cond_2
    return-object v0
.end method

.method private makeNotificationExpandable(Ljava/lang/CharSequence;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "contentText"    # Ljava/lang/CharSequence;
    .param p2, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 186
    invoke-static {p2, p1}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addBigTextStyle(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getContentText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSingleNotification(Z)Landroid/app/Notification;
    .locals 1
    .param p1, "isAlert"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 97
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 98
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 100
    const/16 v4, 0x21

    .line 99
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 101
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mIsGroupChat:Z

    if-nez v1, :cond_0

    .line 102
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 105
    :cond_0
    return-object v0
.end method

.method public getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 51
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 52
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mIsGroupChat:Z

    if-eqz v2, :cond_0

    .line 53
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->appendAuthorName(Landroid/text/SpannableStringBuilder;)V

    .line 54
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getText()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "contentText":Ljava/lang/String;
    const-string/jumbo v2, "\r"

    const-string/jumbo v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    return-object v2
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 85
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mIsGroupChat:Z

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mImTextNotification:Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getGroupContentTitle(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 91
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatBidiNumberString(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method public getWearableExtender()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getWearableExtender(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public getWearableNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 63
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 64
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method protected updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 110
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->mIsGroupChat:Z

    if-eqz v1, :cond_1

    .line 111
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationLedEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynTextNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v0

    .line 113
    .local v0, "ledARGB":I
    const/16 v1, 0x64

    .line 114
    const/16 v2, 0x1770

    .line 113
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 109
    .end local v0    # "ledARGB":I
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    goto :goto_0
.end method
