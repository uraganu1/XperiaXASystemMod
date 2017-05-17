.class Lcom/sonyericsson/movablepanes/paneview/PaneView$7;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/movablepanes/paneview/PaneView;->createDynamicsRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/movablepanes/paneview/PaneView;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 777
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 778
    .local v0, "now":J
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/movablepanes/util/Dynamics;->update(J)V

    .line 779
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->updatePanePosition()V

    .line 781
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    const v3, 0x3c23d70a    # 0.01f

    const v4, 0x3a83126f    # 0.001f

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/movablepanes/util/Dynamics;->isAtRest(FF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 782
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/util/Dynamics;->adjustPositionAndVelocity()V

    .line 788
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mFlingStateListener:Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;

    if-eqz v2, :cond_2

    .line 789
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mFlingStateListener:Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;->onFlingStateChanged(Z)V

    .line 792
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-boolean v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mIsInteracting:Z

    if-eqz v2, :cond_0

    .line 793
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->interactionEnd()V

    goto :goto_0
.end method
