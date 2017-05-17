.class public Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.source "ReceivedXmsNotificationItem.java"


# instance fields
.field private mMessage:Lcom/sonyericsson/conversations/model/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p4, "isSilent"    # Z
    .param p5, "uniqueNotificationId"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create notification for a null message."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 50
    return-void
.end method

.method private getContentTitle()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 247
    const v3, 0x7f0b004e

    .line 246
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 250
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 252
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatBidiNumberString(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1
.end method

.method private getDownloadMmsAction(Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 3
    .param p1, "actionStyle"    # Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->INTENT_ACTION_DOWNLOAD_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getNotificationId()I

    move-result v2

    .line 233
    invoke-static {v1, v0, v2, p1}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->buildDownloadMmsAction(Landroid/content/Context;Landroid/content/Intent;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    return-object v1
.end method

.method private getFirstImageInMessage()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 261
    iget-object v6, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v6, v6, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-nez v6, :cond_0

    .line 262
    return-object v7

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 265
    .local v2, "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    const/4 v0, 0x0

    .line 267
    .local v0, "attachedPicture":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    .line 268
    .local v5, "slideShow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 269
    :cond_1
    return-object v7

    .line 271
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "slide$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 272
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImageExcludingLocationImage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 273
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->createThumbnail()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 281
    .end local v0    # "attachedPicture":Landroid/graphics/Bitmap;
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v4    # "slide$iterator":Ljava/util/Iterator;
    .end local v5    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :cond_4
    :goto_0
    return-object v0

    .line 277
    .restart local v0    # "attachedPicture":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v6, "Failed to get slideshow"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMarkAsReadAction(Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 3
    .param p1, "actionStyle"    # Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_ACTION_MARK_XMS_AS_READ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getNotificationId()I

    move-result v2

    .line 219
    invoke-static {v1, v0, v2, p1}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->buildMarkAsReadAction(Landroid/content/Context;Landroid/content/Intent;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    return-object v1
.end method

.method private getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "isAlert"    # Z

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContentTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 166
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    .local v0, "contentText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v2, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 169
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 170
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 171
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 176
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 178
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->makeNotificationExpandable(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->isSilent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->updateNotificationSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 183
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 187
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getWearableExtender(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 188
    invoke-static {v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->updateNotificationPriorityAndCategory(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 189
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->shallShowDownloadMmsAction()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    sget-object v3, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->HANDHELD:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getDownloadMmsAction(Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 194
    :goto_0
    return-object v2

    .line 192
    :cond_1
    sget-object v3, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->HANDHELD:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getMarkAsReadAction(Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private getSmallIcon()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->isUrgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const v0, 0x7f02005f

    return v0

    .line 241
    :cond_0
    const v0, 0x7f02005c

    return v0
.end method

.method private getWearableExtender(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 5
    .param p1, "isSingleConversation"    # Z

    .prologue
    .line 145
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 146
    .local v0, "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getFirstImageInMessage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    .local v1, "messageImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addConversationPage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/support/v4/app/NotificationCompat$WearableExtender;)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    sget-object v2, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->WEARABLE:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getMarkAsReadAction(Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->shallShowDownloadMmsAction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    sget-object v2, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->WEARABLE:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getDownloadMmsAction(Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getNotificationId()I

    move-result v4

    .line 159
    invoke-static {v2, v0, v3, v4}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addWearableReplyAction(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$WearableExtender;Landroid/net/Uri;I)V

    .line 161
    return-object v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getWearableContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    goto :goto_0
.end method

.method private makeNotificationExpandable(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/String;
    .param p3, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 287
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v1, v1, Lcom/sonyericsson/conversations/model/Message;->type:I

    if-nez v1, :cond_1

    .line 288
    invoke-static {p3, p2}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addBigTextStyle(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/CharSequence;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v1, v1, Lcom/sonyericsson/conversations/model/Message;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getFirstImageInMessage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    .local v0, "attachedPicture":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 292
    invoke-static {p3, p1, p2, v0}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->addBigPicture(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private shallShowDownloadMmsAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v0, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    return v1

    .line 199
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

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
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getContentText()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 96
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v5, v5, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v5, :cond_4

    .line 97
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 98
    .local v3, "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/model/MmsMessage;->getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;

    move-result-object v1

    .line 100
    .local v1, "attachmentSummary":Lcom/sonyericsson/conversations/model/AttachmentSummary;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getAttachedBodyText()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "attachmentBodyText":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getSenderString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 105
    const v6, 0x7f0b00e7

    .line 104
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .end local v0    # "attachmentBodyText":Ljava/lang/String;
    .end local v1    # "attachmentSummary":Lcom/sonyericsson/conversations/model/AttachmentSummary;
    .end local v3    # "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .local v2, "contentText":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 120
    const v6, 0x7f0b0048

    .line 119
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_0
    const-string/jumbo v5, "\r"

    const-string/jumbo v6, " "

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 106
    .end local v2    # "contentText":Ljava/lang/String;
    .restart local v0    # "attachmentBodyText":Ljava/lang/String;
    .restart local v1    # "attachmentSummary":Lcom/sonyericsson/conversations/model/AttachmentSummary;
    .restart local v3    # "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 107
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/model/MmsMessage;->getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;

    move-result-object v5

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getSnippetForEmptyMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    .end local v0    # "attachmentBodyText":Ljava/lang/String;
    .end local v1    # "attachmentSummary":Lcom/sonyericsson/conversations/model/AttachmentSummary;
    .end local v3    # "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Message;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "contentText":Ljava/lang/String;
    goto :goto_1
.end method

.method public getSingleNotification(Z)Landroid/app/Notification;
    .locals 1
    .param p1, "isAlert"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryNotificationLineMultipleConversations()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 132
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 134
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;

    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    return-object v0
.end method

.method public getSummaryNotificationLineSingleConversation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContentText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getContentTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWearableExtender()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getWearableExtender(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public getWearableNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 78
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getNotificationBuilder(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 79
    .local v0, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ReceivedXmsNotificationItem;->getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
