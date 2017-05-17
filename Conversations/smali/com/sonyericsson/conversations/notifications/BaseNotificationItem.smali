.class public abstract Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;
.super Ljava/lang/Object;
.source "BaseNotificationItem.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/NotificationItemApi;


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private final mConversationIdKey:Ljava/lang/String;

.field private mGroupType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

.field private mIsSilent:Z

.field private mNotificationId:I


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p3, "isSilent"    # Z
    .param p4, "uniqueNotificationId"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 64
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mIsSilent:Z

    .line 65
    iput p4, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mNotificationId:I

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversationIdKey:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private getContentIntentBasedOnImConversationId()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 280
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v2, "notificationIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 284
    .local v1, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    const-string/jumbo v3, "chatID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 287
    const/high16 v3, 0x14000000

    .line 286
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getNotificationId()I

    move-result v4

    .line 291
    const/high16 v5, 0x8000000

    .line 289
    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 292
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private getContentIntentBasedOnThreadId()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "clickIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 258
    const/high16 v3, 0x14000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 263
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 267
    .local v2, "threadUri":Landroid/net/Uri;
    sget-object v3, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->UNREAD_MESSAGE_URI:Ljava/lang/String;

    .line 268
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v3, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->UNREAD_MESSAGE_THREADS:Ljava/lang/String;

    .line 271
    const/4 v4, 0x1

    .line 269
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mNotificationId:I

    .line 276
    const/high16 v5, 0x8000000

    .line 274
    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addPersons(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 5
    .param p1, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 297
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    .line 299
    .local v3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 300
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddressUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 295
    .end local v1    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v2    # "participant$iterator":Ljava/util/Iterator;
    .end local v3    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_0
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getContactPhoto()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    return-object v2

    .line 201
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 202
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->getNotificationGroupConversationImage(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 204
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/ImageHandler;->getNotificationContactImage(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getContentIntentBasedOnThreadId()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getContentIntentBasedOnImConversationId()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getContentIntentBasedOnThreadId()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getContentIntentBasedOnImConversationId()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    return-object v0
.end method

.method public getConversationIdKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversationIdKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getGroupType()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mGroupType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    return-object v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->getContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mNotificationId:I

    return v0
.end method

.method protected getTickerText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;

    .prologue
    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    return-object p2

    .line 248
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getWearableContactPhoto()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->hasParticipants()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 214
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->getWearableContactImage(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWearableExtender()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    return-object v0
.end method

.method protected isSilent()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mIsSilent:Z

    return v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mBundle:Landroid/os/Bundle;

    .line 109
    return-void
.end method

.method public setGroupType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V
    .locals 0
    .param p1, "groupType"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mGroupType:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 75
    return-void
.end method

.method protected updateNotificationLed(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 4
    .param p1, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 224
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationLedEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "col":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->hasParticipants()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 228
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColorForParticipant(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)I

    move-result v0

    .line 232
    .end local v1    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :goto_0
    const/16 v2, 0x64

    .line 233
    const/16 v3, 0x1770

    .line 232
    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 223
    .end local v0    # "col":I
    :cond_0
    return-void

    .line 230
    .restart local v0    # "col":I
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method protected updateNotificationSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 8
    .param p1, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 161
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 162
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 168
    new-array v2, v7, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v6

    .line 169
    .local v2, "pattern":[J
    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 172
    .end local v2    # "pattern":[J
    :cond_0
    const/4 v1, 0x0

    .line 173
    .local v1, "defaultFlag":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationVibrateEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    const/4 v1, 0x2

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->getTranslatedNotificationSound(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "sound":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/BaseNotificationItem;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->soundFileAccessible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 179
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 180
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 186
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 160
    return-void

    .line 184
    :cond_3
    or-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
