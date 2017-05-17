.class final Lcom/android/contacts/util/AnimUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/util/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/contacts/util/AnimUtils$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

.field final synthetic val$fadeIn:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V
    .locals 0
    .param p1, "val$fadeIn"    # Landroid/view/View;
    .param p2, "val$callback"    # Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/contacts/util/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    iput-object p2, p0, Lcom/android/contacts/util/AnimUtils$2;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 104
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$2;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$2;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    iget-object v1, p0, Lcom/android/contacts/util/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/AnimUtils$AnimationCallback;->onAnimationCancel(Landroid/view/View;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$2;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$2;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    iget-object v1, p0, Lcom/android/contacts/util/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/AnimUtils$AnimationCallback;->onAnimationEnd(Landroid/view/View;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$2;->val$fadeIn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method
