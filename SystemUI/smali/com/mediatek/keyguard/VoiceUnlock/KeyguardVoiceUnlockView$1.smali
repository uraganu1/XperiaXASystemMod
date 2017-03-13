.class Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardVoiceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 272
    const-string/jumbo v0, "KeyguardVoiceUnlockView"

    const-string/jumbo v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-wrap0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)V

    .line 271
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    .line 260
    const-string/jumbo v0, "KeyguardVoiceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardBouncerChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-wrap0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)V

    .line 259
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 254
    const-string/jumbo v0, "KeyguardVoiceUnlockView"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-wrap0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)V

    .line 253
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-wrap1(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-get0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-get0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 225
    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 266
    const-string/jumbo v0, "KeyguardVoiceUnlockView"

    const-string/jumbo v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-wrap0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)V

    .line 265
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 246
    const-string/jumbo v0, "KeyguardVoiceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-get0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-wrap2(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)V

    .line 245
    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitching("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-wrap1(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-get0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;->-get0(Lcom/mediatek/keyguard/VoiceUnlock/KeyguardVoiceUnlockView;)Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/keyguard/VoiceUnlock/BiometricSensorUnlock;->stop()Z

    .line 235
    :cond_0
    return-void
.end method
