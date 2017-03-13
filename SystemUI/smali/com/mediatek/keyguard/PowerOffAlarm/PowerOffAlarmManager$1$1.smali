.class Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1$1;
.super Ljava/lang/Object;
.source "PowerOffAlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1$1;->this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1$1;->this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$1;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get3(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->hideLocked()V

    .line 78
    return-void
.end method
