.class public Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;
.super Landroid/widget/FrameLayout;
.source "SomcKeyguardClockScaleContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private mAnimateScaling:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHeightChange:I

.field private mOnScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

.field private mPivotXViewStart:Z

.field private mPreviousScale:F

.field private mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    .line 52
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    .line 69
    return-void
.end method

.method private performAnimatedScaling(FIZ)V
    .locals 6
    .param p1, "scale"    # F
    .param p2, "animationDuration"    # I
    .param p3, "isScaleChanged"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v5, [F

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 176
    .local v0, "animatorScaleX":Landroid/animation/ObjectAnimator;
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v5, [F

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 177
    .local v1, "animatorScaleY":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 178
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 179
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 180
    if-eqz p3, :cond_0

    .line 181
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 174
    return-void
.end method

.method private performNonAnimatedScaling(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "isScaleChanged"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingStarted(F)V

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setScaleX(F)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setScaleY(F)V

    .line 168
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 169
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingFinished(F)V

    .line 162
    :cond_1
    return-void
.end method

.method private resizeClockAnimation(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "animationDuration"    # I
    .param p4, "heightChange"    # I

    .prologue
    .line 131
    add-int v2, p2, p4

    int-to-float v2, v2

    int-to-float v3, p2

    div-float v1, v2, v3

    .line 132
    .local v1, "scale":F
    const/4 v0, 0x1

    .line 133
    .local v0, "isScaleChanged":Z
    iget v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :cond_0
    iput v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    .line 139
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 143
    :cond_1
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    if-eqz v2, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 145
    const/4 v3, 0x1

    .line 144
    if-ne v2, v3, :cond_2

    .line 146
    int-to-float v2, p1

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotX(F)V

    .line 153
    :goto_0
    int-to-float v2, p2

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotY(F)V

    .line 155
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    if-eqz v2, :cond_4

    .line 156
    invoke-direct {p0, v1, p3, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->performAnimatedScaling(FIZ)V

    .line 130
    :goto_1
    return-void

    .line 148
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotX(F)V

    goto :goto_0

    .line 151
    :cond_3
    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->setPivotX(F)V

    goto :goto_0

    .line 158
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->performNonAnimatedScaling(FZ)V

    goto :goto_1
.end method

.method private updateHeightChange(I)V
    .locals 2
    .param p1, "change"    # I

    .prologue
    const/4 v1, 0x0

    .line 187
    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    .line 189
    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    if-lez v0, :cond_0

    .line 190
    iput v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeightChange()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingCancelled(F)V

    .line 198
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingFinished(F)V

    .line 208
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 218
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    iget v1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPreviousScale:F

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;->onScalingStarted(F)V

    .line 225
    :cond_0
    return-void
.end method

.method public requestHeightChange(II)I
    .locals 3
    .param p1, "heightChange"    # I
    .param p2, "animationDuration"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getMeasuredWidth()I

    move-result v1

    .line 94
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->getMeasuredHeight()I

    move-result v0

    .line 96
    .local v0, "height":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->updateHeightChange(I)V

    .line 98
    iget v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->resizeClockAnimation(IIII)V

    .line 101
    :cond_0
    iget v2, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mHeightChange:I

    return v2
.end method

.method public setAnimateScaling(Z)V
    .locals 0
    .param p1, "animateScaling"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mAnimateScaling:Z

    .line 125
    return-void
.end method

.method public setOnScaleChangedCallback(Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mOnScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    .line 236
    return-void
.end method

.method public setPivotXViewStart(Z)V
    .locals 0
    .param p1, "pivotXViewStart"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mPivotXViewStart:Z

    .line 117
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 246
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mOnScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mOnScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;->onScaleXChanged(F)V

    .line 244
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 257
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mOnScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mOnScaleChangedCallback:Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/OnScaleChangedCallback;->onScaleYChanged(F)V

    .line 255
    :cond_0
    return-void
.end method

.method public setSomcKeyguardClockScaleContainerCallback(Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;)V
    .locals 0
    .param p1, "somcKeyguardClockScaleContainerCallback"    # Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainer;->mSomcKeyguardClockScaleContainerCallback:Lcom/sonymobile/keyguard/SomcKeyguardClockScaleContainerCallback;

    .line 110
    return-void
.end method
