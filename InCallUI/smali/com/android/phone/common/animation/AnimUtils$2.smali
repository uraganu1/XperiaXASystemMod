.class final Lcom/android/phone/common/animation/AnimUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

.field final synthetic val$fadeIn:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 0
    .param p1, "val$fadeIn"    # Landroid/view/View;
    .param p2, "val$callback"    # Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/common/animation/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    iput-object p2, p0, Lcom/android/phone/common/animation/AnimUtils$2;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$2;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$2;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    invoke-virtual {v0}, Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;->onAnimationCancel()V

    .line 98
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$2;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$2;->val$callback:Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    invoke-virtual {v0}, Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;->onAnimationEnd()V

    .line 106
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/common/animation/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-void
.end method
