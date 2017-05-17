.class public Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsContentChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x3

    .line 43
    const-string/jumbo v2, "Conversations"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Intent received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    :cond_0
    if-eqz p2, :cond_2

    .line 48
    const-string/jumbo v2, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-string/jumbo v2, "deleted_contents"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 50
    .local v0, "changed":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 52
    move-object v1, v0

    .line 54
    .local v1, "changedUri":Landroid/net/Uri;
    new-instance v2, Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver$1;

    const-string/jumbo v3, "mmsContentChanged"

    invoke-direct {v2, p0, v3, v1}, Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver$1;-><init>(Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2}, Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver$1;->start()V

    .line 42
    .end local v0    # "changed":Landroid/net/Uri;
    .end local v1    # "changedUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    const-string/jumbo v2, "Conversations"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const-string/jumbo v2, "Intent received was null"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
