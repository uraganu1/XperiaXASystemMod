.class Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;
.super Landroid/database/ContentObserver;
.source "MsimRadioValueObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/sim/MsimRadioValueObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/MsimRadioValueObserver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/sim/MsimRadioValueObserver;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;->this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 19
    iget-object v1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;->this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-static {v1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->-get0(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 20
    const-string/jumbo v2, "msim_mode_setting"

    const/4 v3, -0x1

    .line 19
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 21
    .local v0, "mSimMode":I
    const-string/jumbo v1, "MsimRadioValueObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange, mSimMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;->this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-static {v1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->-get1(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;->this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-static {v1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->-get1(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;->onChange(IZ)V

    .line 18
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string/jumbo v1, "MsimRadioValueObserver"

    const-string/jumbo v2, "mListener has been ungistered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
