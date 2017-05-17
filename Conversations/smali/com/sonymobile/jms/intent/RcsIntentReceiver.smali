.class public Lcom/sonymobile/jms/intent/RcsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RcsIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getRcsIntentServiceApi()Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/jms/intent/RcsIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "newIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    return-void

    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v1, "ImApi not initialized!"

    .line 19
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 20
    return-void
.end method
