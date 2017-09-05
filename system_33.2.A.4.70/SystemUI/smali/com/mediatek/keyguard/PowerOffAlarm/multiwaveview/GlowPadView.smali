.class public Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;
.super Landroid/view/View;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$1;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$3;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;
    }
.end annotation


# instance fields
.field private mActiveTarget:I

.field private mAllowScaling:Z

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGlowAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

.field private mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mRingScaleFactor:F

.field private mSnapMargin:F

.field private mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)F
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)F
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;ZZ)V
    .locals 0
    .param p1, "animate"    # Z
    .param p2, "expanded"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;IFF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->switchToState(IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 105
    new-instance v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v10}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;)V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    .line 106
    new-instance v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v10}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;)V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    .line 107
    new-instance v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v10}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;)V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    .line 115
    const/4 v7, 0x3

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 116
    iput v8, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 118
    const/4 v7, -0x1

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 124
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 127
    iput v11, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 128
    iput v11, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 168
    new-instance v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$1;

    invoke-direct {v7, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$1;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 175
    new-instance v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;

    invoke-direct {v7, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 183
    new-instance v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$3;

    invoke-direct {v7, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$3;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 190
    new-instance v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;

    invoke-direct {v7, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 206
    iput v12, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGravity:I

    .line 207
    iput-boolean v9, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 221
    .local v5, "res":Landroid/content/res/Resources;
    sget-object v7, Lcom/android/keyguard/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 222
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_innerRadius:I

    iget v10, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 223
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_outerRadius:I

    iget v10, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 224
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_snapMargin:I

    iget v10, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 225
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_vibrationDuration:I

    .line 226
    iget v10, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 225
    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 227
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_feedbackCount:I

    .line 228
    iget v10, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 227
    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 229
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_allowScaling:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mAllowScaling:Z

    .line 230
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_handleDrawable:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 231
    .local v1, "handle":Landroid/util/TypedValue;
    new-instance v10, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_2

    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-direct {v10, v5, v7, v9}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    iput-object v10, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 232
    iget-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    sget-object v10, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v7, v10}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setState([I)V

    .line 233
    new-instance v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 234
    sget v10, Lcom/android/keyguard/R$styleable;->GlowPadView_outerRingDrawable:I

    invoke-direct {p0, v0, v10}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v10

    .line 233
    invoke-direct {v7, v5, v10, v9}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 236
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_alwaysTrackFinger:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    .line 238
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_pointDrawable:I

    invoke-direct {p0, v0, v7}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v4

    .line 239
    .local v4, "pointId":I
    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 240
    :goto_1
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_glowRadius:I

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowRadius:F

    .line 242
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 245
    .local v2, "outValue":Landroid/util/TypedValue;
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_targetDrawables:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 246
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v7}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    .line 248
    :cond_0
    iget-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 249
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Must specify at least one target drawable"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "pointId":I
    :cond_2
    move v7, v8

    .line 231
    goto :goto_0

    .line 239
    .restart local v4    # "pointId":I
    :cond_3
    const/4 v3, 0x0

    .local v3, "pointDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 253
    .end local v3    # "pointDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    :cond_4
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_targetDescriptions:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 254
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 255
    .local v6, "resourceId":I
    if-nez v6, :cond_5

    .line 256
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Must specify target descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 258
    :cond_5
    invoke-virtual {p0, v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 262
    .end local v6    # "resourceId":I
    :cond_6
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_directionDescriptions:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 263
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 264
    .restart local v6    # "resourceId":I
    if-nez v6, :cond_7

    .line 265
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Must specify direction descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 267
    :cond_7
    invoke-virtual {p0, v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 272
    .end local v6    # "resourceId":I
    :cond_8
    sget v7, Lcom/android/keyguard/R$styleable;->GlowPadView_android_gravity:I

    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGravity:I

    .line 273
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    iget v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrationDuration:I

    if-lez v7, :cond_9

    move v8, v9

    :cond_9
    invoke-virtual {p0, v8}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->setVibrateEnabled(Z)V

    .line 278
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->assignDefaultsIfNeeded()V

    .line 280
    new-instance v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    invoke-direct {v7, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    .line 281
    iget-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget v8, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mInnerRadius:F

    iget v9, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->makePointCloud(FF)V

    .line 282
    iget-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget-object v7, v7, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->glowManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;

    iget v8, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v7, v8}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->setRadius(F)V

    .line 217
    return-void
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1210
    .local v5, "utterance":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1211
    .local v2, "targetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1212
    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "targetDescription":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1214
    .local v0, "directionDescription":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1211
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1216
    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1217
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1220
    .end local v0    # "directionDescription":Ljava/lang/String;
    .end local v3    # "targetDescription":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1221
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1208
    :cond_3
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1014
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 1017
    :cond_0
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1019
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1018
    const/4 v1, 0x1

    .line 1019
    const/high16 v2, 0x41a00000    # 20.0f

    .line 1018
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 1021
    :cond_1
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1022
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 1013
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v3, 0x0

    .line 1027
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getLayoutDirection()I

    move-result v1

    .line 1028
    .local v1, "layoutDirection":I
    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1030
    .local v0, "absoluteGravity":I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1039
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHorizontalInset:I

    .line 1042
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1051
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVerticalInset:I

    .line 1026
    :goto_1
    return-void

    .line 1032
    :pswitch_1
    iput v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1035
    :pswitch_2
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1044
    :sswitch_0
    iput v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1047
    :sswitch_1
    iput p2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1030
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1042
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private computeScaleFactor(IIII)F
    .locals 7
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "actualWidth"    # I
    .param p4, "actualHeight"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1064
    iget-boolean v4, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mAllowScaling:Z

    if-nez v4, :cond_0

    return v6

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getLayoutDirection()I

    move-result v1

    .line 1067
    .local v1, "layoutDirection":I
    iget v4, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1069
    .local v0, "absoluteGravity":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1070
    .local v2, "scaleX":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1076
    .local v3, "scaleY":F
    and-int/lit8 v4, v0, 0x7

    packed-switch v4, :pswitch_data_0

    .line 1082
    :pswitch_0
    if-le p1, p3, :cond_1

    .line 1083
    int-to-float v4, p3

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 1084
    iget v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    .line 1083
    div-float v2, v4, v5

    .line 1088
    :cond_1
    :pswitch_1
    and-int/lit8 v4, v0, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 1094
    if-le p2, p4, :cond_2

    .line 1095
    int-to-float v4, p4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 1096
    iget v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    .line 1095
    div-float v3, v4, v5

    .line 1100
    :cond_2
    :sswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4

    .line 1076
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1088
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 455
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 456
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 457
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 458
    .local v2, "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setState([I)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    .end local v2    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 454
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 474
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .param p1, "whichTarget"    # I

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->vibrate()V

    .line 469
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 467
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1192
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 481
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 482
    .local v0, "activeTarget":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 484
    .local v1, "targetHit":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 487
    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->highlightSelected(I)V

    .line 490
    iget-object v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v3, 0x4b0

    invoke-direct {p0, v6, v3, v5, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 491
    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    .line 492
    iget-boolean v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 502
    :cond_0
    :goto_1
    invoke-direct {p0, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 480
    return-void

    .line 482
    .end local v1    # "targetHit":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "targetHit":Z
    goto :goto_0

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v4, v5, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 499
    const/4 v2, 0x1

    invoke-direct {p0, v2, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1238
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    :cond_0
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1240
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1241
    const-string/jumbo v0, "GlowPadView"

    const-string/jumbo v1, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-object v2

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "id"    # I

    .prologue
    .line 286
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 287
    .local v0, "tv":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getRingHeight()F
    .locals 4

    .prologue
    .line 1108
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRingWidth()F
    .locals 4

    .prologue
    .line 1104
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 4

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1199
    const-string/jumbo v3, "accessibility"

    .line 1198
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1200
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1201
    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowRadius:F

    const v3, 0x3fa66666    # 1.3f

    mul-float v1, v3, v2

    .line 1205
    .local v1, "scaledTapRadius":F
    :goto_0
    invoke-direct {p0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->square(F)F

    move-result v2

    return v2

    .line 1203
    .end local v1    # "scaledTapRadius":F
    :cond_0
    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowRadius:F

    .restart local v1    # "scaledTapRadius":F
    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1226
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1227
    :cond_0
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1228
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1229
    const-string/jumbo v0, "GlowPadView"

    const-string/jumbo v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    return-object v2

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 859
    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 860
    .local v0, "actionIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 861
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x5

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 849
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 830
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 831
    .local v1, "eventX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 832
    .local v2, "eventY":F
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 833
    invoke-direct {p0, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 834
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDragging:Z

    .line 828
    :goto_0
    return-void

    .line 836
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointerId:I

    .line 837
    invoke-direct {p0, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 38
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 865
    const/4 v6, -0x1

    .line 866
    .local v6, "activeTarget":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 867
    .local v12, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 868
    .local v23, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 869
    .local v17, "ntargets":I
    const/16 v31, 0x0

    .line 870
    .local v31, "x":F
    const/16 v32, 0x0

    .line 871
    .local v32, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointerId:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 873
    .local v5, "actionIndex":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v5, v0, :cond_0

    .line 874
    return-void

    .line 877
    :cond_0
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_0
    add-int/lit8 v33, v12, 0x1

    move/from16 v0, v33

    if-ge v14, v0, :cond_a

    .line 878
    if-ge v14, v12, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    .line 880
    .local v10, "eventX":F
    :goto_1
    if-ge v14, v12, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v11

    .line 883
    .local v11, "eventY":F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    sub-float v29, v10, v33

    .line 884
    .local v29, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v33, v0

    sub-float v30, v11, v33

    .line 885
    .local v30, "ty":F
    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v28, v0

    .line 886
    .local v28, "touchRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    cmpl-float v33, v28, v33

    if-lez v33, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    div-float v18, v33, v28

    .line 887
    .local v18, "scale":F
    :goto_3
    mul-float v15, v29, v18

    .line 888
    .local v15, "limitX":F
    mul-float v16, v30, v18

    .line 889
    .local v16, "limitY":F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 891
    .local v8, "angleRad":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_1

    .line 892
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 895
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_9

    .line 897
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mSnapMargin:F

    move/from16 v34, v0

    sub-float v20, v33, v34

    .line 898
    .local v20, "snapRadius":F
    mul-float v19, v20, v20

    .line 900
    .local v19, "snapDistance2":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_9

    .line 901
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 903
    .local v21, "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    int-to-double v0, v13

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    sub-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v36

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v34, v34, v36

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v26, v34, v36

    .line 904
    .local v26, "targetMinRad":D
    int-to-double v0, v13

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    add-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v36

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v34, v34, v36

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v24, v34, v36

    .line 905
    .local v24, "targetMaxRad":D
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 907
    cmpl-double v33, v8, v26

    if-lez v33, :cond_6

    cmpg-double v33, v8, v24

    if-gtz v33, :cond_6

    const/4 v7, 0x1

    .line 910
    .local v7, "angleMatches":Z
    :goto_5
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v33

    cmpl-float v33, v33, v19

    if-lez v33, :cond_2

    .line 911
    move v6, v13

    .line 900
    .end local v7    # "angleMatches":Z
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 879
    .end local v8    # "angleRad":D
    .end local v10    # "eventX":F
    .end local v11    # "eventY":F
    .end local v13    # "i":I
    .end local v15    # "limitX":F
    .end local v16    # "limitY":F
    .end local v18    # "scale":F
    .end local v19    # "snapDistance2":F
    .end local v20    # "snapRadius":F
    .end local v21    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    .end local v24    # "targetMaxRad":D
    .end local v26    # "targetMinRad":D
    .end local v28    # "touchRadius":F
    .end local v29    # "tx":F
    .end local v30    # "ty":F
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .restart local v10    # "eventX":F
    goto/16 :goto_1

    .line 881
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .restart local v11    # "eventY":F
    goto/16 :goto_2

    .line 886
    .restart local v28    # "touchRadius":F
    .restart local v29    # "tx":F
    .restart local v30    # "ty":F
    :cond_5
    const/high16 v18, 0x3f800000    # 1.0f

    .restart local v18    # "scale":F
    goto/16 :goto_3

    .line 908
    .restart local v8    # "angleRad":D
    .restart local v13    # "i":I
    .restart local v15    # "limitX":F
    .restart local v16    # "limitY":F
    .restart local v19    # "snapDistance2":F
    .restart local v20    # "snapRadius":F
    .restart local v21    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    .restart local v24    # "targetMaxRad":D
    .restart local v26    # "targetMinRad":D
    :cond_6
    const-wide v34, 0x401921fb54442d18L    # 6.283185307179586

    add-double v34, v34, v8

    cmpl-double v33, v34, v26

    if-lez v33, :cond_8

    .line 909
    const-wide v34, 0x401921fb54442d18L    # 6.283185307179586

    add-double v34, v34, v8

    cmpg-double v33, v34, v24

    if-gtz v33, :cond_7

    const/4 v7, 0x1

    .restart local v7    # "angleMatches":Z
    goto :goto_5

    .end local v7    # "angleMatches":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "angleMatches":Z
    goto :goto_5

    .line 908
    .end local v7    # "angleMatches":Z
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "angleMatches":Z
    goto :goto_5

    .line 916
    .end local v7    # "angleMatches":Z
    .end local v13    # "i":I
    .end local v19    # "snapDistance2":F
    .end local v20    # "snapRadius":F
    .end local v21    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    .end local v24    # "targetMaxRad":D
    .end local v26    # "targetMinRad":D
    :cond_9
    move/from16 v31, v15

    .line 917
    move/from16 v32, v16

    .line 877
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 920
    .end local v8    # "angleRad":D
    .end local v10    # "eventX":F
    .end local v11    # "eventY":F
    .end local v15    # "limitX":F
    .end local v16    # "limitY":F
    .end local v18    # "scale":F
    .end local v28    # "touchRadius":F
    .end local v29    # "tx":F
    .end local v30    # "ty":F
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_b

    .line 921
    return-void

    .line 924
    :cond_b
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_e

    .line 925
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 926
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 932
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v6, :cond_d

    .line 934
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 936
    .restart local v21    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setState([I)V

    .line 939
    .end local v21    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    :cond_c
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_d

    .line 940
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 941
    .restart local v21    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setState([I)V

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v33

    .line 944
    const-string/jumbo v34, "accessibility"

    .line 943
    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 945
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_d

    .line 946
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 947
    .local v22, "targetContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 951
    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v21    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    .end local v22    # "targetContentDescription":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iput v6, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 864
    return-void

    .line 928
    :cond_e
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 929
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_6
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 844
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointerId:I

    if-ne v1, v2, :cond_0

    .line 845
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x5

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 841
    :cond_0
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .param p1, "duration"    # I
    .param p2, "delay"    # I
    .param p3, "finalAlpha"    # F
    .param p4, "finishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v7, 0x0

    .line 442
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 443
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->glowManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    .line 444
    const-string/jumbo v5, "ease"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 445
    const-string/jumbo v5, "delay"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 446
    const-string/jumbo v5, "alpha"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 447
    const-string/jumbo v5, "x"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 448
    const-string/jumbo v5, "y"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v4, v6

    .line 449
    const-string/jumbo v5, "onUpdate"

    const/16 v6, 0xa

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v6, 0xb

    aput-object v5, v4, v6

    .line 450
    const-string/jumbo v5, "onComplete"

    const/16 v6, 0xc

    aput-object v5, v4, v6

    const/16 v5, 0xd

    aput-object p4, v4, v5

    .line 443
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 441
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 17
    .param p1, "animate"    # Z
    .param p2, "expanded"    # Z

    .prologue
    .line 520
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 523
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 524
    if-eqz p1, :cond_0

    const/16 v3, 0xc8

    .line 525
    .local v3, "duration":I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    .line 527
    .local v2, "delay":I
    :goto_1
    if-eqz p2, :cond_2

    .line 528
    const/high16 v9, 0x3f800000    # 1.0f

    .line 529
    .local v9, "targetScale":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 530
    .local v6, "length":I
    sget-object v5, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 531
    .local v5, "interpolator":Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v6, :cond_3

    .line 532
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 533
    .local v8, "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    sget-object v10, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setState([I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v12, v3

    const/16 v11, 0xc

    new-array v11, v11, [Ljava/lang/Object;

    .line 535
    const-string/jumbo v14, "ease"

    const/4 v15, 0x0

    aput-object v14, v11, v15

    const/4 v14, 0x1

    aput-object v5, v11, v14

    .line 536
    const-string/jumbo v14, "alpha"

    const/4 v15, 0x2

    aput-object v14, v11, v15

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v11, v15

    .line 537
    const-string/jumbo v14, "scaleX"

    const/4 v15, 0x4

    aput-object v14, v11, v15

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x5

    aput-object v14, v11, v15

    .line 538
    const-string/jumbo v14, "scaleY"

    const/4 v15, 0x6

    aput-object v14, v11, v15

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v11, v15

    .line 539
    const-string/jumbo v14, "delay"

    const/16 v15, 0x8

    aput-object v14, v11, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v11, v15

    .line 540
    const-string/jumbo v14, "onUpdate"

    const/16 v15, 0xa

    aput-object v14, v11, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v15, 0xb

    aput-object v14, v11, v15

    .line 534
    invoke-static {v8, v12, v13, v11}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 524
    .end local v2    # "delay":I
    .end local v3    # "duration":I
    .end local v4    # "i":I
    .end local v5    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v6    # "length":I
    .end local v8    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    .end local v9    # "targetScale":F
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "duration":I
    goto/16 :goto_0

    .line 525
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "delay":I
    goto/16 :goto_1

    .line 528
    :cond_2
    const v9, 0x3f4ccccd    # 0.8f

    .restart local v9    # "targetScale":F
    goto/16 :goto_2

    .line 543
    .restart local v4    # "i":I
    .restart local v5    # "interpolator":Landroid/animation/TimeInterpolator;
    .restart local v6    # "length":I
    :cond_3
    if-eqz p2, :cond_4

    .line 544
    const/high16 v7, 0x3f800000    # 1.0f

    .line 545
    .local v7, "ringScaleTarget":F
    :goto_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    mul-float/2addr v7, v10

    .line 546
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    .line 547
    const-string/jumbo v15, "ease"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v5, v14, v15

    .line 548
    const-string/jumbo v15, "alpha"

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    .line 549
    const-string/jumbo v15, "scaleX"

    const/16 v16, 0x4

    aput-object v15, v14, v16

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x5

    aput-object v15, v14, v16

    .line 550
    const-string/jumbo v15, "scaleY"

    const/16 v16, 0x6

    aput-object v15, v14, v16

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x7

    aput-object v15, v14, v16

    .line 551
    const-string/jumbo v15, "delay"

    const/16 v16, 0x8

    aput-object v15, v14, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x9

    aput-object v15, v14, v16

    .line 552
    const-string/jumbo v15, "onUpdate"

    const/16 v16, 0xa

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v16, 0xb

    aput-object v15, v14, v16

    .line 553
    const-string/jumbo v15, "onComplete"

    const/16 v16, 0xc

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v16, 0xd

    aput-object v15, v14, v16

    .line 546
    invoke-static {v11, v12, v13, v14}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 555
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 519
    return-void

    .line 544
    .end local v7    # "ringScaleTarget":F
    :cond_4
    const/high16 v7, 0x3f000000    # 0.5f

    .restart local v7    # "ringScaleTarget":F
    goto/16 :goto_4
.end method

.method private hideUnselected(I)V
    .locals 3
    .param p1, "active"    # I

    .prologue
    .line 512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 513
    if-eq v0, p1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 512
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .param p1, "activeTarget"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setState([I)V

    .line 508
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->hideUnselected(I)V

    .line 505
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .param p1, "resourceId"    # I

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 611
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;>;"
    iput-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 612
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetResourceId:I

    .line 614
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 615
    .local v3, "maxWidth":I
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 616
    .local v2, "maxHeight":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 617
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 618
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 619
    .local v4, "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 620
    invoke-virtual {v4}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v4    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    :cond_0
    iget v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 623
    :cond_1
    iput v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 624
    iput v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 625
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->requestLayout()V

    .line 609
    :goto_1
    return-void

    .line 627
    :cond_2
    iget v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 628
    iget v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1251
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1252
    .local v2, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1253
    .local v4, "targetContentDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1254
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1257
    .end local v1    # "contentDescription":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1258
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 9
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 596
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 597
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 598
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 599
    .local v2, "drawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 600
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 602
    .local v6, "value":Landroid/util/TypedValue;
    new-instance v5, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    const/4 v8, 0x3

    invoke-direct {v5, v4, v7, v8}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    .line 603
    .local v5, "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 602
    .end local v5    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 605
    .end local v6    # "value":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 606
    return-object v2
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 349
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 358
    move v0, v1

    .line 360
    :goto_0
    return v0

    .line 351
    :sswitch_0
    move v0, p2

    .line 352
    goto :goto_0

    .line 354
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    const/4 v1, 0x1

    .line 984
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 985
    if-eqz p1, :cond_0

    .line 986
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->vibrate()V

    .line 988
    :cond_0
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGrabbedState:I

    .line 989
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 990
    if-nez p1, :cond_2

    .line 991
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 995
    :goto_0
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 983
    :cond_1
    return-void

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "duration"    # I
    .param p2, "delay"    # I
    .param p3, "finalAlpha"    # F
    .param p4, "finishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 431
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->glowManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    .line 432
    const-string/jumbo v5, "ease"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 433
    const-string/jumbo v5, "delay"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 434
    const-string/jumbo v5, "alpha"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 435
    const-string/jumbo v5, "onUpdate"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 436
    const-string/jumbo v5, "onComplete"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    const/16 v5, 0x9

    aput-object p4, v4, v5

    .line 431
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 429
    return-void
.end method

.method private showTargets(Z)V
    .locals 13
    .param p1, "animate"    # Z

    .prologue
    .line 559
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 560
    iput-boolean p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 561
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 562
    .local v0, "delay":I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 563
    .local v1, "duration":I
    :goto_1
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 564
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 565
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 566
    .local v5, "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    sget-object v6, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setState([I)V

    .line 567
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v8, v1

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    .line 568
    const-string/jumbo v10, "ease"

    const/4 v11, 0x0

    aput-object v10, v7, v11

    sget-object v10, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    const/4 v11, 0x1

    aput-object v10, v7, v11

    .line 569
    const-string/jumbo v10, "alpha"

    const/4 v11, 0x2

    aput-object v10, v7, v11

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v7, v11

    .line 570
    const-string/jumbo v10, "scaleX"

    const/4 v11, 0x4

    aput-object v10, v7, v11

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v7, v11

    .line 571
    const-string/jumbo v10, "scaleY"

    const/4 v11, 0x6

    aput-object v10, v7, v11

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v7, v11

    .line 572
    const-string/jumbo v10, "delay"

    const/16 v11, 0x8

    aput-object v10, v7, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v7, v11

    .line 573
    const-string/jumbo v10, "onUpdate"

    const/16 v11, 0xa

    aput-object v10, v7, v11

    iget-object v10, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v11, 0xb

    aput-object v10, v7, v11

    .line 567
    invoke-static {v5, v8, v9, v7}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 561
    .end local v0    # "delay":I
    .end local v1    # "duration":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v5    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "delay":I
    goto :goto_0

    .line 562
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "duration":I
    goto :goto_1

    .line 575
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_2
    iget v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v4, v6, v7

    .line 576
    .local v4, "ringScale":F
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    int-to-long v8, v1

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Object;

    .line 577
    const-string/jumbo v11, "ease"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    sget-object v11, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 578
    const-string/jumbo v11, "alpha"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 579
    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x4

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v10, v12

    .line 580
    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x6

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v10, v12

    .line 581
    const-string/jumbo v11, "delay"

    const/16 v12, 0x8

    aput-object v11, v10, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x9

    aput-object v11, v10, v12

    .line 582
    const-string/jumbo v11, "onUpdate"

    const/16 v12, 0xa

    aput-object v11, v10, v12

    iget-object v11, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v12, 0xb

    aput-object v11, v10, v12

    .line 583
    const-string/jumbo v11, "onComplete"

    const/16 v12, 0xc

    aput-object v11, v10, v12

    iget-object v11, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v12, 0xd

    aput-object v11, v10, v12

    .line 576
    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 558
    return-void
.end method

.method private square(F)F
    .locals 1
    .param p1, "d"    # F

    .prologue
    .line 1188
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 6
    .param p1, "duration"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 769
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 770
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 773
    :cond_0
    int-to-long v2, p1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 774
    const-string/jumbo v4, "ease"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    sget-object v4, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 775
    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, p2

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 776
    const-string/jumbo v4, "delay"

    const/4 v5, 0x4

    aput-object v4, v1, v5

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    .line 773
    invoke-static {v0, v2, v3, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    .line 777
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 767
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 733
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 734
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->waveManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 735
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->waveManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 736
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->waveManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    .line 737
    const-string/jumbo v5, "ease"

    aput-object v5, v4, v8

    sget-object v5, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 738
    const-string/jumbo v5, "delay"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 739
    const-string/jumbo v5, "radius"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    iget v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 740
    const-string/jumbo v5, "onUpdate"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 741
    const-string/jumbo v5, "onComplete"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    .line 742
    new-instance v5, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$5;

    invoke-direct {v5, p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$5;-><init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)V

    const/16 v6, 0x9

    aput-object v5, v4, v6

    .line 736
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 732
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 729
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->waveManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 727
    return-void
.end method

.method private switchToState(IFF)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 381
    packed-switch p1, :pswitch_data_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 383
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 385
    invoke-direct {p0, v2, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 387
    invoke-direct {p0, v2, v2, v3, v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 388
    invoke-direct {p0, v2, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 389
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    sget-object v2, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setState([I)V

    .line 390
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 394
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 398
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 399
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 400
    invoke-direct {p0, v5}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 401
    const/16 v1, 0xc8

    invoke-direct {p0, v1, v4}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 402
    invoke-direct {p0, v5}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 405
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 406
    const-string/jumbo v2, "accessibility"

    .line 405
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 407
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->announceTargets()V

    goto :goto_0

    .line 413
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 419
    invoke-direct {p0, v2, v2, v3, v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 423
    :pswitch_5
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->doFinish()V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x1

    .line 1001
    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v2

    .line 1002
    .local v0, "tx":F
    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v2

    .line 1003
    .local v1, "ty":F
    iget-boolean v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v2

    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 1005
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1, p2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1006
    invoke-direct {p0, v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1007
    iput-boolean v4, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDragging:Z

    .line 1008
    return v4

    .line 1010
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private updateGlowPosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 820
    iget-object v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getX()F

    move-result v2

    sub-float v0, p1, v2

    .line 821
    .local v0, "dx":F
    iget-object v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 822
    .local v1, "dy":F
    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v0, v2

    .line 823
    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    .line 824
    iget-object v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->glowManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->setX(F)V

    .line 825
    iget-object v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->glowManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->setY(F)V

    .line 819
    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->setCenter(FF)V

    .line 1165
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 11
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 1152
    iget-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1153
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1154
    .local v3, "size":I
    int-to-double v6, v3

    const-wide v8, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    div-double v6, v8, v6

    double-to-float v0, v6

    .line 1155
    .local v0, "alpha":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1156
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 1157
    .local v4, "targetIcon":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1158
    .local v1, "angle":F
    invoke-virtual {v4, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1159
    invoke-virtual {v4, p2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1160
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v6

    div-float/2addr v6, v10

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setX(F)V

    .line 1161
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v6

    div-float/2addr v6, v10

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setY(F)V

    .line 1155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1150
    .end local v1    # "angle":F
    .end local v4    # "targetIcon":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 4

    .prologue
    .line 589
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 588
    :cond_0
    return-void
.end method


# virtual methods
.method public getResourceIdForTarget(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 1263
    .local v0, "drawable":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method protected getScaledSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 341
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 342
    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    .line 341
    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getScaledSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 333
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 334
    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    .line 333
    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1171
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    invoke-virtual {v3, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1172
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1173
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1174
    .local v1, "ntargets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1175
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    .line 1176
    .local v2, "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    if-eqz v2, :cond_0

    .line 1177
    invoke-virtual {v2, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1180
    .end local v2    # "target":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1170
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 957
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 958
    const-string/jumbo v3, "accessibility"

    .line 957
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 959
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 961
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 972
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 973
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 975
    .end local v1    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 976
    return v4

    .line 963
    .restart local v1    # "action":I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 966
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 969
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 1113
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1114
    sub-int v5, p4, p2

    .line 1115
    .local v5, "width":I
    sub-int v0, p5, p3

    .line 1119
    .local v0, "height":I
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v4

    .line 1120
    .local v4, "placementWidth":F
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v3

    .line 1121
    .local v3, "placementHeight":F
    iget v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    .line 1122
    iget v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    div-float/2addr v7, v9

    .line 1121
    add-float v1, v6, v7

    .line 1123
    .local v1, "newWaveCenterX":F
    iget v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    .line 1124
    iget v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    div-float/2addr v7, v9

    .line 1123
    add-float v2, v6, v7

    .line 1126
    .local v2, "newWaveCenterY":F
    iget-boolean v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1127
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 1128
    invoke-direct {p0, v8, v8}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 1129
    iput-boolean v8, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 1132
    :cond_0
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1133
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOuterRing:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1135
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mPointCloud:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    iget v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    invoke-virtual {v6, v7}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->setScale(F)V

    .line 1137
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1138
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1140
    invoke-direct {p0, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1141
    invoke-direct {p0, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    .line 1142
    invoke-direct {p0, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1144
    iput v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterX:F

    .line 1145
    iput v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveCenterY:F

    .line 1112
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 366
    .local v3, "minimumWidth":I
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 367
    .local v2, "minimumHeight":I
    invoke-direct {p0, p1, v3}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 368
    .local v1, "computedWidth":I
    invoke-direct {p0, p2, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 370
    .local v0, "computedHeight":I
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->computeScaleFactor(IIII)F

    move-result v6

    iput v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 373
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getScaledSuggestedMinimumWidth()I

    move-result v5

    .line 374
    .local v5, "scaledWidth":I
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getScaledSuggestedMinimumHeight()I

    move-result v4

    .line 376
    .local v4, "scaledHeight":I
    sub-int v6, v1, v5

    sub-int v7, v0, v4

    invoke-direct {p0, v6, v7}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->computeInsets(II)V

    .line 377
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->setMeasuredDimension(II)V

    .line 364
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 784
    .local v0, "action":I
    const/4 v1, 0x0

    .line 785
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 815
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->invalidate()V

    .line 816
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 789
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 790
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 791
    const/4 v1, 0x1

    .line 792
    goto :goto_0

    .line 796
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 797
    const/4 v1, 0x1

    .line 798
    goto :goto_0

    .line 803
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 804
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 805
    const/4 v1, 0x1

    .line 806
    goto :goto_0

    .line 810
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 811
    invoke-direct {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 812
    const/4 v1, 0x1

    .line 813
    goto :goto_0

    .line 816
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 709
    iget v4, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_1

    .line 710
    const/4 v0, 0x1

    .line 711
    .local v0, "doWaveAnimation":Z
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;

    .line 714
    .local v1, "waveAnimations":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1, v5}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 715
    invoke-virtual {v1, v5}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    .line 716
    .local v2, "t":J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 717
    const/4 v0, 0x0

    .line 721
    .end local v2    # "t":J
    :cond_0
    if-eqz v0, :cond_1

    .line 722
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->startWaveAnimation()V

    .line 708
    .end local v0    # "doWaveAnimation":Z
    .end local v1    # "waveAnimations":Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$AnimationBundle;
    :cond_1
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 676
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 677
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 675
    :cond_0
    return-void
.end method

.method public setOnTriggerListener(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$OnTriggerListener;

    .line 1183
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 655
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 656
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 654
    :cond_0
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 697
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 696
    :goto_0
    return-void

    .line 700
    :cond_0
    iput-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method
