.class Lcom/android/keyguard/KeyguardUpdateMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x147

    const/4 v5, 0x0

    .line 807
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 811
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 812
    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->getSendingUserId()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 811
    const/16 v4, 0x13d

    invoke-virtual {v2, v4, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 813
    :cond_2
    const-string/jumbo v1, "com.android.facelock.FACE_UNLOCK_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 814
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 815
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->getSendingUserId()I

    move-result v3

    .line 814
    const/4 v4, 0x1

    invoke-virtual {v2, v6, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 816
    :cond_3
    const-string/jumbo v1, "com.android.facelock.FACE_UNLOCK_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 817
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 818
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->getSendingUserId()I

    move-result v3

    .line 817
    invoke-virtual {v2, v6, v5, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 819
    :cond_4
    const-string/jumbo v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x135

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
