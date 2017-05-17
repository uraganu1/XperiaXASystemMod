.class public Lcom/sonyericsson/conversations/notifications/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static final TYPE_ID_LAST_VALUE:I

.field private static sIncomingMsgLedColor:I

.field private static sIncomingMsgLedEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->values()[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 62
    sput v0, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->TYPE_ID_LAST_VALUE:I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertNotificationPathToInternalUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "external"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 266
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    :cond_0
    return-object v6

    .line 272
    :cond_1
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->translateDefaultUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "internal":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 277
    :cond_2
    const-string/jumbo v5, "content://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://com.sonyericsson.provider.customization/content/com.sonyericsson.conversations/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    :cond_3
    const/4 v0, 0x0

    .line 283
    .local v0, "filename":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 284
    .local v1, "idx":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_4

    .line 285
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .end local v0    # "filename":Ljava/lang/String;
    :cond_4
    invoke-static {p0, v0, v8, v9}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getMediaIdByFileName(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 293
    .local v2, "id":J
    cmp-long v5, v2, v8

    if-eqz v5, :cond_6

    .line 295
    invoke-static {}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getMediaInfoUri()Landroid/net/Uri;

    move-result-object v5

    .line 294
    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    :goto_0
    return-object v4

    .line 274
    .end local v1    # "idx":I
    .end local v2    # "id":J
    :cond_5
    return-object v4

    .line 302
    .restart local v1    # "idx":I
    .restart local v2    # "id":J
    :cond_6
    move-object v4, p1

    goto :goto_0
.end method

.method public static getBasicContentIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "clickIntent":Landroid/content/Intent;
    const-class v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    return-object v0
.end method

.method public static getContentIntentNoConversation(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 96
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getBasicContentIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "clickIntent":Landroid/content/Intent;
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManager;->ACTION_NOTIFICATION_CLEAR_TYPE_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const/high16 v1, 0x8000000

    .line 98
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getContentTextForAggregationOfSeveralConversations(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/notifications/NotificationItemApi;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "lastItemsInConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 116
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/notifications/NotificationItemApi;>;"
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 117
    .local v0, "contentText":Landroid/text/SpannableStringBuilder;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 119
    .local v1, "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    .end local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;

    .line 123
    .restart local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    const-string/jumbo v3, " - "

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 124
    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationItemApi;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 126
    .end local v1    # "item":Lcom/sonyericsson/conversations/notifications/NotificationItemApi;
    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDefaultIncomingMsgLedColor()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, -0x1

    return v0
.end method

.method public static getDeleteIntent(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonyericsson.conversations.notifications.ACTION_NOTIFICATION_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/sonyericsson/conversations/notifications/DeleteNotificationReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManager;->ACTION_NOTIFICATION_CLEAR_TYPE_EXTRA:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getGroupContentTitle(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    .line 354
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, "subject":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 357
    return-object v7

    .line 359
    .end local v7    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    const-string/jumbo v8, "Unable to get subject for ImConversation \'"

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v8

    .line 361
    const-string/jumbo v9, "\'"

    .line 360
    invoke-virtual {v8, v9}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 364
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    .line 366
    .local v2, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    invoke-interface {v2, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getRecipients(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;

    move-result-object v6

    .line 368
    .local v6, "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "recipient$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 370
    .local v4, "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    new-instance v8, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v4}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 373
    .end local v2    # "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    .end local v3    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v4    # "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v5    # "recipient$iterator":Ljava/util/Iterator;
    .end local v6    # "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :catch_1
    move-exception v1

    .line 374
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b01ef

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 372
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v2    # "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    .restart local v3    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v5    # "recipient$iterator":Ljava/util/Iterator;
    .restart local v6    # "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :cond_1
    :try_start_2
    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;
    :try_end_2
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    return-object v8
.end method

.method public static getIncomingMsgLedColor(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->queryIncomingMsgLed(Landroid/content/Context;)V

    .line 239
    sget v0, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->sIncomingMsgLedColor:I

    return v0
.end method

.method public static getIncomingMsgLedColor(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->isNotificationProviderAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v1

    return v1

    .line 205
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    .line 204
    :cond_1
    invoke-static {p0, v1, p1}, Lcom/sonyericsson/conversations/util/ContactLookup;->getContactLedColor(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "contactLedColor":I
    if-eqz v0, :cond_2

    .line 210
    return v0

    .line 212
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method public static getIncomingMsgLedColorForParticipant(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v1

    .line 187
    .local v1, "type":I
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static getUniqueId(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)I
    .locals 3
    .param p0, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->ordinal()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 139
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 141
    .local v1, "value":I
    if-ltz v1, :cond_0

    sget v2, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->TYPE_ID_LAST_VALUE:I

    if-gt v1, v2, :cond_0

    .line 142
    sget v2, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->TYPE_ID_LAST_VALUE:I

    add-int/2addr v1, v2

    .line 144
    :cond_0
    return v1
.end method

.method public static isNotificationProviderAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    :try_start_0
    const-string/jumbo v1, "com.sonymobile.settings.illumination.Illumination"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    sget-object v1, Lcom/sonymobile/settings/illumination/Illumination;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->getProviderEnabledState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static markMessageAsRead(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->markXmsAsReadAndSendReadReport(Landroid/net/Uri;Landroid/content/Context;)V

    .line 252
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    .line 253
    .local v0, "notificationManager":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
    invoke-interface {v0, p0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Landroid/net/Uri;)V

    .line 254
    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 248
    return-void
.end method

.method public static notificationHasBeenIndexed(Ljava/lang/String;)Z
    .locals 4
    .param p0, "sound"    # Ljava/lang/String;

    .prologue
    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "indexed":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    const-string/jumbo v3, "content://media/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 331
    .local v0, "idx":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 332
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "mediaIndex":Ljava/lang/String;
    const-string/jumbo v3, "[0-9]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    const/4 v1, 0x1

    .line 339
    .end local v0    # "idx":I
    .end local v2    # "mediaIndex":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private static queryIncomingMsgLed(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 399
    const-string/jumbo v0, "ON"

    .line 403
    .local v0, "STATE_ON":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getDefaultIncomingMsgLedColor()I

    move-result v7

    sput v7, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->sIncomingMsgLedColor:I

    .line 404
    sput-boolean v5, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->sIncomingMsgLedEnabled:Z

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 407
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_1

    .line 408
    const/4 v2, 0x0

    .line 410
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getIncomingMsgLedInfo(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 412
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 414
    const/4 v7, 0x0

    .line 413
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, "status":Ljava/lang/String;
    const/4 v7, 0x1

    .line 415
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sput v7, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->sIncomingMsgLedColor:I

    .line 417
    const-string/jumbo v7, "ON"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_0
    sput-boolean v5, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->sIncomingMsgLedEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 424
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 397
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 417
    goto :goto_0

    .line 419
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 420
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "An exception occurs in reading provider of settings, just catch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 421
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 420
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    if-eqz v2, :cond_1

    .line 424
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 422
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 423
    if-eqz v2, :cond_3

    .line 424
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_3
    throw v5
.end method

.method public static resIdToUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static soundFileAccessible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "soundUri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 155
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 156
    :cond_0
    return v3

    .line 158
    :cond_1
    const/4 v1, 0x1

    .line 161
    .local v1, "isValid":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 162
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 164
    .local v2, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 171
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    :cond_2
    :goto_0
    return v1

    .line 165
    .restart local v2    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 168
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 168
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 167
    throw v3
.end method

.method private static translateDefaultUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound"    # Ljava/lang/String;

    .prologue
    .line 382
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/NotificationInvokeProviderWrapper;->getNotificationSound(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "notificationSound":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 386
    move-object p1, v0

    .line 389
    .end local v0    # "notificationSound":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static updateNotificationLed(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 482
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationLedEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-static {p0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedColor(Landroid/content/Context;)I

    move-result v0

    .line 484
    .local v0, "ledARGB":I
    const/16 v1, 0x64

    .line 485
    const/16 v2, 0x1770

    .line 484
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 481
    .end local v0    # "ledARGB":I
    :cond_0
    return-void
.end method

.method public static updateNotificationPriorityAndCategory(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .param p0, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 497
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 498
    const-string/jumbo v0, "msg"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 496
    return-void
.end method

.method public static updateNotificationSoundAndVibration(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nb"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 447
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 448
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 454
    new-array v2, v5, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v6

    .line 455
    .local v2, "pattern":[J
    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 458
    .end local v2    # "pattern":[J
    :cond_0
    const/4 v1, 0x0

    .line 459
    .local v1, "defaultFlag":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationVibrateEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    const/4 v1, 0x2

    .line 463
    :cond_1
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getTranslatedNotificationSound(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "sound":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->soundFileAccessible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 465
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 466
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 472
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 446
    return-void

    .line 470
    :cond_3
    or-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
