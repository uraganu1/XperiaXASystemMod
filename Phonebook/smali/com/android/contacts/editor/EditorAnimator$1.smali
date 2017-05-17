.class Lcom/android/contacts/editor/EditorAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditorAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EditorAnimator;->removeEditorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/EditorAnimator;

.field final synthetic val$victim:Landroid/view/View;

.field final synthetic val$viewsToMove:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/EditorAnimator;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/EditorAnimator;
    .param p3, "val$victim"    # Landroid/view/View;

    .prologue
    .line 69
    .local p2, "val$viewsToMove":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/contacts/editor/EditorAnimator$1;->this$0:Lcom/android/contacts/editor/EditorAnimator;

    iput-object p2, p0, Lcom/android/contacts/editor/EditorAnimator$1;->val$viewsToMove:Ljava/util/List;

    iput-object p3, p0, Lcom/android/contacts/editor/EditorAnimator$1;->val$victim:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/EditorAnimator$1;->val$viewsToMove:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/android/contacts/editor/EditorAnimator$1;->val$viewsToMove:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 75
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/EditorAnimator$1;->val$victim:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 80
    .local v1, "victimParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/contacts/editor/EditorAnimator$1;->val$victim:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    :cond_1
    return-void
.end method
