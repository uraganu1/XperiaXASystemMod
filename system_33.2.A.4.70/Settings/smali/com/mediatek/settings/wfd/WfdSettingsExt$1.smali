.class Lcom/mediatek/settings/wfd/WfdSettingsExt$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdSettingsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSettingsExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/wfd/WfdSettingsExt;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "@M_WfdSettingsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string/jumbo v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    .line 154
    const-string/jumbo v1, "wifiP2pDevice"

    .line 153
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2, v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->-set0(Lcom/mediatek/settings/wfd/WfdSettingsExt;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 155
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->-wrap0(Lcom/mediatek/settings/wfd/WfdSettingsExt;)V

    .line 148
    :cond_0
    return-void
.end method
