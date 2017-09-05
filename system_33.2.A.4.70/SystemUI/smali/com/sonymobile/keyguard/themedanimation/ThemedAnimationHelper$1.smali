.class Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ThemedAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintAcquiredWithParam(I)V
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    .line 46
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->-get1(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->isTrackingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->-get0(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->-get2(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->startOpenAnimationFromCurrentPos()V

    goto :goto_0
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1
    .param p1, "bouncer"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-static {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->-set0(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;Z)Z

    .line 66
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-static {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->-set1(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;Z)Z

    .line 59
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;->this$0:Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;

    invoke-static {v0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->-wrap0(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)V

    .line 57
    return-void
.end method
