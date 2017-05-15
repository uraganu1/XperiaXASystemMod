.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;
.super Ljava/lang/Thread;
.source "DualSIMReachabilitySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processSetCallForward(IIILandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

.field final synthetic val$action:I

.field final synthetic val$msg:Landroid/os/Message;

.field final synthetic val$phoneId:I

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;IIILandroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/DualSIMReachabilitySwitch;
    .param p2, "val$phoneId"    # I
    .param p3, "val$action"    # I
    .param p4, "val$reason"    # I
    .param p5, "val$msg"    # Landroid/os/Message;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iput p2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->val$phoneId:I

    iput p3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->val$action:I

    iput p4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->val$reason:I

    iput-object p5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 298
    monitor-enter p0

    .line 304
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 310
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v0, v0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    iget v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->val$phoneId:I

    iget v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->val$action:I

    iget v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->val$reason:I

    .line 311
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v4, v4, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->val$phoneId:I

    invoke-static {v5, v6}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap1(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)I

    move-result v5

    aget-object v4, v4, v5

    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->val$msg:Landroid/os/Message;

    const/4 v5, 0x0

    .line 310
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 297
    return-void

    .line 305
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 298
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
