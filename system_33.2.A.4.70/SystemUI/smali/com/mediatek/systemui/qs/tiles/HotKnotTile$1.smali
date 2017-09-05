.class Lcom/mediatek/systemui/qs/tiles/HotKnotTile$1;
.super Landroid/content/BroadcastReceiver;
.source "HotKnotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/HotKnotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/systemui/qs/tiles/HotKnotTile;


# direct methods
.method constructor <init>(Lcom/mediatek/systemui/qs/tiles/HotKnotTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/systemui/qs/tiles/HotKnotTile;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/HotKnotTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    const-string/jumbo v0, "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v0, "HotKnotTile"

    const-string/jumbo v1, "HotKnotAdapter onReceive DAPTER_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/HotKnotTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/HotKnotTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/HotKnotTile;)V

    .line 107
    :cond_0
    return-void
.end method
