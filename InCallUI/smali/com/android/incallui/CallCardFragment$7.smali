.class Lcom/android/incallui/CallCardFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->assignGlideInY(Landroid/view/View;II)Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$glideIn:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardFragment;
    .param p2, "val$glideIn"    # Landroid/view/View;

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$7;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$7;->val$glideIn:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$7;->val$glideIn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1465
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$7;->val$glideIn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    return-void
.end method
