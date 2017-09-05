.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startScaleAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p2, "val$child"    # Landroid/view/View;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Landroid/view/View;

    const v1, 0x7f100002

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Landroid/view/View;

    const v1, 0x7f10000e

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 731
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 728
    return-void
.end method
