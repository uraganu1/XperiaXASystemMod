.class Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$1;
.super Landroid/os/Handler;
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
    .line 84
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$1;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$1;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->-wrap1(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$1;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->-get1(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView$1;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;->-get1(Lcom/mediatek/keyguard/PowerOffAlarm/PowerOffAlarmView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "label"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
