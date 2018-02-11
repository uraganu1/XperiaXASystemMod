.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$17;
.super Ljava/lang/Thread;
.source "DualSIMReachabilitySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;->handleGetCallWaitingResponse(Landroid/os/AsyncResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$17;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 894
    monitor-enter p0

    .line 896
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$17;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 901
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$17;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v1, v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    .line 903
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$17;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v2, v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 902
    const/4 v3, 0x0

    .line 901
    invoke-virtual {v1, v4, v3, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 888
    return-void

    .line 897
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 894
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
