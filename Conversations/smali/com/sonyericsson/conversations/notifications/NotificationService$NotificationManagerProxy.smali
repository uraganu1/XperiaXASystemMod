.class public Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/notifications/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationManagerProxy"
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private getGenericIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/conversations/notifications/NotificationService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p3, "isSilent"    # Z

    .prologue
    monitor-enter p0

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->getGenericIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_ADD_NOTIFICATION_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v1, "EXTRA_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v1, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "EXTRA_IS_SILENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 54
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized add(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
    .locals 2
    .param p1, "imNotification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p3, "isSilent"    # Z

    .prologue
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->getGenericIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_ADD_NOTIFICATION_IM_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v1, "EXTRA_IM_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v1, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "EXTRA_IS_SILENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 65
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->getGenericIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_ADD_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string/jumbo v1, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 37
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->getGenericIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_ADD_NOTIFICATION_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v1, "EXTRA_BUNDLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 45
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAllNotificationsOfType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .prologue
    monitor-enter p0

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->getGenericIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_REMOVE_ALL_NOTIFICATIONS_OF_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 75
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeNotificationsForConversation(Ljava/lang/String;)V
    .locals 2
    .param p1, "conversationIdKey"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->getGenericIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_REMOVE_NOTIFICATIONS_FOR_CONVERSATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "EXTRA_CONVERSATION_ID_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 83
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSpecificNotification(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->getGenericIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_REMOVE_SPECIFIC_NOTIFICATION_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v1, "EXTRA_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 99
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSpecificNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->getGenericIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_REMOVE_SPECIFIC_NOTIFICATION_MESSAGE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string/jumbo v1, "EXTRA_MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 91
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateBadgeIcon()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->getGenericIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_UPDATE_BADGE_ICON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 107
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
