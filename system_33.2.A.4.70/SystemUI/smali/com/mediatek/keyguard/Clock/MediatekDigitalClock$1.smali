.class Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "MediatekDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;->this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;->this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    invoke-static {v0}, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;->-get1(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;->this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;->-set0(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;->this$0:Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;

    invoke-static {v0}, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;->-get0(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1$1;

    invoke-direct {v1, p0}, Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1$1;-><init>(Lcom/mediatek/keyguard/Clock/MediatekDigitalClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method
