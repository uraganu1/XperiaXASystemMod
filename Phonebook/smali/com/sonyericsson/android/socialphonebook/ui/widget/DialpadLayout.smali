.class public Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;
.super Landroid/widget/LinearLayout;
.source "DialpadLayout.java"


# static fields
.field private static final DIALPAD_FADE_IN_MILLIS:I = 0x190

.field private static final DIALPAD_FADE_OUT_MILLIS:I = 0xc8


# instance fields
.field private mDialpad:Landroid/view/View;

.field private mDialpadAnimator:Landroid/animation/ObjectAnimator;

.field private mMinimized:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpad:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method private animateAlphaForDialpad(Z)V
    .locals 6
    .param p1, "hide"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpadAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    aput v3, v1, v4

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpadAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpadAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 113
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpadAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpadAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private animateUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 101
    .local v0, "animate":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 104
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 106
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->animateAlphaForDialpad(Z)V

    .line 99
    return-void
.end method


# virtual methods
.method public isDialpadMinimized()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mMinimized:Z

    return v0
.end method

.method public maximizeDialpad()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mMinimized:Z

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->animateUp()V

    .line 87
    return-void
.end method

.method public minimizeDialpad()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 56
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mMinimized:Z

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpad:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpad:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    .line 59
    .local v1, "translation":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 60
    .local v0, "animate":Landroid/view/ViewPropertyAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 61
    int-to-float v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 62
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpad:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 84
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->animateAlphaForDialpad(Z)V

    .line 55
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0e022d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpad:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpad:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpadAnimator:Landroid/animation/ObjectAnimator;

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->isOneHandLayoutOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->injectOneHandedLayout(Landroid/content/Context;Landroid/view/View;)V

    .line 45
    :cond_0
    return-void
.end method

.method public resetDialpad()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mDialpad:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 95
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->mMinimized:Z

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->setTranslationY(F)V

    .line 92
    return-void
.end method
