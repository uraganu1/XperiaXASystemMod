.class public Lcom/sonyericsson/conversations/notifications/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;


# instance fields
.field private mBadgeController:Lcom/sonyericsson/conversations/notifications/BadgeController;

.field private final mContext:Landroid/content/Context;

.field private mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

.field private mJmsNotificationHandler:Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;

.field private final mPlatformNotificationManager:Landroid/app/NotificationManager;

.field private final mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonyericsson/conversations/conversation/ConversationManager;Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imMessageStorageApi"    # Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .param p3, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;
    .param p4, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p5, "conversationManager"    # Lcom/sonyericsson/conversations/conversation/ConversationManager;
    .param p6, "notificationManagerProxy"    # Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mContext:Landroid/content/Context;

    .line 49
    const-string/jumbo v0, "notification"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mPlatformNotificationManager:Landroid/app/NotificationManager;

    .line 50
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    .line 51
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 52
    new-instance v0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;

    invoke-direct {v0, p2, p3, p4, p6}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;-><init>(Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mJmsNotificationHandler:Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;

    .line 55
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/notifications/BadgeController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/notifications/BadgeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mBadgeController:Lcom/sonyericsson/conversations/notifications/BadgeController;

    .line 56
    iput-object p5, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 46
    return-void
.end method

.method private shouldShowNotification(J)Z
    .locals 7
    .param p1, "threadId"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 229
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    return v3

    .line 234
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 235
    .local v0, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->isConversationVisibile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 236
    return v2

    .line 238
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getLastOpenedConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 239
    .local v1, "lastOpenedConversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-eqz v4, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private shouldShowNotification(Lcom/sonymobile/jms/conversation/ImConversationId;)Z
    .locals 6
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 204
    return v3

    .line 208
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    invoke-static {p1}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromImConversationIdOnly(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 211
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->isGroupChatMuted(Lcom/sonyericsson/conversations/conversation/ConversationId;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    return v3

    .line 217
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 218
    .local v1, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->isConversationVisibile()Z

    move-result v5

    if-nez v5, :cond_2

    .line 219
    return v4

    .line 221
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getLastOpenedConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 222
    .local v2, "lastOpenedConversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v5

    if-nez v5, :cond_3

    .line 223
    return v4

    .line 225
    :cond_3
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    return v3

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method private updateWhichNotificationsAreShown(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V
    .locals 7
    .param p1, "notificationActions"    # Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    .prologue
    .line 183
    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->getNotificationIdsToCancel()Ljava/util/List;

    move-result-object v2

    .line 184
    .local v2, "notificationIdsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    .local v0, "id":Ljava/lang/Integer;
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    .line 186
    const-string/jumbo v4, "cancel id: "

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mPlatformNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 191
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_1
    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->getNotificationIdsToShow()Ljava/util/List;

    move-result-object v3

    .line 193
    .local v3, "notificationIdsToShow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 194
    .restart local v0    # "id":Ljava/lang/Integer;
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    .line 195
    const-string/jumbo v4, "notify id: "

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 197
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mPlatformNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 198
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;->getNotificationToShowFromId(I)Landroid/app/Notification;

    move-result-object v6

    .line 197
    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 181
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_3
    return-void
.end method


# virtual methods
.method public add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p3, "isSilent"    # Z

    .prologue
    .line 99
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    .line 100
    const-string/jumbo v4, "uri: "

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, ", type: "

    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, ", isSilent: "

    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 104
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    .line 105
    .local v2, "threadId":J
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mBadgeController:Lcom/sonyericsson/conversations/notifications/BadgeController;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/notifications/BadgeController;->updateIcon()V

    .line 106
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->shouldShowNotification(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    return-void

    .line 109
    :cond_1
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdOnly(J)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 110
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    invoke-virtual {v4, p1, v0, p2, p3}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getActionsToAddItem(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v1

    .line 112
    .local v1, "notificationMessage":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->updateWhichNotificationsAreShown(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 98
    return-void
.end method

.method public add(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
    .locals 3
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p3, "isSilent"    # Z

    .prologue
    .line 118
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v1, "itemId: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/ImNotification;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, ", imConversationId: "

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 120
    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/ImNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 120
    const-string/jumbo v2, ", type: "

    .line 119
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 121
    const-string/jumbo v2, ", isSilent: "

    .line 119
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mBadgeController:Lcom/sonyericsson/conversations/notifications/BadgeController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/notifications/BadgeController;->updateIcon()V

    .line 124
    invoke-interface {p1}, Lcom/sonyericsson/conversations/notifications/ImNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->shouldShowNotification(Lcom/sonymobile/jms/conversation/ImConversationId;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getActionsToAddItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 129
    .local v0, "notificationMessage":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->updateWhichNotificationsAreShown(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 117
    return-void
.end method

.method public add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 72
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "type: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 76
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getActionsToAddItem(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 80
    .local v0, "notificationMessage":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->updateWhichNotificationsAreShown(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 71
    return-void
.end method

.method public add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "with bundle, type: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getActionsToAddItem(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Landroid/os/Bundle;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 92
    .local v0, "notificationMessage":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    if-eqz v0, :cond_2

    .line 93
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->updateWhichNotificationsAreShown(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 84
    :cond_2
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mJmsNotificationHandler:Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mJmsNotificationHandler:Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->cleanup()V

    .line 66
    iput-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mJmsNotificationHandler:Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;

    .line 63
    :cond_0
    return-void
.end method

.method public removeAllNotificationsOfType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    .line 134
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 135
    const-string/jumbo v1, "type: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getActionsToRemoveAllNotificationsOfType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 140
    .local v0, "notificationActions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->updateWhichNotificationsAreShown(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 133
    return-void
.end method

.method public removeNotificationsForConversation(Ljava/lang/String;)V
    .locals 2
    .param p1, "conversationIdKey"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 146
    const-string/jumbo v1, "conversationIdKey: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getActionsToRemoveNotificationsForConversation(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 150
    .local v0, "notificationActions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->updateWhichNotificationsAreShown(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 144
    return-void
.end method

.method public removeSpecificNotification(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 165
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 166
    const-string/jumbo v1, "uri: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getActionsToRemoveSpecificNotification(Landroid/net/Uri;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 170
    .local v0, "notificationActions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->updateWhichNotificationsAreShown(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 164
    return-void
.end method

.method public removeSpecificNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 156
    const-string/jumbo v1, "messageId: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mStorage:Lcom/sonyericsson/conversations/notifications/NotificationStorage;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/notifications/NotificationStorage;->getActionsToRemoveSpecificNotification(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;

    move-result-object v0

    .line 160
    .local v0, "notificationActions":Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->updateWhichNotificationsAreShown(Lcom/sonyericsson/conversations/notifications/NotificationActionsApi;)V

    .line 154
    return-void
.end method

.method public updateBadgeIcon()V
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "enter"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationManager;->mBadgeController:Lcom/sonyericsson/conversations/notifications/BadgeController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/BadgeController;->updateIcon()V

    .line 174
    return-void
.end method
