.class Lcom/android/incallui/VideoCallFragment$4;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/VideoCallFragment;->setFullScreenMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallFragment;

.field final synthetic val$isFullscreenMode:Z

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallFragment;Landroid/view/ViewTreeObserver;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/VideoCallFragment;
    .param p2, "val$observer"    # Landroid/view/ViewTreeObserver;
    .param p3, "val$isFullscreenMode"    # Z

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$4;->this$0:Lcom/android/incallui/VideoCallFragment;

    iput-object p2, p0, Lcom/android/incallui/VideoCallFragment$4;->val$observer:Landroid/view/ViewTreeObserver;

    iput-boolean p3, p0, Lcom/android/incallui/VideoCallFragment$4;->val$isFullscreenMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 1477
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1482
    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment$4;->val$isFullscreenMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$4;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->-get4(Lcom/android/incallui/VideoCallFragment;)F

    move-result v0

    .line 1484
    .local v0, "topY":F
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$4;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->-get2(Lcom/android/incallui/VideoCallFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1485
    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    .line 1484
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1486
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$4;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v2}, Lcom/android/incallui/VideoCallFragment;->-get0(Lcom/android/incallui/VideoCallFragment;)I

    move-result v2

    int-to-long v2, v2

    .line 1484
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1490
    const/4 v1, 0x1

    return v1

    .line 1482
    .end local v0    # "topY":F
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$4;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->-get3(Lcom/android/incallui/VideoCallFragment;)Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->point:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v0, v1

    .restart local v0    # "topY":F
    goto :goto_0
.end method
