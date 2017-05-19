.class public Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.super Landroid/view/View;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;,
        Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;,
        Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;,
        Lcom/android/incallui/widget/multiwaveview/GlowPadView$1;,
        Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;,
        Lcom/android/incallui/widget/multiwaveview/GlowPadView$3;,
        Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private mActiveTarget:I

.field private mAllowScaling:Z

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

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

.field private mExploreByTouchHelper:Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;

.field private mFeedbackCount:I

.field private mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

.field private mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mRingScaleFactor:F

.field private mSnapMargin:F

.field private mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

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
            "Lcom/android/incallui/widget/multiwaveview/TargetDrawable;",
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

.field private mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method static synthetic -get0(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Lcom/android/incallui/widget/multiwaveview/PointCloud;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic -get6(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/widget/multiwaveview/GlowPadView;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)V
    .locals 0
    .param p1, "whichTarget"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;ZZ)V
    .locals 0
    .param p1, "animate"    # Z
    .param p2, "expanded"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/incallui/widget/multiwaveview/GlowPadView;IFF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 226
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 110
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v10}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 111
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v10}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 112
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v10}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 120
    iput v12, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 121
    iput v9, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 123
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 129
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 132
    iput v11, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 133
    iput v11, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 176
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$1;

    invoke-direct {v7, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$1;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 183
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;

    invoke-direct {v7, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 191
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$3;

    invoke-direct {v7, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$3;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 198
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;

    invoke-direct {v7, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 214
    const/16 v7, 0x30

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 215
    iput-boolean v8, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 229
    .local v5, "res":Landroid/content/res/Resources;
    sget-object v7, Lcom/android/incallui/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 230
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    const/4 v10, 0x7

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 231
    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    const/16 v10, 0x8

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 232
    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    const/16 v10, 0xb

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 234
    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 233
    const/16 v10, 0xa

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 236
    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 235
    const/16 v10, 0xc

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 237
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAllowScaling:Z

    .line 238
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 239
    .local v1, "handle":Landroid/util/TypedValue;
    if-eqz v1, :cond_2

    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setHandleDrawable(I)V

    .line 240
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 241
    const/4 v10, 0x5

    invoke-direct {p0, v0, v10}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v10

    .line 240
    invoke-direct {v7, v5, v10, v8}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 243
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    .line 245
    const/4 v7, 0x6

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v4

    .line 246
    .local v4, "pointId":I
    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 247
    :goto_1
    const/16 v7, 0x9

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    .line 249
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 252
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 253
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    .line 255
    :cond_0
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 256
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Must specify at least one target drawable"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 239
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "pointId":I
    :cond_2
    const v7, 0x7f02006e

    goto :goto_0

    .line 246
    .restart local v4    # "pointId":I
    :cond_3
    const/4 v3, 0x0

    .local v3, "pointDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 260
    .end local v3    # "pointDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 261
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 262
    .local v6, "resourceId":I
    if-nez v6, :cond_5

    .line 263
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Must specify target descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 265
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 269
    .end local v6    # "resourceId":I
    :cond_6
    invoke-virtual {v0, v12, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 270
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 271
    .restart local v6    # "resourceId":I
    if-nez v6, :cond_7

    .line 272
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Must specify direction descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 274
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 279
    .end local v6    # "resourceId":I
    :cond_8
    const/16 v7, 0x30

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 280
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    if-lez v7, :cond_9

    move v7, v8

    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setVibrateEnabled(Z)V

    .line 285
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->assignDefaultsIfNeeded()V

    .line 287
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/PointCloud;

    invoke-direct {v7, v3}, Lcom/android/incallui/widget/multiwaveview/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    .line 288
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget v8, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    iget v9, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v7, v8, v9}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->makePointCloud(FF)V

    .line 289
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v7, v7, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    iget v8, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->setRadius(F)V

    .line 291
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;

    invoke-direct {v7, p0, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mExploreByTouchHelper:Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;

    .line 292
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mExploreByTouchHelper:Lcom/android/incallui/widget/multiwaveview/GlowPadView$GlowpadExploreByTouchHelper;

    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 225
    return-void

    :cond_9
    move v7, v9

    .line 283
    goto :goto_2
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1229
    .local v5, "utterance":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1230
    .local v2, "targetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1231
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1232
    .local v3, "targetDescription":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "directionDescription":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1230
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1235
    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1236
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1239
    .end local v0    # "directionDescription":Ljava/lang/String;
    .end local v3    # "targetDescription":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1240
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1227
    :cond_3
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1033
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 1036
    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1038
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1037
    const/4 v1, 0x1

    .line 1038
    const/high16 v2, 0x41a00000    # 20.0f

    .line 1037
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 1040
    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1041
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 1032
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v3, 0x0

    .line 1046
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getLayoutDirection()I

    move-result v1

    .line 1047
    .local v1, "layoutDirection":I
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1049
    .local v0, "absoluteGravity":I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1058
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    .line 1061
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1070
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    .line 1045
    :goto_1
    return-void

    .line 1051
    :pswitch_1
    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1054
    :pswitch_2
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1063
    :sswitch_0
    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1066
    :sswitch_1
    iput p2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1049
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1061
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

    .line 1083
    iget-boolean v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAllowScaling:Z

    if-nez v4, :cond_0

    return v6

    .line 1085
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getLayoutDirection()I

    move-result v1

    .line 1086
    .local v1, "layoutDirection":I
    iget v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1088
    .local v0, "absoluteGravity":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1089
    .local v2, "scaleX":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1095
    .local v3, "scaleY":F
    and-int/lit8 v4, v0, 0x7

    packed-switch v4, :pswitch_data_0

    .line 1101
    :pswitch_0
    if-le p1, p3, :cond_1

    .line 1102
    int-to-float v4, p3

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 1103
    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    .line 1102
    div-float v2, v4, v5

    .line 1107
    :cond_1
    :pswitch_1
    and-int/lit8 v4, v0, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 1113
    if-le p2, p4, :cond_2

    .line 1114
    int-to-float v4, p4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 1115
    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    .line 1114
    div-float v3, v4, v5

    .line 1119
    :cond_2
    :sswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4

    .line 1095
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1107
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 462
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 463
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 465
    .local v2, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v2    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 461
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 481
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .param p1, "whichTarget"    # I

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 476
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 474
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1211
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

    .line 488
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 489
    .local v0, "activeTarget":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 491
    .local v1, "targetHit":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 494
    invoke-direct {p0, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->highlightSelected(I)V

    .line 497
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v3, 0x4b0

    invoke-direct {p0, v6, v3, v5, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 498
    invoke-direct {p0, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    .line 499
    iget-boolean v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 509
    :cond_0
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 487
    return-void

    .line 489
    .end local v1    # "targetHit":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "targetHit":Z
    goto :goto_0

    .line 505
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v4, v5, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 506
    const/4 v2, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 301
    const-string/jumbo v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string/jumbo v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string/jumbo v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string/jumbo v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string/jumbo v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GlowRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string/jumbo v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string/jumbo v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1257
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1258
    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1259
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1260
    const-string/jumbo v0, "GlowPadView"

    const-string/jumbo v1, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return-object v2

    .line 1265
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

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
    .line 296
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 297
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
    .line 1127
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

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
    .line 1123
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

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
    .line 1217
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1218
    const-string/jumbo v3, "accessibility"

    .line 1217
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1219
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1220
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    const v3, 0x3fa66666    # 1.3f

    mul-float v1, v3, v2

    .line 1224
    .local v1, "scaledTapRadius":F
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->square(F)F

    move-result v2

    return v2

    .line 1222
    .end local v1    # "scaledTapRadius":F
    :cond_0
    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    .restart local v1    # "scaledTapRadius":F
    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1245
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1246
    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1247
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1248
    const-string/jumbo v0, "GlowPadView"

    const-string/jumbo v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    return-object v2

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 878
    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 879
    .local v0, "actionIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 880
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x5

    invoke-direct {p0, v3, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 868
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 848
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 849
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 850
    .local v1, "eventX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 851
    .local v2, "eventY":F
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 852
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 853
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 847
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointerId:I

    .line 856
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 38
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 884
    const/4 v6, -0x1

    .line 885
    .local v6, "activeTarget":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 886
    .local v12, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 887
    .local v23, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 888
    .local v17, "ntargets":I
    const/16 v31, 0x0

    .line 889
    .local v31, "x":F
    const/16 v32, 0x0

    .line 890
    .local v32, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointerId:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 892
    .local v5, "actionIndex":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v5, v0, :cond_0

    .line 893
    return-void

    .line 896
    :cond_0
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_0
    add-int/lit8 v33, v12, 0x1

    move/from16 v0, v33

    if-ge v14, v0, :cond_a

    .line 897
    if-ge v14, v12, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    .line 899
    .local v10, "eventX":F
    :goto_1
    if-ge v14, v12, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v11

    .line 902
    .local v11, "eventY":F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    sub-float v29, v10, v33

    .line 903
    .local v29, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v33, v0

    sub-float v30, v11, v33

    .line 904
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

    .line 905
    .local v28, "touchRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    cmpl-float v33, v28, v33

    if-lez v33, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    div-float v18, v33, v28

    .line 906
    .local v18, "scale":F
    :goto_3
    mul-float v15, v29, v18

    .line 907
    .local v15, "limitX":F
    mul-float v16, v30, v18

    .line 908
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

    .line 910
    .local v8, "angleRad":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_1

    .line 911
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 914
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_9

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    move/from16 v34, v0

    sub-float v20, v33, v34

    .line 917
    .local v20, "snapRadius":F
    mul-float v19, v20, v20

    .line 919
    .local v19, "snapDistance2":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_9

    .line 920
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 922
    .local v21, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
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

    .line 923
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

    .line 924
    .local v24, "targetMaxRad":D
    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 926
    cmpl-double v33, v8, v26

    if-lez v33, :cond_6

    cmpg-double v33, v8, v24

    if-gtz v33, :cond_6

    const/4 v7, 0x1

    .line 929
    .local v7, "angleMatches":Z
    :goto_5
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v33

    cmpl-float v33, v33, v19

    if-lez v33, :cond_2

    .line 930
    move v6, v13

    .line 919
    .end local v7    # "angleMatches":Z
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 898
    .end local v8    # "angleRad":D
    .end local v10    # "eventX":F
    .end local v11    # "eventY":F
    .end local v13    # "i":I
    .end local v15    # "limitX":F
    .end local v16    # "limitY":F
    .end local v18    # "scale":F
    .end local v19    # "snapDistance2":F
    .end local v20    # "snapRadius":F
    .end local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
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

    .line 900
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .restart local v11    # "eventY":F
    goto/16 :goto_2

    .line 905
    .restart local v28    # "touchRadius":F
    .restart local v29    # "tx":F
    .restart local v30    # "ty":F
    :cond_5
    const/high16 v18, 0x3f800000    # 1.0f

    .restart local v18    # "scale":F
    goto/16 :goto_3

    .line 927
    .restart local v8    # "angleRad":D
    .restart local v13    # "i":I
    .restart local v15    # "limitX":F
    .restart local v16    # "limitY":F
    .restart local v19    # "snapDistance2":F
    .restart local v20    # "snapRadius":F
    .restart local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    .restart local v24    # "targetMaxRad":D
    .restart local v26    # "targetMinRad":D
    :cond_6
    const-wide v34, 0x401921fb54442d18L    # 6.283185307179586

    add-double v34, v34, v8

    cmpl-double v33, v34, v26

    if-lez v33, :cond_8

    .line 928
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

    .line 927
    .end local v7    # "angleMatches":Z
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "angleMatches":Z
    goto :goto_5

    .line 935
    .end local v7    # "angleMatches":Z
    .end local v13    # "i":I
    .end local v19    # "snapDistance2":F
    .end local v20    # "snapRadius":F
    .end local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    .end local v24    # "targetMaxRad":D
    .end local v26    # "targetMinRad":D
    :cond_9
    move/from16 v31, v15

    .line 936
    move/from16 v32, v16

    .line 896
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 939
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

    iget-boolean v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_b

    .line 940
    return-void

    .line 943
    :cond_b
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_e

    .line 944
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 945
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 951
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v6, :cond_d

    .line 953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    .line 954
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 955
    .restart local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 958
    .end local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_c
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_d

    .line 959
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 960
    .restart local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v33

    .line 963
    const-string/jumbo v34, "accessibility"

    .line 962
    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 964
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_d

    .line 965
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 966
    .local v22, "targetContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 970
    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    .end local v22    # "targetContentDescription":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 883
    return-void

    .line 947
    :cond_e
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 948
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_6
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 863
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointerId:I

    if-ne v1, v2, :cond_0

    .line 864
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x5

    invoke-direct {p0, v3, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 860
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

    .line 449
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 450
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    .line 451
    const-string/jumbo v5, "ease"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/incallui/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 452
    const-string/jumbo v5, "delay"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 453
    const-string/jumbo v5, "alpha"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 454
    const-string/jumbo v5, "x"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 455
    const-string/jumbo v5, "y"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v4, v6

    .line 456
    const-string/jumbo v5, "onUpdate"

    const/16 v6, 0xa

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v6, 0xb

    aput-object v5, v4, v6

    .line 457
    const-string/jumbo v5, "onComplete"

    const/16 v6, 0xc

    aput-object v5, v4, v6

    const/16 v5, 0xd

    aput-object p4, v4, v5

    .line 450
    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 448
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 17
    .param p1, "animate"    # Z
    .param p2, "expanded"    # Z

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 530
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 531
    if-eqz p1, :cond_0

    const/16 v3, 0xc8

    .line 532
    .local v3, "duration":I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    .line 534
    .local v2, "delay":I
    :goto_1
    if-eqz p2, :cond_2

    .line 535
    const/high16 v9, 0x3f800000    # 1.0f

    .line 536
    .local v9, "targetScale":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 537
    .local v6, "length":I
    sget-object v5, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 538
    .local v5, "interpolator":Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v6, :cond_3

    .line 539
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 540
    .local v8, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v10, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 541
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v12, v3

    const/16 v11, 0xc

    new-array v11, v11, [Ljava/lang/Object;

    .line 542
    const-string/jumbo v14, "ease"

    const/4 v15, 0x0

    aput-object v14, v11, v15

    const/4 v14, 0x1

    aput-object v5, v11, v14

    .line 543
    const-string/jumbo v14, "alpha"

    const/4 v15, 0x2

    aput-object v14, v11, v15

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v11, v15

    .line 544
    const-string/jumbo v14, "scaleX"

    const/4 v15, 0x4

    aput-object v14, v11, v15

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x5

    aput-object v14, v11, v15

    .line 545
    const-string/jumbo v14, "scaleY"

    const/4 v15, 0x6

    aput-object v14, v11, v15

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v11, v15

    .line 546
    const-string/jumbo v14, "delay"

    const/16 v15, 0x8

    aput-object v14, v11, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v11, v15

    .line 547
    const-string/jumbo v14, "onUpdate"

    const/16 v15, 0xa

    aput-object v14, v11, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v15, 0xb

    aput-object v14, v11, v15

    .line 541
    invoke-static {v8, v12, v13, v11}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 538
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 531
    .end local v2    # "delay":I
    .end local v3    # "duration":I
    .end local v4    # "i":I
    .end local v5    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v6    # "length":I
    .end local v8    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    .end local v9    # "targetScale":F
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "duration":I
    goto/16 :goto_0

    .line 532
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "delay":I
    goto/16 :goto_1

    .line 535
    :cond_2
    const v9, 0x3f4ccccd    # 0.8f

    .restart local v9    # "targetScale":F
    goto/16 :goto_2

    .line 550
    .restart local v4    # "i":I
    .restart local v5    # "interpolator":Landroid/animation/TimeInterpolator;
    .restart local v6    # "length":I
    :cond_3
    if-eqz p2, :cond_4

    .line 551
    const/high16 v7, 0x3f800000    # 1.0f

    .line 552
    .local v7, "ringScaleTarget":F
    :goto_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    mul-float/2addr v7, v10

    .line 553
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    .line 554
    const-string/jumbo v15, "ease"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v5, v14, v15

    .line 555
    const-string/jumbo v15, "alpha"

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    .line 556
    const-string/jumbo v15, "scaleX"

    const/16 v16, 0x4

    aput-object v15, v14, v16

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x5

    aput-object v15, v14, v16

    .line 557
    const-string/jumbo v15, "scaleY"

    const/16 v16, 0x6

    aput-object v15, v14, v16

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x7

    aput-object v15, v14, v16

    .line 558
    const-string/jumbo v15, "delay"

    const/16 v16, 0x8

    aput-object v15, v14, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x9

    aput-object v15, v14, v16

    .line 559
    const-string/jumbo v15, "onUpdate"

    const/16 v16, 0xa

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v16, 0xb

    aput-object v15, v14, v16

    .line 560
    const-string/jumbo v15, "onComplete"

    const/16 v16, 0xc

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v16, 0xd

    aput-object v15, v14, v16

    .line 553
    invoke-static {v11, v12, v13, v14}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 562
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 526
    return-void

    .line 551
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
    .line 519
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 520
    if-eq v0, p1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 519
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .param p1, "activeTarget"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 515
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideUnselected(I)V

    .line 512
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .param p1, "resourceId"    # I

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 617
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 618
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    .line 620
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 621
    .local v3, "maxWidth":I
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 622
    .local v2, "maxHeight":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 623
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 625
    .local v4, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 626
    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 628
    .end local v4    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 629
    :cond_1
    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 630
    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 631
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->requestLayout()V

    .line 615
    :goto_1
    return-void

    .line 633
    :cond_2
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 634
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

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
    .line 1269
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1270
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1271
    .local v2, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1272
    .local v4, "targetContentDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1273
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1274
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1276
    .end local v1    # "contentDescription":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1277
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
            "Lcom/android/incallui/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 603
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 604
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 605
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 606
    .local v2, "drawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 607
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 608
    .local v6, "value":Landroid/util/TypedValue;
    new-instance v5, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    const/4 v8, 0x3

    invoke-direct {v5, v4, v7, v8}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    .line 609
    .local v5, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    .end local v5    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 611
    .end local v6    # "value":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 612
    return-object v2
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "existingResourceId"    # I
    .param p3, "newResourceId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1312
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1313
    :cond_0
    return v5

    .line 1316
    :cond_1
    const/4 v2, 0x0

    .line 1317
    .local v2, "result":Z
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1318
    .local v0, "drawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1319
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1320
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1321
    .local v4, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_2

    .line 1322
    invoke-virtual {v4, p1, p3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1323
    const/4 v2, 0x1

    .line 1319
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1327
    .end local v4    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_3
    if-eqz v2, :cond_4

    .line 1328
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->requestLayout()V

    .line 1331
    :cond_4
    return v2
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 359
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 368
    move v0, v1

    .line 370
    :goto_0
    return v0

    .line 361
    :sswitch_0
    move v0, p2

    .line 362
    goto :goto_0

    .line 364
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 359
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

    .line 1003
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1004
    if-eqz p1, :cond_0

    .line 1005
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 1007
    :cond_0
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    .line 1008
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1009
    if-nez p1, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1014
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1002
    :cond_1
    return-void

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "duration"    # I
    .param p2, "delay"    # I
    .param p3, "finalAlpha"    # F
    .param p4, "finishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 438
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    .line 439
    const-string/jumbo v5, "ease"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 440
    const-string/jumbo v5, "delay"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 441
    const-string/jumbo v5, "alpha"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 442
    const-string/jumbo v5, "onUpdate"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 443
    const-string/jumbo v5, "onComplete"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    const/16 v5, 0x9

    aput-object p4, v4, v5

    .line 438
    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 436
    return-void
.end method

.method private showTargets(Z)V
    .locals 13
    .param p1, "animate"    # Z

    .prologue
    .line 566
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 567
    iput-boolean p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 568
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 569
    .local v0, "delay":I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 570
    .local v1, "duration":I
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 571
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 572
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 573
    .local v5, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v6, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 574
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v8, v1

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    .line 575
    const-string/jumbo v10, "ease"

    const/4 v11, 0x0

    aput-object v10, v7, v11

    sget-object v10, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    const/4 v11, 0x1

    aput-object v10, v7, v11

    .line 576
    const-string/jumbo v10, "alpha"

    const/4 v11, 0x2

    aput-object v10, v7, v11

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v7, v11

    .line 577
    const-string/jumbo v10, "scaleX"

    const/4 v11, 0x4

    aput-object v10, v7, v11

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v7, v11

    .line 578
    const-string/jumbo v10, "scaleY"

    const/4 v11, 0x6

    aput-object v10, v7, v11

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v7, v11

    .line 579
    const-string/jumbo v10, "delay"

    const/16 v11, 0x8

    aput-object v10, v7, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v7, v11

    .line 580
    const-string/jumbo v10, "onUpdate"

    const/16 v11, 0xa

    aput-object v10, v7, v11

    iget-object v10, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v11, 0xb

    aput-object v10, v7, v11

    .line 574
    invoke-static {v5, v8, v9, v7}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 568
    .end local v0    # "delay":I
    .end local v1    # "duration":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v5    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "delay":I
    goto :goto_0

    .line 569
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "duration":I
    goto :goto_1

    .line 582
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_2
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v4, v6, v7

    .line 583
    .local v4, "ringScale":F
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    int-to-long v8, v1

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Object;

    .line 584
    const-string/jumbo v11, "ease"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    sget-object v11, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 585
    const-string/jumbo v11, "alpha"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 586
    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x4

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v10, v12

    .line 587
    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x6

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v10, v12

    .line 588
    const-string/jumbo v11, "delay"

    const/16 v12, 0x8

    aput-object v11, v10, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x9

    aput-object v11, v10, v12

    .line 589
    const-string/jumbo v11, "onUpdate"

    const/16 v12, 0xa

    aput-object v11, v10, v12

    iget-object v11, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v12, 0xb

    aput-object v11, v10, v12

    .line 590
    const-string/jumbo v11, "onComplete"

    const/16 v12, 0xc

    aput-object v11, v10, v12

    iget-object v11, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v12, 0xd

    aput-object v11, v10, v12

    .line 583
    invoke-static {v7, v8, v9, v10}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 565
    return-void
.end method

.method private square(F)F
    .locals 1
    .param p1, "d"    # F

    .prologue
    .line 1207
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 6
    .param p1, "duration"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 788
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 789
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 792
    :cond_0
    int-to-long v2, p1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 793
    const-string/jumbo v4, "ease"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    sget-object v4, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 794
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

    .line 795
    const-string/jumbo v4, "delay"

    const/4 v5, 0x4

    aput-object v4, v1, v5

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    .line 792
    invoke-static {v0, v2, v3, v1}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

    .line 796
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 786
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 752
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 753
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 754
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 755
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    .line 756
    const-string/jumbo v5, "ease"

    aput-object v5, v4, v8

    sget-object v5, Lcom/android/incallui/widget/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 757
    const-string/jumbo v5, "delay"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 758
    const-string/jumbo v5, "radius"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 759
    const-string/jumbo v5, "onUpdate"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 760
    const-string/jumbo v5, "onComplete"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    .line 761
    new-instance v5, Lcom/android/incallui/widget/multiwaveview/GlowPadView$5;

    invoke-direct {v5, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$5;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    const/16 v6, 0x9

    aput-object v5, v4, v6

    .line 755
    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 751
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 748
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 746
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

    .line 391
    packed-switch p1, :pswitch_data_0

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 393
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 394
    invoke-direct {p0, v3, v3, v2, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 395
    invoke-direct {p0, v3, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 396
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    sget-object v2, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 397
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 401
    :pswitch_1
    invoke-direct {p0, v3, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 405
    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 406
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 407
    invoke-direct {p0, v5}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 408
    const/16 v1, 0xc8

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 409
    invoke-direct {p0, v5}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 412
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 413
    const-string/jumbo v2, "accessibility"

    .line 412
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 414
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->announceTargets()V

    goto :goto_0

    .line 420
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 425
    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 426
    invoke-direct {p0, v3, v3, v2, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 430
    :pswitch_5
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->doFinish()V

    goto :goto_0

    .line 391
    nop

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

    .line 1020
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v2

    .line 1021
    .local v0, "tx":F
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v2

    .line 1022
    .local v1, "ty":F
    iget-boolean v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 1024
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1025
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1026
    iput-boolean v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 1027
    return v4

    .line 1029
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

    .line 839
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v2

    sub-float v0, p1, v2

    .line 840
    .local v0, "dx":F
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 841
    .local v1, "dy":F
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v0, v2

    .line 842
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    .line 843
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->setX(F)V

    .line 844
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->setY(F)V

    .line 838
    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->setCenter(FF)V

    .line 1184
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 11
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 1171
    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1172
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1173
    .local v3, "size":I
    int-to-double v6, v3

    const-wide v8, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    div-double v6, v8, v6

    double-to-float v0, v6

    .line 1174
    .local v0, "alpha":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1175
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1176
    .local v4, "targetIcon":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1177
    .local v1, "angle":F
    invoke-virtual {v4, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1178
    invoke-virtual {v4, p2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1179
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v6

    div-float/2addr v6, v10

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 1180
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v6

    div-float/2addr v6, v10

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 1174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1169
    .end local v1    # "angle":F
    .end local v4    # "targetIcon":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 4

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 595
    :cond_0
    return-void
.end method


# virtual methods
.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1282
    .local v0, "drawable":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method protected getScaledSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 351
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 352
    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    .line 351
    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getScaledSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 343
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 344
    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    .line 343
    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 1301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1302
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1303
    .local v1, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1304
    return v0

    .line 1301
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1307
    .end local v1    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1190
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    invoke-virtual {v3, p1}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1191
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1192
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1193
    .local v1, "ntargets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1194
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1195
    .local v2, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    if-eqz v2, :cond_0

    .line 1196
    invoke-virtual {v2, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1199
    .end local v2    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1189
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 976
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 977
    const-string/jumbo v3, "accessibility"

    .line 976
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 978
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 980
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 991
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 992
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 994
    .end local v1    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 995
    return v4

    .line 982
    .restart local v1    # "action":I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 985
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 988
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 980
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

    .line 1132
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1133
    sub-int v5, p4, p2

    .line 1134
    .local v5, "width":I
    sub-int v0, p5, p3

    .line 1138
    .local v0, "height":I
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v4

    .line 1139
    .local v4, "placementWidth":F
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v3

    .line 1140
    .local v3, "placementHeight":F
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    .line 1141
    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    div-float/2addr v7, v9

    .line 1140
    add-float v1, v6, v7

    .line 1142
    .local v1, "newWaveCenterX":F
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    .line 1143
    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    div-float/2addr v7, v9

    .line 1142
    add-float v2, v6, v7

    .line 1145
    .local v2, "newWaveCenterY":F
    iget-boolean v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1146
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 1147
    invoke-direct {p0, v8, v8}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 1148
    iput-boolean v8, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 1151
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1152
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1154
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    invoke-virtual {v6, v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->setScale(F)V

    .line 1156
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1157
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1159
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1160
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    .line 1161
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1163
    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    .line 1164
    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    .line 1131
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 376
    .local v3, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 377
    .local v2, "minimumHeight":I
    invoke-direct {p0, p1, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 378
    .local v1, "computedWidth":I
    invoke-direct {p0, p2, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 380
    .local v0, "computedHeight":I
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->computeScaleFactor(IIII)F

    move-result v6

    iput v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 383
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getScaledSuggestedMinimumWidth()I

    move-result v5

    .line 384
    .local v5, "scaledWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getScaledSuggestedMinimumHeight()I

    move-result v4

    .line 386
    .local v4, "scaledHeight":I
    sub-int v6, v1, v5

    sub-int v7, v0, v4

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->computeInsets(II)V

    .line 387
    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setMeasuredDimension(II)V

    .line 374
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 803
    .local v0, "action":I
    const/4 v1, 0x0

    .line 804
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 834
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->invalidate()V

    .line 835
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 808
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 809
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 810
    const/4 v1, 0x1

    .line 811
    goto :goto_0

    .line 815
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 816
    const/4 v1, 0x1

    .line 817
    goto :goto_0

    .line 822
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 823
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 824
    const/4 v1, 0x1

    .line 825
    goto :goto_0

    .line 829
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 830
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 831
    const/4 v1, 0x1

    .line 832
    goto :goto_0

    .line 835
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 804
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

    .line 728
    iget v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_1

    .line 729
    const/4 v0, 0x1

    .line 730
    .local v0, "doWaveAnimation":Z
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 733
    .local v1, "waveAnimations":Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 734
    invoke-virtual {v1, v5}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    .line 735
    .local v2, "t":J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 736
    const/4 v0, 0x0

    .line 740
    .end local v2    # "t":J
    :cond_0
    if-eqz v0, :cond_1

    .line 741
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startWaveAnimation()V

    .line 727
    .end local v0    # "doWaveAnimation":Z
    .end local v1    # "waveAnimations":Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;
    :cond_1
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "existingResId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1344
    if-nez p3, :cond_0

    return v7

    .line 1346
    :cond_0
    const/4 v5, 0x0

    .line 1347
    .local v5, "replaced":Z
    if-eqz p1, :cond_1

    .line 1349
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1352
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    .line 1351
    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1353
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1354
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1355
    .local v1, "iconResId":I
    if-eqz v1, :cond_1

    .line 1356
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1357
    .local v6, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v6, p3, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1368
    .end local v1    # "iconResId":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "replaced":Z
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 1370
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, p3, p3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    .line 1372
    :cond_2
    return v5

    .line 1363
    .restart local v5    # "replaced":Z
    :catch_0
    move-exception v3

    .line 1364
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to swap drawable from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1365
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    .line 1364
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1360
    .end local v3    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 1361
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to swap drawable; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1362
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    .line 1361
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1362
    const-string/jumbo v9, " not found"

    .line 1361
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 778
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 779
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 780
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 781
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 782
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 783
    invoke-static {}, Lcom/android/incallui/widget/multiwaveview/Tweener;->reset()V

    .line 776
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 321
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 322
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 316
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 695
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 696
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 694
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .param p1, "resourceId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1287
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1288
    .local v1, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1289
    invoke-virtual {v1, p2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 1285
    .end local v1    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void

    .line 1286
    .restart local v1    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHandleDrawable(I)V
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 665
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 659
    return-void

    .line 663
    :cond_0
    new-instance v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 1202
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 674
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 675
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 673
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 645
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    .line 642
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 716
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 715
    :goto_0
    return-void

    .line 719
    :cond_0
    iput-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 311
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 310
    return-void
.end method
