.class Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;
.super Landroid/content/BroadcastReceiver;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-static {v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->-get3(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-virtual {v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 105
    const-string/jumbo v4, "airplane_mode_on"

    .line 104
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 106
    .local v1, "isAirplaneMode":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 107
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-static {v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->-get2(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-virtual {v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 100
    .end local v1    # "isAirplaneMode":Z
    :cond_0
    :goto_1
    return-void

    .line 104
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isAirplaneMode":Z
    goto :goto_0

    .line 110
    .end local v1    # "isAirplaneMode":Z
    :cond_2
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string/jumbo v3, "wifi_state"

    .line 112
    const/16 v4, 0xe

    .line 111
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 113
    .local v2, "state":I
    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-virtual {v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
