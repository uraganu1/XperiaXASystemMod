.class public Lcom/sonymobile/conversations/transaction/SmsRejectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsRejectedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const-string/jumbo v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string/jumbo v1, "result"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, "reason":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SMS_REJECTED_MEMORY_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-interface {v1, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 42
    .end local v0    # "reason":I
    :cond_1
    return-void
.end method
