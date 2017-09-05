.class Lcom/android/systemui/recents/views/TaskView$8;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "val$v"    # Landroid/view/View;
    .param p3, "val$tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$8;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$8;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 729
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_1

    .line 735
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 736
    const-string/jumbo v2, "accessibility"

    .line 735
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 737
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$8;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-interface {v1, v2}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V

    .line 728
    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_2

    .line 744
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 746
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "overview_task_dismissed_source"

    .line 747
    const/4 v3, 0x2

    .line 746
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$8;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-interface {v1, v2}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskResize(Lcom/android/systemui/recents/views/TaskView;)V

    goto :goto_0
.end method
