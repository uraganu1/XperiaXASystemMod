.class Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;
.super Ljava/lang/Object;
.source "ThemeableAnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 59
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 63
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-static {v4}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->-get0(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-static {v5}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->-get1(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 66
    .local v2, "now":J
    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    .line 68
    .local v0, "next":J
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-virtual {v4}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->onTimeChanged()V

    .line 70
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-static {v4}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->-get0(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;

    invoke-static {v5}, Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;->-get1(Lcom/sonymobile/keyguard/plugin/themeableanalogclock/ThemeableAnalogClock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method
