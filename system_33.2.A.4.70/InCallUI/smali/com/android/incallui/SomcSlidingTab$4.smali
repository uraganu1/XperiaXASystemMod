.class Lcom/android/incallui/SomcSlidingTab$4;
.super Ljava/lang/Object;
.source "SomcSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcSlidingTab;->animateGhostMore(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcSlidingTab;

.field final synthetic val$amount:I

.field final synthetic val$sliderState:I


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcSlidingTab;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcSlidingTab;
    .param p2, "val$amount"    # I
    .param p3, "val$sliderState"    # I

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/android/incallui/SomcSlidingTab$4;->this$0:Lcom/android/incallui/SomcSlidingTab;

    iput p2, p0, Lcom/android/incallui/SomcSlidingTab$4;->val$amount:I

    iput p3, p0, Lcom/android/incallui/SomcSlidingTab$4;->val$sliderState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 1037
    iget v0, p0, Lcom/android/incallui/SomcSlidingTab$4;->val$amount:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$4;->this$0:Lcom/android/incallui/SomcSlidingTab;

    invoke-static {v0}, Lcom/android/incallui/SomcSlidingTab;->-get0(Lcom/android/incallui/SomcSlidingTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$4;->this$0:Lcom/android/incallui/SomcSlidingTab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/SomcSlidingTab;->-set0(Lcom/android/incallui/SomcSlidingTab;Z)Z

    .line 1041
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$4;->this$0:Lcom/android/incallui/SomcSlidingTab;

    iget-object v0, v0, Lcom/android/incallui/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1042
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$4;->this$0:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    .line 1036
    :goto_0
    return-void

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$4;->this$0:Lcom/android/incallui/SomcSlidingTab;

    iget v1, p0, Lcom/android/incallui/SomcSlidingTab$4;->val$amount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/incallui/SomcSlidingTab$4;->val$sliderState:I

    invoke-static {v0, v1, v2}, Lcom/android/incallui/SomcSlidingTab;->-wrap0(Lcom/android/incallui/SomcSlidingTab;II)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1033
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1030
    return-void
.end method
