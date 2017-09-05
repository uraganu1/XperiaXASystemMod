.class Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleXChanged(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->-wrap0(Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;)V

    .line 61
    return-void
.end method

.method public onScaleYChanged(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$1;->this$0:Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;

    invoke-static {v0}, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;->-wrap0(Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;)V

    .line 66
    return-void
.end method
