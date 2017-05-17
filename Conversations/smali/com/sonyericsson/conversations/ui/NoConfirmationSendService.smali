.class public Lcom/sonyericsson/conversations/ui/NoConfirmationSendService;
.super Landroid/app/Service;
.source "NoConfirmationSendService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/NoConfirmationSendService;->stopSelf()V

    .line 50
    const/4 v1, 0x2

    return v1

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/NoConfirmationSendService;->stopSelf()V

    .line 55
    const/4 v1, 0x2

    return v1

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 58
    .local v9, "extras":Landroid/os/Bundle;
    if-nez v9, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/NoConfirmationSendService;->stopSelf()V

    .line 60
    const/4 v1, 0x2

    return v1

    .line 63
    :cond_2
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 66
    .local v10, "intentUri":Landroid/net/Uri;
    if-nez v10, :cond_3

    .line 67
    const-string/jumbo v1, "Called NoConfirmationSendService without recipients"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/NoConfirmationSendService;->stopSelf()V

    .line 69
    const/4 v1, 0x2

    return v1

    .line 71
    :cond_3
    invoke-static {v10}, Lcom/sonyericsson/conversations/conversation/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 73
    .local v11, "recipients":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/NoConfirmationSendService;->stopSelf()V

    .line 75
    const/4 v1, 0x2

    return v1

    .line 77
    :cond_5
    const-string/jumbo v1, ";"

    invoke-static {v11, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "dests":[Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSubscriptionIdFromIntent(Landroid/content/Intent;)I

    move-result v6

    .line 81
    .local v6, "subscriptionId":I
    const/4 v1, -0x1

    if-ne v6, v1, :cond_6

    .line 82
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v6

    .line 87
    :cond_6
    const-wide/16 v4, -0x1

    .line 88
    .local v4, "threadId":J
    new-instance v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 94
    .local v0, "smsMessageSender":Lcom/sonymobile/conversations/transaction/SmsMessageSender;
    :try_start_0
    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/NoConfirmationSendService;->stopSelf()V

    .line 100
    const/4 v1, 0x2

    return v1

    .line 95
    :catch_0
    move-exception v8

    .line 96
    .local v8, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to send SMS message, threadId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
