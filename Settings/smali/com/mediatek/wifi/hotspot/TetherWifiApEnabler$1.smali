.class Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherWifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    .line 86
    const-string/jumbo v5, "wifi_state"

    const/16 v6, 0xe

    .line 85
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->-wrap1(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string/jumbo v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 89
    const-string/jumbo v4, "availableArray"

    .line 88
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 91
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "activeArray"

    .line 90
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "erroredArray"

    .line 92
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 94
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 95
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 96
    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->-wrap2(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->-wrap3(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    invoke-static {v4}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->-wrap0(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;)V

    goto :goto_0
.end method
