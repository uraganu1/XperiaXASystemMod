.class Lcom/android/systemui/recents/views/TaskView$7;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->dismissTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "val$tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$7;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$7;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$7;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$7;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$7;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewDismissed(Lcom/android/systemui/recents/views/TaskView;)V

    .line 488
    :cond_0
    return-void
.end method