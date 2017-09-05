.class public Lcom/android/systemui/statusbar/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"

# interfaces
.implements Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ScrimView$1;,
        Lcom/android/systemui/statusbar/ScrimView$2;,
        Lcom/android/systemui/statusbar/ScrimView$3;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mClippingHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

.field private mDrawAsSrc:Z

.field private mIsEmpty:Z

.field private mScrimColor:I

.field private mViewAlpha:F


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ScrimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ScrimView;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$1;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    .line 52
    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$2;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$3;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClippingHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    .line 89
    return-void
.end method


# virtual methods
.method public animateViewAlpha(FJLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "alpha"    # F
    .param p2, "durationOut"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 138
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 134
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClippingHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1, p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public getScrimColor()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 151
    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 96
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-eqz v2, :cond_2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 97
    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    .line 98
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 99
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 98
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 94
    .end local v0    # "color":I
    .end local v1    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    return-void

    .line 96
    :cond_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .restart local v1    # "mode":Landroid/graphics/PorterDuff$Mode;
    goto :goto_0
.end method

.method public setDrawAsSrc(Z)V
    .locals 0
    .param p1, "asSrc"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 104
    return-void
.end method

.method public setScrimColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x0

    .line 110
    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    if-eq p1, v1, :cond_1

    .line 111
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    .line 112
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 109
    :cond_1
    return-void
.end method

.method public updateClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V
    .locals 1
    .param p1, "sources"    # Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClippingHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V

    .line 158
    return-void
.end method

.method public updateDimmerDrawn(Z)V
    .locals 1
    .param p1, "drawn"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClippingHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateDimmerDrawn(Z)V

    .line 182
    return-void
.end method

.method public updateDrawingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClippingHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateDrawingEnabled(Z)V

    .line 198
    return-void
.end method

.method public updateEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClippingHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateEnabled(Z)V

    .line 190
    return-void
.end method

.method public updateMasterScaleContainer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClippingHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updateMasterScaleContainer(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public updatePanelContainer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClippingHelper:Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTargetHelper;->updatePanelContainer(Landroid/view/View;)V

    .line 166
    return-void
.end method
