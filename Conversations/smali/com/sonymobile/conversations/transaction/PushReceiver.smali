.class public Lcom/sonymobile/conversations/transaction/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Lcom/google/android/mms/pdu/DeliveryInd;J)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deliveryInd"    # Lcom/google/android/mms/pdu/DeliveryInd;
    .param p2, "messageId"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/conversations/transaction/PushReceiver;->handleDeliveryReport(Landroid/content/Context;Lcom/google/android/mms/pdu/DeliveryInd;J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static handleDeliveryReport(Landroid/content/Context;Lcom/google/android/mms/pdu/DeliveryInd;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deliveryInd"    # Lcom/google/android/mms/pdu/DeliveryInd;
    .param p2, "messageId"    # J

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 227
    .local v4, "to":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 229
    invoke-static {p2, p3}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMmsMessage(J)Landroid/net/Uri;

    move-result-object v5

    .line 228
    invoke-static {p0, v5}, Lcom/sonyericsson/conversations/model/MessageUtil;->getThreadIdForMessage(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 230
    .local v0, "recipientThreadId":J
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v2

    .line 232
    .local v2, "status":I
    invoke-static {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateDeliveryStatus(Landroid/content/Context;IJ)V

    .line 233
    const/16 v5, 0x81

    if-eq v2, v5, :cond_0

    .line 236
    sget-object v5, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 235
    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 237
    .local v3, "threadUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v5

    .line 238
    sget-object v6, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->DELIVERY_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 239
    const/4 v7, 0x0

    .line 237
    invoke-interface {v5, v3, v6, v7}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 224
    .end local v0    # "recipientThreadId":J
    .end local v2    # "status":I
    .end local v3    # "threadUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 207
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "application/vnd.wap.mms-message"

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    .line 207
    if-eqz v2, :cond_0

    .line 215
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 217
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "MMS PushReceiver"

    .line 216
    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 218
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 219
    new-instance v2, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;

    invoke-direct {v2, p1}, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;-><init>(Landroid/content/Context;)V

    new-array v3, v4, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v1    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_0
    return-void
.end method
