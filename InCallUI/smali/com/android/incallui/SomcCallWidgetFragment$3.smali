.class Lcom/android/incallui/SomcCallWidgetFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SomcCallWidgetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcCallWidgetFragment;->animateAndRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcCallWidgetFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcCallWidgetFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcCallWidgetFragment;
    .param p2, "val$v"    # Landroid/view/View;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/incallui/SomcCallWidgetFragment$3;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    iput-object p2, p0, Lcom/android/incallui/SomcCallWidgetFragment$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$3;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetFragment$3;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v1}, Lcom/android/incallui/SomcCallWidgetFragment;->-get3(Lcom/android/incallui/SomcCallWidgetFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap6(Lcom/android/incallui/SomcCallWidgetFragment;Ljava/util/List;)V

    .line 319
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$3;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$3;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetFragment;->-get1(Lcom/android/incallui/SomcCallWidgetFragment;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 317
    :cond_0
    return-void
.end method
