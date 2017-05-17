.class public Lcom/android/contacts/editor/EditorAnimator;
.super Ljava/lang/Object;
.source "EditorAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/editor/EditorAnimator;


# instance fields
.field private mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/editor/EditorAnimator;)Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/List;Ljava/util/List;FFII)V
    .locals 0
    .param p0, "animators"    # Ljava/util/List;
    .param p1, "views"    # Ljava/util/List;
    .param p2, "fromY"    # F
    .param p3, "toY"    # F
    .param p4, "startDelay"    # I
    .param p5, "duration"    # I

    .prologue
    invoke-static/range {p0 .. p5}, Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/contacts/editor/EditorAnimator;

    invoke-direct {v0}, Lcom/android/contacts/editor/EditorAnimator;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/EditorAnimator;->sInstance:Lcom/android/contacts/editor/EditorAnimator;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-direct {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/android/contacts/editor/EditorAnimator;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/contacts/editor/EditorAnimator;->sInstance:Lcom/android/contacts/editor/EditorAnimator;

    return-object v0
.end method

.method private static getViewsBelowOf(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 174
    .local v2, "victimParent":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 175
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 177
    .local v0, "index":I
    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOfRecursive(Ljava/util/List;Landroid/view/ViewGroup;I)V

    .line 179
    .end local v0    # "index":I
    :cond_0
    return-object v1
.end method

.method private static getViewsBelowOfRecursive(Ljava/util/List;Landroid/view/ViewGroup;I)V
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move v1, p2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 185
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 189
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v4, v2, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 190
    check-cast v3, Landroid/widget/LinearLayout;

    .line 191
    .local v3, "parentLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 192
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 193
    .local v0, "containerIndex":I
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOfRecursive(Ljava/util/List;Landroid/view/ViewGroup;I)V

    .line 183
    .end local v0    # "containerIndex":I
    .end local v3    # "parentLayout":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private static translateViews(Ljava/util/List;Ljava/util/List;FFII)V
    .locals 6
    .param p2, "fromY"    # F
    .param p3, "toY"    # F
    .param p4, "startDelay"    # I
    .param p5, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;FFII)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 157
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 159
    .local v0, "child":Landroid/view/View;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    const/4 v5, 0x1

    aput p3, v4, v5

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 160
    .local v2, "translateAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v4, p4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 161
    int-to-long v4, p5

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "translateAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method


# virtual methods
.method public hideAddFieldFooter(Landroid/view/View;)V
    .locals 8
    .param p1, "victim"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v2}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 122
    .local v7, "offset":I
    invoke-static {p1}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 123
    .local v1, "viewsToMove":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 128
    .local v6, "fadeOutAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    neg-int v2, v7

    int-to-float v3, v2

    const/4 v2, 0x0

    const/16 v4, 0x64

    const/16 v5, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V

    .line 135
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    new-instance v3, Lcom/android/contacts/editor/EditorAnimator$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/contacts/editor/EditorAnimator$3;-><init>(Lcom/android/contacts/editor/EditorAnimator;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->run(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    return-void

    .line 127
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public removeEditorView(Landroid/view/View;)V
    .locals 8
    .param p1, "victim"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v2}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 57
    .local v7, "offset":I
    invoke-static {p1}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "viewsToMove":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 63
    .local v6, "fadeOutAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 64
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    neg-int v2, v7

    int-to-float v3, v2

    const/4 v2, 0x0

    const/16 v4, 0x64

    const/16 v5, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V

    .line 69
    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    new-instance v3, Lcom/android/contacts/editor/EditorAnimator$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/contacts/editor/EditorAnimator$1;-><init>(Lcom/android/contacts/editor/EditorAnimator;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->run(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    return-void

    .line 62
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public showAddFieldFooter(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 93
    new-instance v0, Lcom/android/contacts/editor/EditorAnimator$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/EditorAnimator$2;-><init>(Lcom/android/contacts/editor/EditorAnimator;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
