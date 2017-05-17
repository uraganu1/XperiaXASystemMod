.class public Lcom/sonymobile/conversations/transaction/SimFullReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimFullReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 46
    const-string/jumbo v3, "device_provisioned"

    const/4 v4, 0x0

    .line 45
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 47
    const-string/jumbo v2, "android.provider.Telephony.SIM_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 49
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSubscriptionIdFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 50
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSlotIndexFromSubscriptionId(I)I

    move-result v0

    .line 52
    .local v0, "simCardSlotIndex":I
    if-ne v0, v5, :cond_1

    .line 53
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_2_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-interface {v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 44
    .end local v0    # "simCardSlotIndex":I
    .end local v1    # "subscriptionId":I
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local v0    # "simCardSlotIndex":I
    .restart local v1    # "subscriptionId":I
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_1_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    invoke-interface {v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    goto :goto_0
.end method
