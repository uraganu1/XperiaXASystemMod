.class Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$2;
.super Ljava/lang/Object;
.source "PowerOffAlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$2;->this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$2;->this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get0(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.normal.boot.done"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
