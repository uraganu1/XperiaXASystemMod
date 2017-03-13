.class Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "VoiceWakeupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    const-string/jumbo v1, "onFinishedGoingToSleep - we should reset mIsDismissAndLaunchApp when screen is off."

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-set2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Z)Z

    .line 597
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->start()V

    .line 586
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 572
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardVisibilityChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-get2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-get3(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    .line 571
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap1(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V

    .line 575
    invoke-static {v3}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-set0(Z)Z

    .line 576
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-static {v0, v3}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-set2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Z)Z

    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    const-string/jumbo v1, "onKeyguardVisibilityChanged() : Keyguard is hidden now, set mIsDismissAndLaunchApp = false(ex:phone call screen shows)"

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$4;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-static {v0, v3}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-set2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Z)Z

    goto :goto_0
.end method
