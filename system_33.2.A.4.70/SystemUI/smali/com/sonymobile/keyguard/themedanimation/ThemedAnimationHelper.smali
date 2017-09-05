.class public Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;
.super Ljava/lang/Object;
.source "ThemedAnimationHelper.java"

# interfaces
.implements Lcom/sonymobile/keyguard/clock/picker/ClockPickerCallback;
.implements Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;
    }
.end annotation


# instance fields
.field private mBouncerShowing:Z

.field private final mClippingController:Lcom/sonymobile/keyguard/themedanimation/ClippingController;

.field private mDrawingEnabled:Z

.field private mFlingWithExpands:Z

.field private mIsAttachedToWindow:Z

.field private mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

.field private mRealScreenTurnedOn:Z

.field private final mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

.field private mWaitingOpenAnimationUntilAttachedToWindow:Z

.field private mWaitingOpenAnimationUntilRealScreenTurnedOn:Z


# direct methods
.method static synthetic -get0(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->updateClipDrawingState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;Lcom/sonymobile/keyguard/themedanimation/ClippingController;)V
    .locals 1
    .param p1, "keyguardUpdateMonitor"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p2, "motionController"    # Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;
    .param p3, "slitAnimationController"    # Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;
    .param p4, "clippingController"    # Lcom/sonymobile/keyguard/themedanimation/ClippingController;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper$1;-><init>(Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 84
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 85
    iput-object p2, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    .line 86
    iput-object p3, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    .line 87
    iput-object p4, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mClippingController:Lcom/sonymobile/keyguard/themedanimation/ClippingController;

    .line 88
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    invoke-virtual {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->setHorizontalMotionControllerCallback(Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionControllerCallback;)V

    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->updateResources()V

    .line 91
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardShowing:Z

    .line 92
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->updateClipDrawingState()V

    .line 83
    return-void
.end method

.method private startSlitAndLeftAlignAnimationInternal()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->startOpenAnimation()V

    .line 189
    :cond_0
    return-void
.end method

.method private updateClipDrawingState()V
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mClippingController:Lcom/sonymobile/keyguard/themedanimation/ClippingController;

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mDrawingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardShowing:Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->setDrawingEnabled(Z)V

    .line 281
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleOnKeyguardStatusViewAttachedToWindow()V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mIsAttachedToWindow:Z

    .line 202
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 204
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mWaitingOpenAnimationUntilAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mWaitingOpenAnimationUntilAttachedToWindow:Z

    .line 206
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mWaitingOpenAnimationUntilRealScreenTurnedOn:Z

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->startSlitAndLeftAlignAnimationInternal()V

    .line 198
    :cond_0
    return-void
.end method

.method public handleOnKeyguardStatusViewDetachedFromWindow()V
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mIsAttachedToWindow:Z

    .line 221
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 217
    return-void
.end method

.method public handleOnScreenTurnedOff()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mRealScreenTurnedOn:Z

    .line 245
    return-void
.end method

.method public handleOnScreenTurnedOn()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mRealScreenTurnedOn:Z

    .line 232
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mWaitingOpenAnimationUntilRealScreenTurnedOn:Z

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mWaitingOpenAnimationUntilRealScreenTurnedOn:Z

    .line 234
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mWaitingOpenAnimationUntilAttachedToWindow:Z

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->startSlitAndLeftAlignAnimationInternal()V

    .line 228
    :cond_0
    return-void
.end method

.method public isHorizontalTrackingAvailable()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->isTrackingAvailable()Z

    move-result v0

    return v0
.end method

.method public onClockPickerExiting()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->setClockPickerWorking(Z)V

    .line 309
    return-void
.end method

.method public onClockPickerStarted()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->setClockPickerWorking(Z)V

    .line 293
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->startFallbackCloseAnimation()V

    .line 289
    return-void
.end method

.method public onCurrentClockHidden()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mClippingController:Lcom/sonymobile/keyguard/themedanimation/ClippingController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->setDrawingEnabled(Z)V

    .line 300
    return-void
.end method

.method public onFlingEnded()V
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mFlingWithExpands:Z

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->reset()V

    .line 344
    :cond_0
    return-void
.end method

.method public onFlingStarted(Z)V
    .locals 1
    .param p1, "expands"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mFlingWithExpands:Z

    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->startFallbackCloseAnimation()V

    .line 329
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelAllAnimator()V

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 380
    sub-int v1, p4, p2

    .line 381
    .local v1, "width":I
    sub-int v0, p8, p6

    .line 382
    .local v0, "oldWidth":I
    if-eq v1, v0, :cond_0

    .line 385
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->setPanelWidth(F)V

    .line 386
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v2, v1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->setPanelWidth(I)V

    .line 379
    :cond_0
    return-void
.end method

.method public onQsExpandedChanged(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->startFallbackCloseAnimation()V

    .line 356
    :cond_0
    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 1
    .param p1, "isHorizontal"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelAllAnimator()V

    .line 319
    return-void
.end method

.method public onUnlockHintAnimationStarted(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->startUnlockHintAnimation(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method

.method public requestInvalidate()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mClippingController:Lcom/sonymobile/keyguard/themedanimation/ClippingController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->invalidateTargets()V

    .line 254
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mWaitingOpenAnimationUntilAttachedToWindow:Z

    .line 133
    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mWaitingOpenAnimationUntilRealScreenTurnedOn:Z

    .line 134
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->resetPosition()V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->startFallbackCloseAnimation()V

    .line 129
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->reset()V

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mClippingController:Lcom/sonymobile/keyguard/themedanimation/ClippingController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->setClippingEnabled(Z)V

    .line 263
    return-void
.end method

.method public setClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V
    .locals 1
    .param p1, "sources"    # Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mClippingController:Lcom/sonymobile/keyguard/themedanimation/ClippingController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->setClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V

    .line 158
    return-void
.end method

.method public setDrawingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mDrawingEnabled:Z

    .line 278
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->updateClipDrawingState()V

    .line 274
    return-void
.end method

.method public setLeftAlignAnimationTargets(Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;)V
    .locals 1
    .param p1, "targets"    # Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->setLeftAlignAnimationTargets(Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;)V

    .line 147
    return-void
.end method

.method public updatePanelLayoutWidth(I)V
    .locals 1
    .param p1, "layoutWidth"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->setPanelLayoutParamWidth(I)V

    .line 109
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ThemedAnimationHelper;->mSlitAnimationController:Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->loadDimens()V

    .line 98
    return-void
.end method
