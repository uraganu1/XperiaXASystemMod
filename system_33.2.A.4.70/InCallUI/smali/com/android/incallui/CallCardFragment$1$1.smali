.class Lcom/android/incallui/CallCardFragment$1$1;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/CallCardFragment$1;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/incallui/CallCardFragment$1;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$1$1;->this$1:Lcom/android/incallui/CallCardFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1$1;->this$1:Lcom/android/incallui/CallCardFragment$1;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1$1;->this$1:Lcom/android/incallui/CallCardFragment$1;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->endCallClicked()V

    .line 397
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 396
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 395
    return-void
.end method
