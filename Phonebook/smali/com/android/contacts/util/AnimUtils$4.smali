.class final Lcom/android/contacts/util/AnimUtils$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/util/AnimUtils;->scaleOut(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V
    .locals 0
    .param p1, "val$view"    # Landroid/view/View;
    .param p2, "val$callback"    # Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/contacts/util/AnimUtils$4;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/contacts/util/AnimUtils$4;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$4;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 178
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 179
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$4;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$4;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    iget-object v1, p0, Lcom/android/contacts/util/AnimUtils$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/AnimUtils$AnimationCallback;->onAnimationCancel(Landroid/view/View;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$4;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$4;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/contacts/util/AnimUtils$4;->val$callback:Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    iget-object v1, p0, Lcom/android/contacts/util/AnimUtils$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/AnimUtils$AnimationCallback;->onAnimationEnd(Landroid/view/View;)V

    .line 167
    :cond_0
    return-void
.end method
