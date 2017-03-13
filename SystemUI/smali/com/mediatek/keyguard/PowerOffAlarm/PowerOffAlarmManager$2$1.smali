.class Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$1;
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
    .line 113
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$1;->this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$1;->this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get2(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$1;->this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get3(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isSecure()Z

    move-result v0

    .line 118
    if-eqz v0, :cond_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$1;->this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get3(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->setSuppressPlaySoundFlag()V

    .line 122
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$1;->this$1:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get3(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->showLocked(Landroid/os/Bundle;)V

    .line 115
    :cond_1
    return-void
.end method
