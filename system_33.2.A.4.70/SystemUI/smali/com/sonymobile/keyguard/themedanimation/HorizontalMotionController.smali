.class public Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;
.super Ljava/lang/Object;
.source "HorizontalMotionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController$ScrimFractionInterpolator;
    }
.end annotation


# instance fields
.field private final mAnimationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationTargetsWithPeeking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

.field private mClockPickerWorking:Z

.field private mFling:Z

.field private mHintAnimationRunning:Z

.field private mIsTrackingAvailableWhenAnimationEvents:Z

.field private mKeyguardShowing:Z

.field private final mMinVelocityPxPerSecond:F

.field private mOffset:F

.field private mPanelWidth:F

.field private mPosition:F

.field private mQsExpanded:Z

.field private mTracking:Z

.field private mTrackingHorizontal:Z


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "minVelocityPxPerSecond"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTrackingHorizontal:Z

    .line 42
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTracking:Z

    .line 47
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mIsTrackingAvailableWhenAnimationEvents:Z

    .line 52
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mKeyguardShowing:Z

    .line 57
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mQsExpanded:Z

    .line 62
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mHintAnimationRunning:Z

    .line 67
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mClockPickerWorking:Z

    .line 74
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mFling:Z

    .line 79
    iput v1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPanelWidth:F

    .line 89
    iput v1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPosition:F

    .line 94
    iput v1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mOffset:F

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mAnimationTargets:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mAnimationTargetsWithPeeking:Ljava/util/List;

    .line 104
    iput p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mMinVelocityPxPerSecond:F

    .line 101
    return-void
.end method

.method public static getScrimFractionInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController$ScrimFractionInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController$ScrimFractionInterpolator;-><init>(Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController$ScrimFractionInterpolator;)V

    return-object v0
.end method

.method private isHackingExpandedHeight()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mFling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mHintAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mIsTrackingAvailableWhenAnimationEvents:Z

    .line 357
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyFlingEnded()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;->onFlingEnded()V

    .line 422
    :cond_0
    return-void
.end method

.method private notifyFlingStarted(Z)V
    .locals 1
    .param p1, "expands"    # Z

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;->onFlingStarted(Z)V

    .line 413
    :cond_0
    return-void
.end method

