.class final Lcom/android/phone/common/animation/AnimUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

.field final synthetic val$fadeOut:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 0
    .param p1, "val$fadeOut"    # Landroid/view/View;
    .param p2, "val$callback"    # Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/phone/common/animation/AnimUtils$1;->val$fadeOut:Landroid/view/View;

    iput-object p2, p0, Lcom/android/phone/common/animation/AnimUtils$1;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$1;->val$fadeOut:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$1;->val$fadeOut:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 69
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$1;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$1;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    invoke-virtual {v0}, Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;->onAnimationCancel()V

    .line 66
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$1;->val$fadeOut:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$1;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$1;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    invoke-virtual {v0}, Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;->onAnimationEnd()V

    .line 58
    :cond_0
    return-void
.end method
