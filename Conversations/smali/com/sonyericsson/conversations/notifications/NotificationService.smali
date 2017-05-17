.class public Lcom/sonyericsson/conversations/notifications/NotificationService;
.super Landroid/app/IntentService;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    const-string/jumbo v0, "NotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonyericsson/conversations/Apis;->getNotificationManager()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v6

    .line 158
    .local v6, "notificationManager":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
    const-string/jumbo v9, "ACTION_ADD_NOTIFICATION_URI"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 160
    const-string/jumbo v9, "EXTRA_URI"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 162
    .local v8, "uri":Landroid/net/Uri;
    const-string/jumbo v9, "EXTRA_NOTIFICATION_TYPE"

    .line 161
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 163
    .local v7, "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    const-string/jumbo v9, "EXTRA_IS_SILENT"

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 164
    .local v4, "isSilent":Z
    invoke-interface {v6, v8, v7, v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 153
    .end local v4    # "isSilent":Z
    .end local v7    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string/jumbo v9, "ACTION_ADD_NOTIFICATION_BUNDLE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 168
    const-string/jumbo v9, "EXTRA_BUNDLE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 169
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 170
    .restart local v7    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    invoke-interface {v6, v7, v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Landroid/os/Bundle;)V

    goto :goto_0

    .line 158
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v7    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_2
    const-string/jumbo v9, "ACTION_ADD_NOTIFICATION_IM_NOTIFICATION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 175
    const-string/jumbo v9, "EXTRA_IM_NOTIFICATION"

    .line 174
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/notifications/ImNotification;

    .line 176
    .local v3, "imNotification":Lcom/sonyericsson/conversations/notifications/ImNotification;
    const-string/jumbo v9, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 177
    .restart local v7    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    const-string/jumbo v9, "EXTRA_IS_SILENT"

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 178
    .restart local v4    # "isSilent":Z
    invoke-interface {v6, v3, v7, v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 158
    .end local v3    # "imNotification":Lcom/sonyericsson/conversations/notifications/ImNotification;
    .end local v4    # "isSilent":Z
    .end local v7    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_3
    const-string/jumbo v9, "ACTION_ADD_NOTIFICATION_TYPE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 182
    const-string/jumbo v9, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 183
    .restart local v7    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    invoke-interface {v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    goto :goto_0

    .line 158
    .end local v7    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_4
    const-string/jumbo v9, "ACTION_REMOVE_ALL_NOTIFICATIONS_OF_TYPE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 187
    const-string/jumbo v9, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 188
    .restart local v7    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    invoke-interface {v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeAllNotificationsOfType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    goto :goto_0

    .line 158
    .end local v7    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_5
    const-string/jumbo v9, "ACTION_REMOVE_NOTIFICATIONS_FOR_CONVERSATION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 192
    const-string/jumbo v9, "EXTRA_CONVERSATION_ID_KEY"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "conversationIdKey":Ljava/lang/String;
    invoke-interface {v6, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeNotificationsForConversation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v2    # "conversationIdKey":Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, "ACTION_REMOVE_SPECIFIC_NOTIFICATION_URI"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 197
    const-string/jumbo v9, "EXTRA_URI"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 198
    .restart local v8    # "uri":Landroid/net/Uri;
    invoke-interface {v6, v8}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 158
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_7
    const-string/jumbo v9, "ACTION_REMOVE_SPECIFIC_NOTIFICATION_MESSAGE_ID"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 202
    const-string/jumbo v9, "EXTRA_MESSAGE_ID"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "messageId":Ljava/lang/String;
    invoke-interface {v6, v5}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v5    # "messageId":Ljava/lang/String;
    :cond_8
    const-string/jumbo v9, "ACTION_UPDATE_BADGE_ICON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 207
    invoke-interface {v6}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    goto/16 :goto_0

    .line 211
    :cond_9
    sget-boolean v9, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v9, :cond_0

    .line 212
    const-string/jumbo v9, "type: "

    invoke-static {v9}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v9

    const-string/jumbo v10, "Received intent with no specified action"

    invoke-virtual {v9, v10}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    goto/16 :goto_0
.end method
