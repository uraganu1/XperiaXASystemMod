.class public Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;
.super Ljava/lang/Object;
.source "ExpandableNotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;
    }
.end annotation


# static fields
.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBigPicture(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "attachedPicture"    # Landroid/graphics/Bitmap;

    .prologue
    .line 102
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 103
    .local v0, "bigPicStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 104
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 105
    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 106
    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    return-void
.end method

.method public static addBigTextStyle(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p1, "contentText"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 116
    return-void
.end method

.method public static addConversationPage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/support/v4/app/NotificationCompat$WearableExtender;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "extender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .prologue
    .line 280
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->getConversationPageText(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 281
    .local v0, "conversationText":Ljava/lang/CharSequence;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 284
    .local v1, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 285
    .local v2, "pageExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setStartScrollBottom(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 286
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 279
    return-void
.end method

.method public static addFileTransferInvitationControllers(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImFileNotification;)V
    .locals 4
    .param p0, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imFileNotification"    # Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    .prologue
    .line 73
    invoke-static {p2}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->createImUserMessageBundle(Lcom/sonyericsson/conversations/notifications/ImFileNotification;)Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "extras":Landroid/os/Bundle;
    const v3, 0x7f0b0168

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "titleAccept":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->createFTAcceptPendingIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 76
    .local v1, "pendingIntentAccept":Landroid/app/PendingIntent;
    const v3, 0x7f02011a

    invoke-virtual {p0, v3, v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    return-void
.end method

.method public static addProgress(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/sonyericsson/conversations/notifications/ImFileNotification;)V
    .locals 3
    .param p0, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p1, "imFileNotification"    # Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getPercentageProgress()I

    move-result v0

    .line 88
    const/16 v1, 0x64

    .line 89
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 87
    return-void
.end method

.method public static addWearableReplyAction(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$WearableExtender;Landroid/net/Uri;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "notificationId"    # I

    .prologue
    .line 130
    if-nez p2, :cond_0

    .line 131
    const-string/jumbo v6, "MessageUri null not adding addReplyAction."

    invoke-static {v6}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 132
    return-void

    .line 134
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v3, "replyIntent":Landroid/content/Intent;
    sget-object v6, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_ACTION_WEARABLE_REPLYTO_XMS:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v6, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_REPLY_MESSAGE_URI:Ljava/lang/String;

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    const/high16 v6, 0x8000000

    .line 139
    invoke-static {p0, p3, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 142
    .local v4, "replyPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 143
    const v7, 0x7f0b017f

    .line 142
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "actionText":Ljava/lang/String;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 146
    const v6, 0x7f02014d

    .line 145
    invoke-direct {v0, v6, v1, v4}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 148
    .local v0, "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 149
    const v7, 0x7f100001

    .line 148
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "choices":[Ljava/lang/String;
    new-instance v6, Landroid/support/v4/app/RemoteInput$Builder;

    .line 151
    sget-object v7, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->EXTRA_VOICE_REPLY:Ljava/lang/String;

    .line 150
    invoke-direct {v6, v7}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    .line 155
    .local v5, "voiceToTextInput":Landroid/support/v4/app/RemoteInput;
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 129
    return-void
.end method

.method public static addWearableReplyAction(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$WearableExtender;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extender"    # Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .param p2, "conversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "notificationId"    # I

    .prologue
    .line 172
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 173
    :cond_0
    const-string/jumbo v6, "conversationId or messageId null. Not adding addReplyAction."

    invoke-static {v6}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 175
    return-void

    .line 177
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v3, "replyIntent":Landroid/content/Intent;
    sget-object v6, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_ACTION_WEARABLE_REPLYTO_JOYN:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    sget-object v6, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_EXTRA_MESSAGE_IM_CONVERSATION_ID:Ljava/lang/String;

    .line 180
    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 183
    sget-object v6, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->INTENT_EXTRA_MESSAGE_MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {v3, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/high16 v6, 0x8000000

    .line 186
    invoke-static {p0, p4, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 189
    .local v4, "replyPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 190
    const v7, 0x7f0b017f

    .line 189
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "actionText":Ljava/lang/String;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 193
    const v6, 0x7f02014d

    .line 192
    invoke-direct {v0, v6, v1, v4}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 195
    .local v0, "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 196
    const v7, 0x7f100001

    .line 195
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "choices":[Ljava/lang/String;
    new-instance v6, Landroid/support/v4/app/RemoteInput$Builder;

    .line 199
    sget-object v7, Lcom/sonyericsson/conversations/notifications/ReplyToFromNotificationActionService;->EXTRA_VOICE_REPLY:Ljava/lang/String;

    .line 198
    invoke-direct {v6, v7}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    .line 203
    .local v5, "voiceToTextInput":Landroid/support/v4/app/RemoteInput;
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 204
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 171
    return-void
.end method

.method private static appendAuthorAndMessage(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sb"    # Landroid/text/SpannableStringBuilder;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 348
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0175

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "sender":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 358
    .local v1, "start":I
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 359
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 360
    const/16 v4, 0x21

    .line 359
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 361
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->appendMessageText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/model/Message;)V

    .line 346
    return-void

    .line 351
    .end local v0    # "sender":Ljava/lang/CharSequence;
    .end local v1    # "start":I
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->getAuthor(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 352
    .restart local v0    # "sender":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 353
    return-void

    .line 355
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static appendMessageText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/model/Message;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sb"    # Landroid/text/SpannableStringBuilder;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 393
    instance-of v1, p2, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v1, :cond_1

    .line 394
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 392
    .end local p2    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    :goto_0
    return-void

    .line 395
    .restart local p2    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    instance-of v1, p2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_2

    .line 396
    const-string/jumbo v1, "("

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 398
    const v1, 0x7f0b0071

    .line 397
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 399
    const-string/jumbo v1, ") "

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 400
    check-cast p2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p2    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getAllText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 401
    .restart local p2    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_2
    instance-of v1, p2, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 402
    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 403
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 405
    :pswitch_1
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 408
    :pswitch_2
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImTextMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static buildDownloadMmsAction(Landroid/content/Context;Landroid/content/Intent;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "notificationId"    # I
    .param p3, "actionStyle"    # Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    .prologue
    .line 258
    const/high16 v4, 0x8000000

    .line 257
    invoke-static {p0, p2, p1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 260
    .local v3, "pending":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 261
    const v5, 0x7f0b0095

    .line 260
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "actionText":Ljava/lang/String;
    sget-object v4, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->WEARABLE:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    if-ne p3, v4, :cond_0

    const v2, 0x7f02014b

    .line 266
    .local v2, "iconResId":I
    :goto_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v0, v2, v1, v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 268
    .local v0, "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v4

    return-object v4

    .line 263
    .end local v0    # "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .end local v2    # "iconResId":I
    :cond_0
    const v2, 0x7f0200c1

    .restart local v2    # "iconResId":I
    goto :goto_0
.end method

.method static buildMarkAsReadAction(Landroid/content/Context;Landroid/content/Intent;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "notificationId"    # I
    .param p3, "actionStyle"    # Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    .prologue
    .line 233
    const/high16 v4, 0x8000000

    .line 232
    invoke-static {p0, p2, p1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 235
    .local v3, "pending":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 236
    const v5, 0x7f0b0052

    .line 235
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "actionText":Ljava/lang/String;
    sget-object v4, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->WEARABLE:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    if-ne p3, v4, :cond_0

    const v2, 0x7f02014c

    .line 241
    .local v2, "iconResId":I
    :goto_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v0, v2, v1, v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 243
    .local v0, "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v4

    return-object v4

    .line 239
    .end local v0    # "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .end local v2    # "iconResId":I
    :cond_0
    const v2, 0x7f02005b

    .restart local v2    # "iconResId":I
    goto :goto_0
.end method

.method private static createFTAcceptPendingIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 300
    sget-object v0, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_ACTION_FILE_TRANSFER_ACCEPT:Ljava/lang/String;

    .line 299
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->createFTPendingIntent(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createFTPendingIntent(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/conversations/notifications/MessageActionService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 308
    sget-object v2, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_EXTRA_MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "messageId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 310
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private static createImUserMessageBundle(Lcom/sonyericsson/conversations/notifications/ImFileNotification;)Landroid/os/Bundle;
    .locals 3
    .param p0, "imFileNotification"    # Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    .prologue
    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_EXTRA_MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MessageActionService;->INTENT_EXTRA_IM_CONVERSATION_ID:Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 295
    return-object v0
.end method

.method private static getAuthor(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    const/4 v7, 0x0

    .line 366
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v0

    .line 367
    .local v0, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    instance-of v5, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 368
    check-cast v3, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 369
    .local v3, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 379
    :pswitch_0
    return-object v7

    .line 372
    :pswitch_1
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/jms/message/ImUserMessage;

    .line 373
    .local v2, "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    invoke-interface {v2}, Lcom/sonymobile/jms/message/ImUserMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .line 374
    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-virtual {v1}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 381
    .end local v1    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v2    # "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v3    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_0
    instance-of v5, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-nez v5, :cond_1

    instance-of v5, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v5, :cond_3

    .line 382
    :cond_1
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    .line 383
    .local v4, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 384
    return-object v7

    .line 386
    :cond_2
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    return-object v5

    .line 388
    .end local v4    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_3
    return-object v7

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getConversationPageText(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 316
    const/4 v2, 0x0

    .line 318
    .local v2, "mergedCursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 320
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :try_start_0
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->getXmsMessageCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v6

    .line 321
    .local v6, "xmsCursor":Landroid/database/Cursor;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->getJoynMessageCursor(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImConversationId;)Landroid/database/Cursor;

    move-result-object v1

    .line 322
    .local v1, "joynCursor":Landroid/database/Cursor;
    new-instance v3, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;

    .line 323
    new-instance v7, Lcom/sonyericsson/conversations/messages/MessageAndChatCursorComparator;

    invoke-direct {v7}, Lcom/sonyericsson/conversations/messages/MessageAndChatCursorComparator;-><init>()V

    .line 322
    invoke-direct {v3, v6, v1, v7}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    .end local v2    # "mergedCursor":Landroid/database/Cursor;
    .local v3, "mergedCursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 326
    .local v5, "sb":Landroid/text/SpannableStringBuilder;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_0

    .line 327
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x14

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v3, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 329
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 331
    sget-object v7, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .line 330
    invoke-static {p0, v3, v7}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v4

    .line 332
    .local v4, "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-static {p0, v5, v4, p1}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->appendAuthorAndMessage(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 333
    invoke-interface {v3}, Landroid/database/Cursor;->isLast()Z

    move-result v7

    if-nez v7, :cond_0

    .line 334
    const-string/jumbo v7, "\n\n"

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    .end local v4    # "message":Lcom/sonyericsson/conversations/model/Message;
    .end local v5    # "sb":Landroid/text/SpannableStringBuilder;
    :catchall_0
    move-exception v7

    move-object v2, v3

    .line 338
    .end local v1    # "joynCursor":Landroid/database/Cursor;
    .end local v3    # "mergedCursor":Landroid/database/Cursor;
    .end local v6    # "xmsCursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v2, :cond_1

    .line 339
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_1
    throw v7

    .line 338
    .restart local v1    # "joynCursor":Landroid/database/Cursor;
    .restart local v3    # "mergedCursor":Landroid/database/Cursor;
    .restart local v5    # "sb":Landroid/text/SpannableStringBuilder;
    .restart local v6    # "xmsCursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v3, :cond_3

    .line 339
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_3
    return-object v5

    .line 337
    .end local v1    # "joynCursor":Landroid/database/Cursor;
    .end local v3    # "mergedCursor":Landroid/database/Cursor;
    .end local v5    # "sb":Landroid/text/SpannableStringBuilder;
    .end local v6    # "xmsCursor":Landroid/database/Cursor;
    .restart local v2    # "mergedCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v7

    goto :goto_1
.end method

.method private static getJoynMessageCursor(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImConversationId;)Landroid/database/Cursor;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    const/4 v4, 0x0

    .line 430
    if-nez p1, :cond_0

    .line 431
    return-object v4

    .line 433
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 434
    .local v1, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    if-nez v1, :cond_1

    .line 435
    return-object v4

    .line 438
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveMessages(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 441
    :cond_2
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get Joyn cursor for imConversationId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 445
    return-object v4
.end method

.method public static getMarkAsReadAction(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "notificationId"    # I
    .param p4, "actionStyle"    # Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_ACTION_MARK_JOYN_AS_READ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_IM_CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 224
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;->INTENT_EXTRA_MESSAGE_MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-static {p0, v0, p3, p4}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;->buildMarkAsReadAction(Landroid/content/Context;Landroid/content/Intent;ILcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    return-object v1
.end method

.method private static getXmsMessageCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    const/4 v3, 0x0

    .line 419
    const-wide/16 v4, -0x1

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    .line 420
    return-object v3

    .line 422
    :cond_0
    sget-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 423
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    sget-object v2, Lcom/sonyericsson/conversations/model/MessageProjection;->SEQUENCE_TIME_ORDERED_COMMON_PROJECTION:[Ljava/lang/String;

    .line 425
    const-string/jumbo v5, "sequence_time"

    move-object v4, v3

    .line 423
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 426
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method
