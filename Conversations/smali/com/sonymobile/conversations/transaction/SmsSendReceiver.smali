.class public Lcom/sonymobile/conversations/transaction/SmsSendReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsSendReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 19
    invoke-static {p1, p2}, Lcom/sonymobile/conversations/transaction/SmsReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 17
    return-void
.end method
