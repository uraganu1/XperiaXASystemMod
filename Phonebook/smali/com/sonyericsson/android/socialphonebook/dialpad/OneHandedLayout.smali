.class public Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;
.super Landroid/widget/LinearLayout;
.source "OneHandedLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;
    }
.end annotation


# static fields
.field private static final INDICATOR_ANIMATION_DURATION:I = 0x2bc


# instance fields
.field private final mIndicatorAnimation:Landroid/view/animation/Animation;

.field private final mTouchAreas:[Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->startIndicatorAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V
    .locals 0
    .param p1, "focusedTouchArea"    # Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->switchVisiblity(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mIndicatorAnimation:Landroid/view/animation/Animation;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .line 29
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    const v2, 0x7f0e0126

    const v3, 0x7f0e0127

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;IILcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    const v2, 0x7f0e0129

    const v3, 0x7f0e012a

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;IILcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mTouchAreas:[Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mIndicatorAnimation:Landroid/view/animation/Animation;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .line 29
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    const v2, 0x7f0e0126

    const v3, 0x7f0e0127

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;IILcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    const v2, 0x7f0e0129

    const v3, 0x7f0e012a

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;IILcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mTouchAreas:[Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mIndicatorAnimation:Landroid/view/animation/Animation;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .line 29
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    const v2, 0x7f0e0126

    const v3, 0x7f0e0127

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;IILcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    const v2, 0x7f0e0129

    const v3, 0x7f0e012a

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;IILcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mTouchAreas:[Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .line 41
    return-void
.end method

.method private initIndicatorAnimation()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mIndicatorAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mIndicatorAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mIndicatorAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mIndicatorAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 69
    return-void
.end method

.method private initLayoutTransition()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 77
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 78
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 80
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$1;-><init>(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 76
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 62
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mTouchAreas:[Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 63
    .local v0, "touchArea":Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->initViews(Landroid/view/View;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "touchArea":Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mTouchAreas:[Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->getLayoutAlignment(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->updateViews(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    .line 61
    return-void
.end method

.method private startIndicatorAnimation()V
    .locals 5

    .prologue
    .line 104
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mTouchAreas:[Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 105
    .local v0, "touchArea":Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mIndicatorAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "touchArea":Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;
    :cond_0
    return-void
.end method

.method private switchVisiblity(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V
    .locals 2
    .param p1, "focusedTouchArea"    # Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->getLayoutAlignment(Landroid/content/Context;)I

    move-result v0

    .line 111
    .local v0, "layoutAlignment":I
    if-nez v0, :cond_1

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->setLayoutAlignment(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->updateViews(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V

    .line 109
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateViews(Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;)V
    .locals 6
    .param p1, "hideTouchArea"    # Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->mTouchAreas:[Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 121
    .local v0, "touchArea":Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;->setVisible(Z)V

    .line 120
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 121
    goto :goto_1

    .line 119
    .end local v0    # "touchArea":Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout$TouchArea;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->initViews()V

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->initIndicatorAnimation()V

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->initLayoutTransition()V

    .line 46
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onScreenStateChanged(I)V

    .line 56
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/OneHandedLayout;->startIndicatorAnimation()V

    .line 54
    :cond_0
    return-void
.end method
