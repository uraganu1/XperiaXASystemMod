.class Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$3;
.super Ljava/lang/Object;
.source "PowerOffAlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 142
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$3;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    const-string/jumbo v1, "PowerOffAlarmManager"

    const-string/jumbo v2, "sendRemoveIPOWinBroadcast ... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "alarm.boot.remove.ipowin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "in":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$3;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get0(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    return-void
.end method
