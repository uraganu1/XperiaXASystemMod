.class Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenMirroringControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 79
    const-string/jumbo v1, "com.sonymobile.tvout.wifidisplay.intent.action.WIFI_DISPLAY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v1, "com.sonymobile.tvout.wifidisplay.intent.extra.WIFI_DISPLAY_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 78
    .end local v0    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local v0    # "state":I
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    invoke-static {v1, v3}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->-set0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;Z)Z

    .line 84
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    invoke-static {v1, v3}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->-set0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;Z)Z

    .line 91
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->-set0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;Z)Z

    .line 96
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;)V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    invoke-static {v1, v3}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->-set0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;Z)Z

    .line 100
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringControllerImpl;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
