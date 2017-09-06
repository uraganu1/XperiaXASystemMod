.class Lcom/android/incallui/SomcSlidingTab$3;
.super Ljava/lang/Object;
.source "SomcSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcSlidingTab;->animateGhost(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcSlidingTab;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcSlidingTab;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcSlidingTab;

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/incallui/SomcSlidingTab$3;->this$0:Lcom/android/incallui/SomcSlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x1

    .line 984
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$3;->this$0:Lcom/android/incallui/SomcSlidingTab;

    invoke-static {v0}, Lcom/android/incallui/SomcSlidingTab;->-get1(Lcom/android/incallui/SomcSlidingTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$3;->this$0:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    .line 983
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$3;->this$0:Lcom/android/incallui/SomcSlidingTab;

    invoke-static {v0, v1}, Lcom/android/incallui/SomcSlidingTab;->-set1(Lcom/android/incallui/SomcSlidingTab;Z)Z

    .line 988
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$3;->this$0:Lcom/android/incallui/SomcSlidingTab;

    iget-object v1, p0, Lcom/android/incallui/SomcSlidingTab$3;->this$0:Lcom/android/incallui/SomcSlidingTab;

    invoke-static {v1}, Lcom/android/incallui/SomcSlidingTab;->-get2(Lcom/android/incallui/SomcSlidingTab;)B

    move-result v1

    const/16 v2, 0x190

    invoke-static {v0, v2, v1}, Lcom/android/incallui/SomcSlidingTab;->-wrap0(Lcom/android/incallui/SomcSlidingTab;II)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 980
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 977
    return-void
.end method
