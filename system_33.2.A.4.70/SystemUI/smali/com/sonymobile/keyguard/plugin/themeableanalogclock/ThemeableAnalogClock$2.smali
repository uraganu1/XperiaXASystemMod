.class Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$2;
.super Landroid/content/BroadcastReceiver;
.source "ThemeableAnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "timeZone":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-static {v1, v0}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->-wrap0(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;Ljava/lang/String;)V

    .line 88
    .end local v0    # "timeZone":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$2;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->onTimeChanged()V

    .line 80
    return-void
.end method
