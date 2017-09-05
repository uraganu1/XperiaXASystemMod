.class Lcom/android/systemui/recents/views/RecentsView$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->postDrawHeaderThumbnailTransitionRunnable(Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

.field final synthetic val$offsetX:I

.field final synthetic val$offsetY:I

.field final synthetic val$transform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "val$tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "val$offsetX"    # I
    .param p4, "val$offsetY"    # I
    .param p5, "val$transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p6, "val$animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iput p3, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$offsetX:I

    iput p4, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$offsetY:I

    iput-object p5, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput-object p6, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v13

    .line 476
    .local v13, "scale":F
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    float-to-int v11, v0

    .line 477
    .local v11, "fromHeaderWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    float-to-int v10, v0

    .line 480
    .local v10, "fromHeaderHeight":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 479
    invoke-static {v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 484
    .local v1, "b":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 485
    .local v8, "c":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v2

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 487
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 489
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 490
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 491
    .local v12, "pts":[I
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v12}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen([I)V

    .line 493
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 495
    const/4 v2, 0x0

    aget v2, v12, v2

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$offsetX:I

    add-int/2addr v2, v3

    .line 496
    const/4 v3, 0x1

    aget v3, v12, v3

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$offsetY:I

    add-int/2addr v3, v4

    .line 497
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 498
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 499
    new-instance v6, Lcom/android/systemui/recents/views/RecentsView$1$1;

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/recents/views/RecentsView$1$1;-><init>(Lcom/android/systemui/recents/views/RecentsView$1;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 512
    const/4 v7, 0x1

    .line 493
    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowManager;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v9

    .line 514
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "RecentsView"

    const-string/jumbo v2, "Error overriding app transition"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
