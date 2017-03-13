.class public Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;
.super Landroid/widget/FrameLayout;
.source "SonyClockDigit.java"


# instance fields
.field private mCurrentDigit:C

.field private mCurrentDisplay:Landroid/widget/TextView;

.field private mDigitAnimationDuration:I

.field private mInInterpolator:Landroid/view/animation/Interpolator;

.field private mOldDisplay:Landroid/widget/TextView;

.field private mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

.field private mPlaceHolderDisplay:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->notifyDrawingUpdated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/16 v0, 0x30

    iput-char v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDigit:C

    .line 56
    return-void
.end method

.method private hasDigitViews()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 174
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mPlaceHolderDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notifyDrawingUpdated()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;->onDrawingUpdated()V

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public getClippingSourceViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->hasDigitViews()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/keyguard/R$integer;->somc_sony_clock_digit_animation_duration:I

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mDigitAnimationDuration:I

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$interpolator;->somc_sony_clock_digit_animation_interpolator:I

    .line 66
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mInInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    return-void
.end method

.method public setDigitViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "current"    # Landroid/view/View;
    .param p2, "old"    # Landroid/view/View;
    .param p3, "placeHolder"    # Landroid/view/View;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "current":Landroid/view/View;
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    .line 84
    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 85
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "old":Landroid/view/View;
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    .line 87
    :cond_1
    if-eqz p3, :cond_2

    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 88
    check-cast p3, Landroid/widget/TextView;

    .end local p3    # "placeHolder":Landroid/view/View;
    iput-object p3, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mPlaceHolderDisplay:Landroid/widget/TextView;

    .line 80
    :cond_2
    return-void
.end method

.method public setOnDrawingUpdatedCallback(Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOnDrawingUpdatedCallback:Lcom/sonymobile/keyguard/themedanimation/OnDrawingUpdatedCallback;

    .line 149
    return-void
.end method

.method public updateDigit(CZ)V
    .locals 12
    .param p1, "digit"    # C
    .param p2, "animate"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->hasDigitViews()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    if-eqz p2, :cond_1

    iget-char v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDigit:C

    if-eq p1, v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    iget-char v5, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDigit:C

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mPlaceHolderDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 110
    .local v0, "animationWidth":I
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    const-string/jumbo v5, "translationX"

    .line 109
    new-array v6, v10, [F

    .line 110
    aput v11, v6, v8

    neg-int v7, v0

    int-to-float v7, v7

    aput v7, v6, v9

    .line 109
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 112
    .local v2, "animatorOld":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    const-string/jumbo v5, "translationX"

    .line 111
    new-array v6, v10, [F

    .line 112
    int-to-float v7, v0

    aput v7, v6, v8

    aput v11, v6, v9

    .line 111
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 114
    .local v1, "animatorCur":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    new-instance v4, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$2;-><init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 133
    .local v3, "set":Landroid/animation/AnimatorSet;
    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 134
    iget v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mDigitAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sonymobile/lockscreen/animation/AnimatorStartUtils;->startWithCustomizedDurationScale(Landroid/content/Context;Landroid/animation/Animator;)V

    .line 141
    .end local v0    # "animationWidth":I
    .end local v1    # "animatorCur":Landroid/animation/ObjectAnimator;
    .end local v2    # "animatorOld":Landroid/animation/ObjectAnimator;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    iput-char p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDigit:C

    .line 98
    return-void

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mCurrentDisplay:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->mOldDisplay:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
