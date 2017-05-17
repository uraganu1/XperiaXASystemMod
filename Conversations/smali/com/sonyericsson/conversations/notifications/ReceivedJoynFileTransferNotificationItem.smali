.class public Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.source "ReceivedJoynFileTransferNotificationItem.java"


# static fields
.field private static synthetic -com_sonyericsson_conversations_notifications_ImFileNotification$FileMessageStateSwitchesValues:[I


# instance fields
.field private mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

.field private mIsGroupChat:Z


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_notifications_ImFileNotification$FileMessageStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->-com_sonyericsson_conversations_notifications_ImFileNotification$FileMessageStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->-com_sonyericsson_conversations_notifications_ImFileNotification$FileMessageStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->values()[Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ACCEPTED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->FINISHED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->INVITED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->IN_PROGRESS:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->PAUSED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->-com_sonyericsson_conversations_notifications_ImFileNotification$FileMessageStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImFileNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imFileNotification"    # Lcom/sonyericsson/conversations/notifications/ImFileNotification;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p4, "isSilent"    # Z
    .param p5, "uniqueNotificationId"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mIsGroupChat:Z

    .line 48
    return-void
.end method

.method private appendAuthorName(Landroid/text/SpannableStringBuilder;)V
    .locals 7
    .param p1, "sb"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 278
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "author":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v1

    .line 280
    .local v1, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "displayName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 282
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    .line 283
    const/16 v6, 0x21

    .line 282
    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 277
    return-void
.end method

.method private getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .param p1, "isAlert"    # Z

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 183
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 185
    .local v0, "contentText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 187
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 188
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 189
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 190
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getWhen()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 193
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 194
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mIsGroupChat:Z

    if-nez v3, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 197
    :cond_0
    sget-object v3, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->IN_PROGRESS:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getState()Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-result-object v4

    if-eq v3, v4, :cond_1

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 201
    :cond_1
    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->makeNotificationExpandable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->isSilent()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->updateNotificationSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 204
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getState()Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->FINISHED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    if-ne v3, v4, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 209
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v4

    .line 210
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getNotificationId()I

    move-result v6

    .line 211
    sget-object v7, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->HANDHELD:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    .line 208
    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->getMarkAsReadAction(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 214
    :cond_3
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getWearableExtender(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 215
    invoke-static {v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationPriorityAndCategory(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 216
    return-object v2
.end method

.method private getSmallIcon()I
    .locals 1

    .prologue
    .line 220
    const v0, 0x7f02005c

    return v0
.end method

.method private getThumbnail()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 242
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->-getcom_sonyericsson_conversations_notifications_ImFileNotification$FileMessageStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getState()Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 273
    :pswitch_0
    return-object v6

    .line 248
    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    .line 249
    .local v2, "msgApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->getFileIcon(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 250
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 251
    return-object v6

    .line 253
    :cond_0
    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ImageHandler;->getNotificationImageThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 254
    .end local v2    # "msgApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    return-object v6

    .line 260
    .end local v1    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :pswitch_2
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getFileUri()Landroid/net/Uri;
    :try_end_1
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 264
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ImageHandler;->getNotificationImageThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 261
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 262
    .local v0, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    return-object v6

    .line 266
    .end local v0    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ImageHandler;->getNotificationVideoThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 269
    :cond_2
    return-object v6

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getWearableExtender(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 7
    .param p1, "isSingleNotification"    # Z

    .prologue
    .line 158
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 159
    .local v0, "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addConversationPage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/support/v4/app/NotificationCompat$WearableExtender;)V

    .line 166
    if-eqz p1, :cond_1

    .line 167
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getState()Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->FINISHED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    if-ne v2, v3, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    .line 170
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getNotificationId()I

    move-result v5

    .line 171
    sget-object v6, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->WEARABLE:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    .line 168
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->getMarkAsReadAction(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 173
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mIsGroupChat:Z

    if-nez v2, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getId()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getNotificationId()I

    move-result v5

    .line 174
    invoke-static {v2, v0, v3, v4, v5}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addWearableReplyAction(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;I)V

    .line 178
    :cond_2
    return-object v0

    .line 162
    :cond_3
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mIsGroupChat:Z

    if-nez v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getWearableContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    goto :goto_0
.end method

.method private makeNotificationExpandable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 225
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getState()Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-result-object v1

    .line 226
    sget-object v2, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->INVITED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    .line 225
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    .line 227
    invoke-static {p3, v1, v2}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addFileTransferInvitationControllers(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImFileNotification;)V

    .line 234
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 236
    invoke-static {p3, p1, p2, v0}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addBigPicture(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    .line 224
    :cond_1
    return-void

    .line 229
    .end local v0    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getState()Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-result-object v1

    .line 230
    sget-object v2, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->IN_PROGRESS:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    .line 229
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-static {p3, v1}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addProgress(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/sonyericsson/conversations/notifications/ImFileNotification;)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getContentText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSingleNotification(Z)Landroid/app/Notification;
    .locals 1
    .param p1, "isAlert"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 128
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 129
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 130
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 131
    const/16 v4, 0x21

    .line 130
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 132
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mIsGroupChat:Z

    if-nez v1, :cond_0

    .line 133
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    :cond_0
    return-object v0
.end method

.method public getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 61
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 62
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mIsGroupChat:Z

    if-eqz v2, :cond_0

    .line 63
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->appendAuthorName(Landroid/text/SpannableStringBuilder;)V

    .line 64
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 67
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->-getcom_sonyericsson_conversations_notifications_ImFileNotification$FileMessageStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getState()Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unhandled status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getState()Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 70
    const v3, 0x7f0b01fb

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "contentText":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    return-object v2

    .line 73
    .end local v0    # "contentText":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 74
    const v3, 0x7f0b01fa

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentText":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v0    # "contentText":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 79
    const v3, 0x7f0b01fc

    .line 78
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentText":Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v0    # "contentText":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 83
    const v3, 0x7f0b01fd

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentText":Ljava/lang/String;
    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 116
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mIsGroupChat:Z

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mImFileNotification:Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getGroupContentTitle(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 122
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatBidiNumberString(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method public getWearableExtender()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getWearableExtender(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public getWearableNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 94
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 95
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method protected updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 141
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->mIsGroupChat:Z

    if-eqz v1, :cond_1

    .line 142
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationLedEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedJoynFileTransferNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v0

    .line 144
    .local v0, "ledARGB":I
    const/16 v1, 0x64

    .line 145
    const/16 v2, 0x1770

    .line 144
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 140
    .end local v0    # "ledARGB":I
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    goto :goto_0
.end method
