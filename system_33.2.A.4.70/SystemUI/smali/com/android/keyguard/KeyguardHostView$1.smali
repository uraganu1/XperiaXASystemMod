.class Lcom/android/keyguard/KeyguardHostView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrustGrantedWithFlags(II)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    if-eq p2, v3, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardHostView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardHostView;->-wrap0(Lcom/android/keyguard/KeyguardHostView;)Z

    move-result v0

    .line 83
    .local v0, "bouncerVisible":Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    .line 85
    .local v2, "initiatedByUser":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    .line 87
    .local v1, "dismissKeyguard":Z
    :goto_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    .line 88
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_3

    if-eqz v1, :cond_8

    .line 89
    :cond_3
    if-nez v0, :cond_4

    .line 93
    const-string/jumbo v3, "KeyguardViewBase"

    const-string/jumbo v4, "TrustAgent dismissed Keyguard."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardHostView;->dismiss(Z)Z

    .line 78
    :cond_5
    :goto_2
    return-void

    .line 83
    .end local v1    # "dismissKeyguard":Z
    .end local v2    # "initiatedByUser":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "initiatedByUser":Z
    goto :goto_0

    .line 85
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "dismissKeyguard":Z
    goto :goto_1

    .line 97
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->playTrustedSound()V

    goto :goto_2
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 73
    return-void
.end method
