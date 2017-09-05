.class Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffAlarmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "PowerOffAlarmView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string/jumbo v3, "update.power.off.alarm.label"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 290
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x63

    iput v3, v2, Landroid/os/Message;->what:I

    .line 291
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "label"

    const-string/jumbo v4, "label"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 294
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;

    invoke-static {v3}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->-get0(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->isAlarmBoot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;

    invoke-static {v3}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->-wrap0(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)V

    goto :goto_0
.end method
