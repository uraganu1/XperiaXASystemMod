.class public Lcom/sonyericsson/conversations/notifications/MessageReceivedNotificationService;
.super Lcom/sonymobile/conversations/transaction/ConversationService;
.source "MessageReceivedNotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/ConversationService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 32
    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    const-string/jumbo v2, "com.sonyericsson.conversations.notifications.MessageReceivedNotificationService.CREATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 38
    .local v1, "messageUri":Landroid/net/Uri;
    sget-boolean v2, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create notification: URI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 42
    :cond_0
    if-eqz v1, :cond_1

    .line 43
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v2

    .line 44
    sget-object v3, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v4, 0x0

    .line 43
    invoke-interface {v2, v1, v3, v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 53
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "messageUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/MessageReceivedNotificationService;->stopSelf()V

    .line 54
    const/4 v2, 0x2

    return v2

    .line 47
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    sget-boolean v2, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
