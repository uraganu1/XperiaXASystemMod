.class Lcom/android/contacts/editor/EditorAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditorAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EditorAnimator;->hideAddFieldFooter(Landroid/view/View;)V
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
    .line 135
    .local p2, "val$viewsToMove":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/contacts/editor/EditorAnimator$3;->this$0:Lcom/android/contacts/editor/EditorAnimator;

    iput-object p2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$viewsToMove:Ljava/util/List;

    iput-object p3, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$victim:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$viewsToMove:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$viewsToMove:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 141
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$victim:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 146
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$victim:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method
