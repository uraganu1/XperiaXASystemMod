.class Lcom/mediatek/settings/wfd/WfdSinkExt$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdSinkExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSinkExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/wfd/WfdSinkExt;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "@M_WfdSinkExt"

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

    .line 95
    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;

    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-static {v2}, Lcom/mediatek/settings/wfd/WfdSinkExt;->-get0(Lcom/mediatek/settings/wfd/WfdSinkExt;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkExt;->-wrap0(Lcom/mediatek/settings/wfd/WfdSinkExt;Landroid/hardware/display/WifiDisplayStatus;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string/jumbo v1, "com.mediatek.wfd.portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkExt;->-set0(Lcom/mediatek/settings/wfd/WfdSinkExt;Z)Z

    goto :goto_0
.end method
