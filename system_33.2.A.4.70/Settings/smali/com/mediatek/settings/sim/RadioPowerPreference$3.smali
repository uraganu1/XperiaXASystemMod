.class Lcom/mediatek/settings/sim/RadioPowerPreference$3;
.super Landroid/os/Handler;
.source "RadioPowerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/sim/RadioPowerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/RadioPowerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/sim/RadioPowerPreference;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$3;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 297
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 296
    :goto_0
    :pswitch_0
    return-void

    .line 299
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$3;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get6()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-wrap0(Lcom/mediatek/settings/sim/RadioPowerPreference;Landroid/app/Dialog;)V

    .line 300
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 301
    .local v2, "result":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 302
    .local v1, "newProvisionedState":I
    if-eqz v2, :cond_1

    .line 303
    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$3;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v3}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get3(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    const v0, 0x7f0b0d5b

    .line 306
    .local v0, "msgId":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$3;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    const/4 v4, 0x2

    invoke-static {v3, v4, v0, v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-wrap3(Lcom/mediatek/settings/sim/RadioPowerPreference;III)V

    .line 310
    .end local v0    # "msgId":I
    :goto_2
    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$3;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v3}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get2(Lcom/mediatek/settings/sim/RadioPowerPreference;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 305
    :cond_0
    const v0, 0x7f0b0d5d

    .restart local v0    # "msgId":I
    goto :goto_1

    .line 308
    .end local v0    # "msgId":I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$3;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    const/4 v4, 0x3

    invoke-static {v3, v4, v5, v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-wrap3(Lcom/mediatek/settings/sim/RadioPowerPreference;III)V

    goto :goto_2

    .line 314
    .end local v1    # "newProvisionedState":I
    .end local v2    # "result":I
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$3;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get6()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-wrap0(Lcom/mediatek/settings/sim/RadioPowerPreference;Landroid/app/Dialog;)V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
