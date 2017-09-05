.class Lcom/android/keyguard/KeyguardStatusView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->-wrap3(Lcom/android/keyguard/KeyguardStatusView;Z)V

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView()V

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap5(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 133
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 113
    if-eqz p1, :cond_1

    .line 114
    const-string/jumbo v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh statusview showing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap1(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap6(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap4(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap5(Lcom/android/keyguard/KeyguardStatusView;)V

    goto :goto_0
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->-wrap3(Lcom/android/keyguard/KeyguardStatusView;Z)V

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap4(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 127
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap1(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 107
    return-void
.end method

.method public onUserClockChanged()V
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardStatusView;->-get0(Lcom/android/keyguard/KeyguardStatusView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 149
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardStatusView;->loadClockPluginView()V

    .line 147
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap1(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap6(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardStatusView;->-wrap0(Lcom/android/keyguard/KeyguardStatusView;I)V

    .line 140
    return-void
.end method
