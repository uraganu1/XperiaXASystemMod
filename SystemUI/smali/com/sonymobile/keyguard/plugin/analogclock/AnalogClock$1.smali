.class Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 83
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->-get0(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v3}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->-get1(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 86
    .local v0, "time":J
    rem-long v2, v0, v4

    sub-long v2, v4, v2

    add-long/2addr v0, v2

    .line 88
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->-wrap2(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    .line 91
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->-get2(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->-get2(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->-get2(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->-wrap1(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-static {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->-get0(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method
