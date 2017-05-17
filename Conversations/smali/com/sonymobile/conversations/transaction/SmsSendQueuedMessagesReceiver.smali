.class public Lcom/sonymobile/conversations/transaction/SmsSendQueuedMessagesReceiver;
.super Lcom/sonymobile/conversations/transaction/SmsReceiver;
.source "SmsSendQueuedMessagesReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/SmsReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.mms.transaction.SmsSendQueuedMessagesReceiver.SEND_QUEUED_MESSAGES"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonymobile/conversations/transaction/SmsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 18
    return-void
.end method
