.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mInflater:Landroid/view/LayoutInflater;

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

.field mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTaskStackViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    .line 102
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    .line 104
    new-instance v0, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    .line 100
    return-void
.end method

.method private postDrawHeaderThumbnailTransitionRunnable(Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 7
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 467
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 518
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->runAfterPause(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method


# virtual methods
.method public disableLayersForOneFrame()V
    .locals 3

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v1

    .line 459
    .local v1, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 460
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->disableLayersForOneFrame()V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method

.method public dismissAllTasks()V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 194
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eq v0, v4, :cond_1

    move-object v3, v0

    .line 197
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 198
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->dismissAllRecentTasks()V

    .line 191
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void

    .line 194
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public dismissFocusedTask()V
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v0

    .line 434
    .local v0, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->dismissFocusedTask()V

    .line 431
    :cond_0
    return-void
.end method

.method public focusNextTask(Z)V
    .locals 3
    .param p1, "forward"    # Z

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v0

    .line 425
    .local v0, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)V

    .line 422
    :cond_0
    return-void
.end method

.method public getNextTaskOrTopTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task;
    .locals 10
    .param p1, "taskToSearch"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, "returnTask":Lcom/android/systemui/recents/model/Task;
    const/4 v0, 0x0

    .line 169
    .local v0, "found":Z
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v6

    .line 170
    .local v6, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 171
    .local v5, "stackCount":I
    add-int/lit8 v1, v5, -0x1

    .end local v3    # "returnTask":Lcom/android/systemui/recents/model/Task;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 172
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 173
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 175
    .local v8, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_3

    .line 176
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 178
    .local v7, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v0, :cond_0

    .line 179
    return-object v7

    .line 181
    :cond_0
    if-nez v3, :cond_1

    .line 182
    move-object v3, v7

    .line 183
    :cond_1
    if-ne v7, p1, :cond_2

    .line 184
    const/4 v0, 0x1

    .line 175
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 171
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 187
    .end local v2    # "j":I
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    return-object v3
.end method

.method getTaskStackViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    return-object v0
.end method

.method public hasValidSearchBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->isReinflateRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public launchFocusedTask()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v9

    .line 208
    .local v9, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 209
    .local v8, "stackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 210
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 211
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 213
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v11

    .line 214
    .local v11, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 215
    .local v10, "taskViewCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v10, :cond_1

    .line 216
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 217
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 218
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 219
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    .line 220
    const/4 v0, 0x1

    return v0

    .line 215
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 209
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v7    # "j":I
    .end local v10    # "taskViewCount":I
    .end local v11    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_2
    return v5
.end method

.method public launchPreviousTask()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v9

    .line 253
    .local v9, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 254
    .local v8, "stackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 255
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 256
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 257
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v11

    .line 260
    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 262
    .local v10, "taskCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v10, :cond_1

    .line 263
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 265
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    move-object v0, p0

    .line 266
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    .line 267
    const/4 v0, 0x1

    return v0

    .line 262
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 254
    .end local v7    # "j":I
    .end local v10    # "taskCount":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    return v5
.end method

.method public launchTask(Lcom/android/systemui/recents/model/Task;)Z
    .locals 12
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v9

    .line 231
    .local v9, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 232
    .local v8, "stackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 233
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 234
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 236
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v11

    .line 237
    .local v11, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 238
    .local v10, "taskViewCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v10, :cond_1

    .line 239
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 240
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move-object v0, p0

    move-object v4, p1

    .line 241
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    .line 242
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 232
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 246
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v7    # "j":I
    .end local v10    # "taskViewCount":I
    .end local v11    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_2
    return v5
.end method

.method public onAllTaskViewsDismissed(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, "removedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 671
    .local v1, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 672
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    .end local v0    # "i":I
    .end local v1    # "taskCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAllTaskViewsDismissed()V

    .line 679
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "overview_task_all_dismissed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 668
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSystemInsets(Landroid/graphics/Rect;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 407
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 381
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v5, :cond_0

    .line 382
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 383
    .local v1, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    .line 384
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 383
    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 385
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 386
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    .line 385
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->layout(IIII)V

    .line 391
    .end local v1    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v4

    .line 392
    .local v4, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 393
    .local v2, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 394
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 395
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 396
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p2

    .line 397
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p3

    .line 396
    invoke-virtual {v3, p2, p3, v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->layout(IIII)V

    .line 393
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 339
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 340
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 343
    .local v2, "height":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 344
    .local v5, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .line 347
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 348
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 346
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->measure(II)V

    .line 351
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 352
    .local v6, "taskStackBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 353
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 352
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getAvailableTaskStackBounds(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v10

    .line 358
    .local v10, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    invoke-virtual {v0, v10, v6}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;->computeStackRects(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v11

    .line 360
    .local v11, "stackViewsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 361
    .local v8, "stackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 362
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    .line 363
    .local v9, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 367
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    .line 368
    invoke-virtual {v9, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 361
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 372
    .end local v9    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 338
    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 4
    .param p1, "monitor"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 734
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 735
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 736
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 737
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public onRecentsHidden()V
    .locals 4

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 686
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 687
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 688
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 689
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->onRecentsHidden()V

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public onTaskResize(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskResize(Lcom/android/systemui/recents/model/Task;)V

    .line 722
    :cond_0
    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 646
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 647
    .local v0, "baseIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 648
    const-string/jumbo v3, "package"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 647
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 649
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    .line 652
    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 650
    invoke-virtual {v2, v5, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 644
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 22
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p4, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p5, "lockToTask"    # Z

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v3, :cond_0

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v3}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked()V

    .line 532
    :cond_0
    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 534
    .local v7, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v5, 0x0

    .line 535
    .local v5, "offsetX":I
    const/4 v6, 0x0

    .line 536
    .local v6, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v19

    .line 537
    .local v19, "stackScroll":F
    if-nez p2, :cond_5

    .line 541
    move-object/from16 v9, p1

    .line 542
    .local v9, "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1, v7, v4}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v7

    .line 543
    iget-object v3, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 552
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v18

    .line 553
    .local v18, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/16 v17, 0x0

    .line 554
    .local v17, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_3

    .line 555
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lez v3, :cond_3

    .line 556
    const/4 v8, 0x0

    .line 557
    .local v8, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    if-eqz p5, :cond_1

    .line 558
    new-instance v8, Lcom/android/systemui/recents/views/RecentsView$2;

    .end local v8    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    .line 574
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 575
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/recents/views/RecentsView;->postDrawHeaderThumbnailTransitionRunnable(Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 578
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v3, :cond_6

    .line 579
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 582
    invoke-virtual {v9}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 580
    const v11, 0x7f050095

    .line 581
    const v12, 0x7f050096

    .line 579
    invoke-static {v3, v11, v12, v4, v8}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 591
    .end local v17    # "opts":Landroid/app/ActivityOptions;
    :cond_3
    :goto_1
    move-object/from16 v14, v17

    .line 592
    .local v14, "launchOpts":Landroid/app/ActivityOptions;
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$3;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, v18

    move/from16 v15, p5

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/ActivityOptions;Z)V

    .line 620
    .local v10, "launchRunnable":Ljava/lang/Runnable;
    const/16 v21, 0x0

    .line 621
    .local v21, "taskIndexFromFront":I
    invoke-virtual/range {p3 .. p4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v20

    .line 622
    .local v20, "taskIndex":I
    const/4 v3, -0x1

    move/from16 v0, v20

    if-le v0, v3, :cond_4

    .line 623
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    sub-int v3, v3, v20

    add-int/lit8 v21, v3, -0x1

    .line 625
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "overview_task_launch_index"

    move/from16 v0, v21

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 628
    if-nez p2, :cond_7

    .line 629
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 524
    :goto_2
    return-void

    .line 546
    .end local v9    # "sourceView":Landroid/view/View;
    .end local v10    # "launchRunnable":Ljava/lang/Runnable;
    .end local v14    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v18    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v20    # "taskIndex":I
    .end local v21    # "taskIndexFromFront":I
    :cond_5
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 547
    .restart local v9    # "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1, v7, v4}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v7

    goto/16 :goto_0

    .line 585
    .restart local v17    # "opts":Landroid/app/ActivityOptions;
    .restart local v18    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_6
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    const/4 v11, 0x1

    invoke-static {v4, v11, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 586
    iget-object v3, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget-object v3, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 587
    invoke-virtual {v9}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v15

    move v11, v5

    move v12, v6

    move-object/from16 v16, v8

    .line 584
    invoke-static/range {v9 .. v16}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v17

    .local v17, "opts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 631
    .end local v17    # "opts":Landroid/app/ActivityOptions;
    .restart local v10    # "launchRunnable":Ljava/lang/Runnable;
    .restart local v14    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v20    # "taskIndex":I
    .restart local v21    # "taskIndexFromFront":I
    :cond_7
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v3, :cond_8

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 637
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    .line 638
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 634
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    goto :goto_2
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 660
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 661
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 664
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 656
    return-void
.end method

.method public onUserInteraction()V
    .locals 4

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 414
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 415
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 416
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 417
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->onUserInteraction()V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .line 108
    return-void
.end method

.method public setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V
    .locals 0
    .param p1, "overlay"    # Lcom/android/systemui/recents/views/DebugOverlayView;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    .line 113
    return-void
.end method

.method public setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V
    .locals 2
    .param p1, "searchBar"    # Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 314
    :cond_0
    if-eqz p1, :cond_1

    .line 315
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .line 316
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 308
    :cond_1
    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->bringToFront()V

    .line 326
    :cond_0
    return-void
.end method

.method public setTaskStacks(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 122
    .local v1, "numStacks":I
    const/4 v2, 0x0

    .line 123
    .local v2, "numTaskStacksToKeep":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    if-eqz v6, :cond_0

    .line 124
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 126
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 127
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 126
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 132
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskStackView;

    .line 134
    .local v5, "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->reset()V

    .line 135
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    .end local v5    # "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    .line 140
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    .line 142
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    .line 143
    .local v4, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V

    .line 144
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 145
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 149
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v6, :cond_4

    .line 150
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 151
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    .line 152
    .restart local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V

    .line 150
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 157
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 118
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 279
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 282
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 283
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 284
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 285
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 276
    return-void
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 294
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 296
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 297
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 298
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 299
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 304
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onExitToHomeAnimationTriggered()V

    .line 291
    return-void
.end method

.method public unfilterFilteredStacks()Z
    .locals 5

    .prologue
    .line 441
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 443
    const/4 v3, 0x0

    .line 444
    .local v3, "stacksUnfiltered":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 445
    .local v1, "numStacks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 446
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack;

    .line 447
    .local v2, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    .line 449
    const/4 v3, 0x1

    .line 445
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    .end local v2    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_1
    return v3

    .line 454
    .end local v0    # "i":I
    .end local v1    # "numStacks":I
    .end local v3    # "stacksUnfiltered":Z
    :cond_2
    const/4 v4, 0x0

    return v4
.end method
