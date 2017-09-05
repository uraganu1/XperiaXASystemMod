.class Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x5dc

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v1, "PowerOffAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LAUNCH_PWROFF_ALARM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get1(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x73

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v1, "android.intent.action.normal.boot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    const-string/jumbo v1, "PowerOffAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NORMAL_BOOT_ACTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get1(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    const/16 v4, 0x74

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 72
    :cond_2
    const-string/jumbo v1, "android.intent.action.normal.shutdown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string/jumbo v1, "PowerOffAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_SHUTDOWN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get1(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1$1;

    invoke-direct {v2, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1$1;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
