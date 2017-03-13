.class Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private getMessageString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    const-string/jumbo v0, "ALARM_BOOT"

    return-object v0

    .line 95
    :pswitch_1
    const-string/jumbo v0, "RESHOW_KEYGUARD_LOCK"

    return-object v0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    const-string/jumbo v0, "PowerOffAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage enter msg name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->getMessageString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    const-string/jumbo v0, "PowerOffAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage exit msg name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->getMessageString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-wrap0(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get3(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->setSuppressPlaySoundFlag()V

    .line 110
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;->-get3(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->hideLocked()V

    .line 113
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$1;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$1;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;)V

    .line 125
    const-wide/16 v2, 0x7d0

    .line 113
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$2;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2$2;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;)V

    .line 132
    const-wide/16 v2, 0xfa0

    .line 127
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmManager$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
