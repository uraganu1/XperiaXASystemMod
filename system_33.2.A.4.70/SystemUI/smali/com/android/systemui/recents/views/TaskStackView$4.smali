.class Lcom/android/systemui/recents/views/TaskStackView$4;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 948
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-boolean v9, v6, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationCompleted:Z

    .line 950
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 952
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 953
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 954
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 955
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 956
    .local v2, "taskViewCount":I
    if-lez v2, :cond_0

    .line 958
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 959
    add-int/lit8 v6, v2, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    .line 960
    .local v5, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 961
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v7, v7, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 966
    .end local v5    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 967
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v6, :cond_2

    .line 976
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->showDismissAllButton()V

    .line 947
    return-void

    .line 968
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 969
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v5

    .line 970
    .restart local v5    # "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v5, :cond_1

    .line 971
    invoke-virtual {v5, v9}, Lcom/android/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    goto :goto_0
.end method
