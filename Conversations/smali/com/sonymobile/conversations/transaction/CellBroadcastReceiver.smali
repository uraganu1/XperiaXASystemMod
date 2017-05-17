.class public Lcom/sonymobile/conversations/transaction/CellBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CellBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final removeMsgBodyTrailingChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "messageBody"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    return-object p1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 68
    .local v0, "endIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    .line 73
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "validMessageBody":Ljava/lang/String;
    return-object v1

    .line 68
    .end local v1    # "validMessageBody":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string/jumbo v5, "Conversations"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    const-string/jumbo v5, "Received CB message"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCellBroadcastEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring unprivileged action received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 35
    return-void

    .line 37
    :cond_1
    const-string/jumbo v5, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 38
    return-void

    .line 41
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 42
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_3

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with no extras!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 44
    return-void

    .line 47
    :cond_3
    const-string/jumbo v5, "message"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsCbMessage;

    .line 48
    .local v3, "message":Landroid/telephony/SmsCbMessage;
    if-eqz v3, :cond_4

    .line 49
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "body":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonymobile/conversations/transaction/CellBroadcastReceiver;->removeMsgBodyTrailingChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "messageBody":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 52
    const-string/jumbo v6, "com.android.mms.ui.CellBroadcastActivity"

    .line 51
    invoke-virtual {v5, p1, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 53
    const-string/jumbo v6, "CLASS_ZERO_BODY"

    .line 51
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 54
    const/high16 v6, 0x18000000

    .line 51
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, "cellBroadcastIntent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "cellBroadcastIntent":Landroid/content/Intent;
    .end local v4    # "messageBody":Ljava/lang/String;
    :cond_4
    return-void
.end method
