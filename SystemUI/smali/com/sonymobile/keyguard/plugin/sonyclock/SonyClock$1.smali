.class Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;
.super Landroid/content/BroadcastReceiver;
.source "SonyClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "timeZone":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {v1, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->-wrap0(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->-wrap2(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    .line 106
    .end local v0    # "timeZone":Ljava/lang/String;
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->-wrap3(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;Z)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;

    invoke-static {v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;->-wrap2(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClock;)V

    goto :goto_0
.end method
