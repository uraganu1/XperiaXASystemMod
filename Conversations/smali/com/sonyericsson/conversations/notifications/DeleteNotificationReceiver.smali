.class public Lcom/sonyericsson/conversations/notifications/DeleteNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeleteNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string/jumbo v1, "com.sonyericsson.conversations.notifications.ACTION_NOTIFICATION_CLEAR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 20
    sget-object v2, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->ACTION_NOTIFICATION_CLEAR_TYPE_EXTRA:Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 21
    .local v0, "typeInt":I
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->values()[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v2

    aget-object v2, v2, v0

    .line 21
    invoke-interface {v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeAllNotificationsOfType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 17
    .end local v0    # "typeInt":I
    :cond_0
    return-void
.end method
