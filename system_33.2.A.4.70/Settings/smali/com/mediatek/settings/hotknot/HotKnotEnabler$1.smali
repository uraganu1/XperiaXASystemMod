.class Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "HotKnotEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/hotknot/HotKnotEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/hotknot/HotKnotEnabler;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/hotknot/HotKnotEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;->this$0:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string/jumbo v1, "com.mediatek.hotknot.extra.ADAPTER_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 30
    .local v0, "state":I
    const-string/jumbo v1, "@M_HotKnotEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HotKnot state changed to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;->this$0:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->handleStateChanged(I)V

    .line 26
    return-void
.end method
