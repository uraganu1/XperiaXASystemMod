.class final Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/conversations/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/conversations/transaction/SmsReceiverService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    .line 182
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 192
    const-string/jumbo v6, "Conversations"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Handling incoming message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 195
    :cond_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 196
    .local v4, "serviceId":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    .line 198
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_a

    .line 199
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "errorCode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 202
    .local v2, "error":I
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    .line 204
    .local v1, "apis":Lcom/sonyericsson/conversations/Apis;
    const-string/jumbo v6, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 205
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-static {v6, v3, v2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->-wrap4(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    .line 236
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-static {v6, v4}, Lcom/sonymobile/conversations/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 191
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "apis":Lcom/sonyericsson/conversations/Apis;
    .end local v2    # "error":I
    :cond_2
    :goto_1
    return-void

    .line 206
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "apis":Lcom/sonyericsson/conversations/Apis;
    .restart local v2    # "error":I
    :cond_3
    if-eqz v1, :cond_4

    const-string/jumbo v6, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 207
    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v6

    .line 206
    if-eqz v6, :cond_4

    .line 209
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-static {v6, v3}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->-wrap3(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    :cond_4
    if-eqz v1, :cond_5

    const-string/jumbo v6, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 211
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 217
    :cond_5
    const-string/jumbo v6, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 218
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-static {v6, v3, v8}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->-wrap0(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    .line 212
    :cond_6
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserAllowedToUseMessaging()Z

    move-result v6

    .line 210
    if-eqz v6, :cond_5

    .line 213
    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v6

    .line 210
    if-eqz v6, :cond_5

    .line 216
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-static {v6, v3}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->-wrap3(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :cond_7
    const-string/jumbo v6, "com.android.mms.transaction.SmsSendQueuedMessagesReceiver.SEND_QUEUED_MESSAGES"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 221
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->-wrap1(Lcom/sonymobile/conversations/transaction/SmsReceiverService;)V

    goto :goto_0

    .line 222
    :cond_8
    const-string/jumbo v6, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 225
    const-string/jumbo v6, "subscription"

    .line 226
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v7

    .line 225
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 227
    .local v5, "subId":I
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-virtual {v6, v5}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V

    goto :goto_0

    .line 228
    .end local v5    # "subId":I
    :cond_9
    const-string/jumbo v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-static {v6, v3}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->-wrap2(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 238
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "apis":Lcom/sonyericsson/conversations/Apis;
    .end local v2    # "error":I
    :cond_a
    const-string/jumbo v6, "Conversations"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    const-string/jumbo v6, "Intent was null, do nothing"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
