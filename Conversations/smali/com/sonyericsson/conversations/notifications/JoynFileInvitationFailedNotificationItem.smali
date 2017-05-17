.class public Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.source "JoynFileInvitationFailedNotificationItem.java"


# static fields
.field private static synthetic -com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I


# instance fields
.field mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

.field private mIsGroupChat:Z


# direct methods
.method private static synthetic -getcom_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->-com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->-com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_FILE_EXCEEDS_MAX_SIZE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_NOT_ENOUGH_SPACE_TO_DOWNLOAD_FILE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_UNKNOWN_REASON:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

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
    sput-object v0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->-com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imFileInvitationFailNotification"    # Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p4, "isSilent"    # Z
    .param p5, "uniqueNotificationId"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 38
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    .line 39
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mIsGroupChat:Z

    .line 36
    return-void
.end method

.method private getInvitationLowStorageNotificationText()Ljava/lang/String;
    .locals 9

    .prologue
    .line 186
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v0

    .line 189
    .local v0, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v0, v5}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "displayName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->getFilename()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "fileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->getFileSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sonyericsson/conversations/util/FileSize;->newInstance(J)Lcom/sonyericsson/conversations/util/FileSize;

    move-result-object v4

    .line 195
    .local v4, "fileSize":Lcom/sonyericsson/conversations/util/FileSize;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 197
    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/util/FileSize;->getFormattedSize()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 195
    const v7, 0x7f0b0155

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "contentText":Ljava/lang/String;
    return-object v1
.end method

.method private getInvitationMaxSizeNotificationText()Ljava/lang/String;
    .locals 11

    .prologue
    .line 161
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v0

    .line 164
    .local v0, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-virtual {v0, v7}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v6

    .line 168
    .local v6, "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->getFilename()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "fileName":Ljava/lang/String;
    invoke-interface {v6}, Lcom/sonymobile/jms/setting/ImSettingApi;->getFileMaxSize()I

    move-result v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Lcom/sonyericsson/conversations/util/FileSize;->newInstance(J)Lcom/sonyericsson/conversations/util/FileSize;

    move-result-object v3

    .line 170
    .local v3, "fileMaxSize":Lcom/sonyericsson/conversations/util/FileSize;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/util/FileSize;->getUnit()Lcom/sonyericsson/conversations/util/ByteUnit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/util/ByteUnit;->getUnitResId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "fileSizeUnit":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 174
    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/util/FileSize;->getFormattedSize()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x3

    aput-object v5, v8, v9

    .line 172
    const v9, 0x7f0b0156

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "contentText":Ljava/lang/String;
    return-object v1
.end method

.method private getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "isAlert"    # Z

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 71
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    .local v0, "contentText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 75
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 77
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->isSilent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->updateNotificationSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 90
    :cond_0
    return-object v2
.end method

.method private getSmallIcon()I
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f020060

    return v0
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getContentText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 99
    const-string/jumbo v0, ""

    .line 100
    .local v0, "contentText":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->-getcom_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getInvitationMaxSizeNotificationText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getInvitationLowStorageNotificationText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0158

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0157

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSingleNotification(Z)Landroid/app/Notification;
    .locals 1
    .param p1, "isAlert"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 146
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 147
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mIsGroupChat:Z

    if-nez v1, :cond_0

    .line 148
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 151
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getSummaryNotificationLineSingleConversation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineSingleConversation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->-getcom_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 132
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mIsGroupChat:Z

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->mImFileInvitationFailNotification:Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    .line 133
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getGroupContentTitle(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0152

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 136
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 138
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatBidiNumberString(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getWearableNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 54
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 55
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynFileInvitationFailedNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
