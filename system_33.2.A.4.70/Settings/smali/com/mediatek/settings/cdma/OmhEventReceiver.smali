.class public Lcom/mediatek/settings/cdma/OmhEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmhEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const-string/jumbo v3, "com.mediatek.internal.omh.cardcheck"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 18
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v3, "subid"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 19
    .local v2, "subId":I
    const-string/jumbo v3, "is_ready"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 20
    .local v1, "isReady":Z
    const-string/jumbo v3, "OmhEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "omh card ready, subid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", is ready = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {v2}, Lcom/mediatek/settings/cdma/CdmaUtils;->isNonOmhSimInOmhDevice(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-static {p1, v2}, Lcom/mediatek/settings/cdma/CdmaUtils;->hasNonOmhRecord(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    .end local v0    # "extra":Landroid/os/Bundle;
    .end local v1    # "isReady":Z
    .end local v2    # "subId":I
    :cond_0
    :goto_0
    return-void

    .line 23
    .restart local v0    # "extra":Landroid/os/Bundle;
    .restart local v1    # "isReady":Z
    .restart local v2    # "subId":I
    :cond_1
    invoke-static {p1, v2}, Lcom/mediatek/settings/cdma/CdmaUtils;->recordNonOmhSub(Landroid/content/Context;I)V

    .line 24
    const-string/jumbo v3, "OmhEventReceiver"

    const-string/jumbo v4, "new OMH record, send new request..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p1}, Lcom/mediatek/settings/cdma/OmhEventHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/cdma/OmhEventHandler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/cdma/OmhEventHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
