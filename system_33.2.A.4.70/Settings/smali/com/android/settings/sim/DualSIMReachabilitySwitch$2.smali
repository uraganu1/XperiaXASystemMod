.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;
.super Ljava/lang/Thread;
.source "DualSIMReachabilitySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processSetCallWaiting(IZLandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

.field final synthetic val$enable:Z

.field final synthetic val$onComplete:Landroid/os/Message;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/DualSIMReachabilitySwitch;
    .param p2, "val$phoneId"    # I
    .param p3, "val$enable"    # Z
    .param p4, "val$onComplete"    # Landroid/os/Message;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iput p2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->val$phoneId:I

    iput-boolean p3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->val$enable:Z

    iput-object p4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->val$onComplete:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 283
    monitor-enter p0

    .line 285
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 289
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v1, v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    iget v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->val$phoneId:I

    iget-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->val$enable:Z

    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->val$onComplete:Landroid/os/Message;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->setCallWaiting(IZLandroid/os/Message;)V

    .line 277
    return-void

    .line 286
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 283
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
