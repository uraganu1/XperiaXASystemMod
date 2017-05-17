.class public Lcom/sonymobile/conversations/transaction/PrivilegedSmsSentReceiver;
.super Lcom/sonymobile/conversations/transaction/SmsReceiver;
.source "PrivilegedSmsSentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/SmsReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/conversations/transaction/PrivilegedSmsSentReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 18
    return-void
.end method
