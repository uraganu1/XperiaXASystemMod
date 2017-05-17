.class public Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.source "JoynConversationInvitationFailedNotificationItem.java"


# static fields
.field private static synthetic -com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I


# instance fields
.field mImConversationInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;

.field private mIsGroupChat:Z


# direct methods
.method private static synthetic -getcom_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->-com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->-com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->values()[Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_ACCEPTED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_FILE_EXCEEDS_MAX_SIZE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_NOT_ENOUGH_SPACE_TO_DOWNLOAD_FILE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_TOO_MANY_SESSIONS_ALLOCATED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_UNKNOWN_REASON:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->-com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imConversationInvitationFailNotification"    # Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p4, "isSilent"    # Z
    .param p5, "uniqueNotificationId"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->mImConversationInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;

    .line 35
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->mIsGroupChat:Z

    .line 32
    return-void
.end method

.method private getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "isAlert"    # Z

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 67
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    .local v0, "contentText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 77
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->isSilent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->updateNotificationSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 86
    :cond_0
    return-object v2
.end method

.method private getSmallIcon()I
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f020060

    return v0
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 57
    const/4 v0, 0x0

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

.method public getContentText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 95
    const-string/jumbo v0, ""

    .line 96
    .local v0, "contentText":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->-getcom_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->mImConversationInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;->getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    return-object v0

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0153

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSingleNotification(Z)Landroid/app/Notification;
    .locals 1
    .param p1, "isAlert"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 135
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->mIsGroupChat:Z

    if-nez v1, :cond_0

    .line 137
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getSummaryNotificationLineSingleConversation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineSingleConversation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->-getcom_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->mImConversationInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;->getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 120
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->mIsGroupChat:Z

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->mImConversationInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    .line 121
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getGroupContentTitle(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 117
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0151

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 127
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatBidiNumberString(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getWearableNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 51
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynConversationInvitationFailedNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