.method private notifyQsExpandedChanged(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;->onQsExpandedChanged(Z)V

    .line 433
    :cond_0
    return-void
.end method

.method private notifyTrackingStarted(Z)V
    .locals 1
    .param p1, "isHorizontal"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;->onTrackingStarted(Z)V

    .line 402
    :cond_0
    return-void
.end method

.method private notifyUnlockHintAnimationStarted(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;->onUnlockHintAnimationStarted(Ljava/lang/Runnable;)V

    .line 444
    :cond_0
    return-void
.end method

.method private setPositionByPixelInternal(F)V
    .locals 0
    .param p1, "posX"    # F

    .prologue
    .line 378
    iput p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPosition:F

    .line 379
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->updatePosition()V

    .line 377
    return-void
.end method

.method private updateIsTrackingAvailableWhenAnimationEvents()V
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mFling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mHintAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->isTrackingAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mIsTrackingAvailableWhenAnimationEvents:Z

    .line 364
    :goto_0
    return-void

    .line 368
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mIsTrackingAvailableWhenAnimationEvents:Z

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 5

    .prologue
    .line 386
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mAnimationTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 387
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 388
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mAnimationTargets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPosition:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mAnimationTargetsWithPeeking:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 392
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 393
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mAnimationTargetsWithPeeking:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPosition:F

    iget v4, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mOffset:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    :cond_1
    return-void
.end method


# virtual methods
.method public addAnimationTargetView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "peeking"    # Z

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    if-eqz p2, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mAnimationTargetsWithPeeking:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mAnimationTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public applyToHorizontalUnlockingPositionIfNeeded(F)V
    .locals 3
    .param p1, "fraction"    # F

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->isHackingExpandedHeight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget v1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPanelWidth:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v0, v1, v2

    .line 260
    .local v0, "posInPixel":F
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->setPositionByPixelInternal(F)V

    .line 257
    .end local v0    # "posInPixel":F
    :cond_0
    return-void
.end method

.method public convertToExpandedHeight(FF)F
    .locals 3
    .param p1, "width"    # F
    .param p2, "maxHeight"    # F

    .prologue
    const/4 v2, 0x0

    .line 245
    move v0, p2

    .line 246
    .local v0, "height":F
    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPanelWidth:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 247
    neg-float v1, p1

    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPanelWidth:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float v0, v1, p2

    .line 249
    :cond_0
    return v0
.end method

.method public endFling()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mFling:Z

    .line 302
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->updateIsTrackingAvailableWhenAnimationEvents()V

    .line 303
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->notifyFlingEnded()V

    .line 300
    return-void
.end method

.method public flingExpands(FFF)Z
    .locals 4
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F
    .param p3, "width"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 277
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTrackingHorizontal:Z

    if-nez v2, :cond_0

    .line 278
    return v0

    .line 279
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mMinVelocityPxPerSecond:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 280
    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPanelWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v3, p3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 282
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getFakeHeightIfHackingExpandedHeight(FF)F
    .locals 1
    .param p1, "actual"    # F
    .param p2, "fake"    # F

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->isHackingExpandedHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p2    # "fake":F
    :goto_0
    return p2

    .restart local p2    # "fake":F
    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method public isClockPickerWorking()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mClockPickerWorking:Z

    return v0
.end method

.method public isTrackingAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 225
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mQsExpanded:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTrackingHorizontal()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTrackingHorizontal:Z

    return v0
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->setPositionByPixelInternal(F)V

    .line 324
    return-void
.end method

.method public setClockPickerWorking(Z)V
    .locals 0
    .param p1, "working"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mClockPickerWorking:Z

    .line 176
    return-void
.end method

.method public setHintAnimationRunning(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mHintAnimationRunning:Z

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->updateIsTrackingAvailableWhenAnimationEvents()V

    .line 166
    return-void
.end method

.method public setHorizontalMotionControllerCallback(Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mCallback:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;

    .line 113
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mKeyguardShowing:Z

    .line 147
    return-void
.end method

.method public setPanelWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mPanelWidth:F

    .line 138
    return-void
.end method

.method public setPeekingOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 343
    iput p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mOffset:F

    .line 344
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->updatePosition()V

    .line 342
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mQsExpanded:Z

    .line 158
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->notifyQsExpandedChanged(Z)V

    .line 156
    return-void
.end method

.method public setTracking(Z)V
    .locals 1
    .param p1, "tracking"    # Z

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTracking:Z

    if-eq v0, p1, :cond_0

    .line 196
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTrackingHorizontal:Z

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTracking:Z

    .line 201
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->updateIsTrackingAvailableWhenAnimationEvents()V

    .line 194
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->notifyTrackingStarted(Z)V

    goto :goto_0
.end method

.method public setTrackingHorizontal(Z)V
    .locals 1
    .param p1, "tracking"    # Z

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTrackingHorizontal:Z

    if-eq v0, p1, :cond_0

    .line 211
    if-eqz p1, :cond_0

    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->notifyTrackingStarted(Z)V

    .line 215
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mTrackingHorizontal:Z

    .line 216
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->updateIsTrackingAvailableWhenAnimationEvents()V

    .line 209
    return-void
.end method

.method public startFling(Z)V
    .locals 1
    .param p1, "expands"    # Z

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->mFling:Z

    .line 293
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->updateIsTrackingAvailableWhenAnimationEvents()V

    .line 294
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->notifyFlingStarted(Z)V

    .line 291
    return-void
.end method

.method public startUnlockHintAnimation(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->notifyUnlockHintAnimationStarted(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method
