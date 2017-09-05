.class public Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;
.super Ljava/lang/Object;
.source "SlitAndLeftAlignAnimationController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$1;,
        Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$2;,
        Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$3;,
        Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$4;
    }
.end annotation


# instance fields
.field private mAnimateTargetsDependOnSizeEnabled:Z

.field private mCloseAnimationCancelled:Z

.field private mCloseAnimationDuration:I

.field private mCloseAnimationStartDelay:I

.field private mCloseHandler:Landroid/os/Handler;

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mCloseRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mFallbackCloseAnimationDuration:I

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFraction:F

.field private mFractionMax:F

.field private mFractionMin:F

.field private mIsOpening:Z

.field private mLeftAlignAnimationTargets:Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

.field private mLeftAlignMargin:F

.field private mLeftAlignOffset:F

.field private mLeftAlignTargetsParent:Landroid/view/View;

.field private final mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

.field private mOpenAnimationDuration:I

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mPanelLayoutWidth:I

.field private mPanelWidth:I

.field private final mSlitAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mSlitAnimationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlitAnimationTargetsDependOnSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlitCloseAnimationAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private final mSlitOpenAnimationAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mSlitWidth:F

.field private mUnlockHintFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -set0(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mIsOpening:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->notifyUnlockHintAnimationFinished()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->postCloseAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateFraction(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "motionController"    # Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mIsOpening:Z

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$1;-><init>(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$2;-><init>(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;)V

    .line 89
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 102
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$3;-><init>(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;)V

    .line 101
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitOpenAnimationAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 123
    new-instance v0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController$4;-><init>(Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;)V

    .line 122
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitCloseAnimationAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 138
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationTargets:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationTargetsDependOnSize:Ljava/util/List;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignAnimationTargets:Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    .line 145
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$interpolator;->somc_keyguard_peeking_open:I

    .line 144
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 147
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$interpolator;->somc_keyguard_peeking_close:I

    .line 146
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    .line 148
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 151
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->loadDimens()V

    .line 152
    iget v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMin:F

    iput v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFraction:F

    .line 137
    return-void
.end method

.method private cancelAllAnimatorWithoutNotify()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelPostedCloseAnimation()V

    .line 346
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelCurrentAnimator()V

    .line 344
    return-void
.end method

.method private cancelCurrentAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 446
    iput-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 443
    :cond_0
    return-void
.end method

.method private cancelPostedCloseAnimation()V
    .locals 2

    .prologue
    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseAnimationCancelled:Z

    .line 460
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method private createAnimator(FFILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 465
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 466
    .local v0, "animator":Landroid/animation/ValueAnimator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 467
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 468
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 469
    return-object v0
.end method

.method private notifyUnlockHintAnimationFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mUnlockHintFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mUnlockHintFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 300
    iput-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mUnlockHintFinishedRunnable:Ljava/lang/Runnable;

    .line 297
    :cond_0
    return-void
.end method

.method private postCloseAnimation()V
    .locals 4

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseAnimationCancelled:Z

    if-nez v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelPostedCloseAnimation()V

    .line 453
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseAnimationStartDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseAnimationCancelled:Z

    .line 450
    return-void
.end method

.method private updateAllLeftAlignAnimationTargets(F)V
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 403
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignAnimationTargets:Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    if-eqz v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignAnimationTargets:Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    invoke-virtual {v3}, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 407
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 408
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;

    invoke-direct {p0, p1, v3}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateLeftAlignAnimationTarget(FLcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;)V

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;>;"
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    return-void
.end method

.method private updateAllSlitAnimationTargets(F)V
    .locals 3
    .param p1, "f"    # F

    .prologue
    .line 379
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 380
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 381
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationTargets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateSlitAnimationTarget(FLandroid/view/View;)V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    return-void
.end method

.method private updateAllSlitAnimationTargetsDependOnSize(FZ)V
    .locals 3
    .param p1, "f"    # F
    .param p2, "force"    # Z

    .prologue
    .line 386
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mAnimateTargetsDependOnSizeEnabled:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_1

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationTargetsDependOnSize:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 388
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 389
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationTargetsDependOnSize:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateSlitAnimationTarget(FLandroid/view/View;)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method private updateFraction(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 350
    iput p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFraction:F

    .line 351
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateTranslateAnimationTargets(F)V

    .line 352
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateAllSlitAnimationTargets(F)V

    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateAllSlitAnimationTargetsDependOnSize(FZ)V

    .line 355
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignTargetsParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignTargetsParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 349
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateAllLeftAlignAnimationTargets(F)V

    goto :goto_0
.end method

.method private updateLeftAlignAnimationTarget(FLcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;)V
    .locals 13
    .param p1, "f"    # F
    .param p2, "entry"    # Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 416
    iget-object v8, p2, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 417
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 420
    iget-boolean v8, p2, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->isRoot:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignMargin:F

    iget v9, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignOffset:F

    add-float v1, v8, v9

    .line 421
    .local v1, "margin":F
    :goto_0
    iget-boolean v8, p2, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->isRoot:Z

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitWidth:F

    mul-float/2addr v8, p1

    div-float v5, v8, v12

    .line 422
    .local v5, "slitFactor":F
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v5

    .line 423
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    mul-float/2addr v9, v10

    div-float/2addr v9, v12

    .line 422
    add-float v0, v8, v9

    .line 425
    .local v0, "delta":F
    iget v8, p2, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->leftOffsetInPixel:I

    int-to-float v2, v8

    .line 427
    .local v2, "offset":F
    invoke-virtual {v7}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 428
    iget-object v3, p2, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->leftOffsetViewRefRTL:Ljava/lang/ref/WeakReference;

    .line 429
    .local v3, "offsetRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :goto_2
    if-eqz v3, :cond_0

    .line 430
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 431
    .local v4, "offsetView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 432
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    add-float/2addr v2, v8

    .line 436
    .end local v4    # "offsetView":Landroid/view/View;
    :cond_0
    sub-float v8, v1, v0

    add-float/2addr v8, v2

    mul-float/2addr v8, p1

    add-float v6, v8, v5

    .line 437
    .local v6, "transX":F
    iget-boolean v8, p2, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->onlyToLeft:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_2

    .line 438
    :cond_1
    invoke-virtual {v7, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 414
    .end local v0    # "delta":F
    .end local v1    # "margin":F
    .end local v2    # "offset":F
    .end local v3    # "offsetRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v5    # "slitFactor":F
    .end local v6    # "transX":F
    :cond_2
    return-void

    .line 420
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "margin":F
    goto :goto_0

    .line 421
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "slitFactor":F
    goto :goto_1

    .line 428
    .restart local v0    # "delta":F
    .restart local v2    # "offset":F
    :cond_5
    iget-object v3, p2, Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets$Entry;->leftOffsetViewRef:Ljava/lang/ref/WeakReference;

    .restart local v3    # "offsetRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    goto :goto_2
.end method

.method private updateLeftAlignOffset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 241
    iget v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mPanelLayoutWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 242
    iput-boolean v4, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mAnimateTargetsDependOnSizeEnabled:Z

    .line 243
    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignOffset:F

    .line 240
    :goto_0
    return-void

    .line 245
    :cond_0
    iput-boolean v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mAnimateTargetsDependOnSizeEnabled:Z

    .line 246
    iget v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mPanelWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mPanelLayoutWidth:I

    if-lez v0, :cond_1

    .line 247
    iget v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mPanelWidth:I

    iget v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mPanelLayoutWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignOffset:F

    .line 251
    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateAllSlitAnimationTargetsDependOnSize(FZ)V

    goto :goto_0

    .line 249
    :cond_1
    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignOffset:F

    goto :goto_1
.end method

.method private updateSlitAnimationTarget(FLandroid/view/View;)V
    .locals 2
    .param p1, "f"    # F
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 397
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 398
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitWidth:F

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 399
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 394
    return-void
.end method

.method private updateTranslateAnimationTargets(F)V
    .locals 3
    .param p1, "f"    # F

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mMotionController:Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitWidth:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;->setPeekingOffset(F)V

    .line 374
    return-void
.end method


# virtual methods
.method public addSlitAnimationTargetView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    return-void
.end method

.method public addSlitAnimationTargetViewDependOnSize(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitAnimationTargetsDependOnSize:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public cancelAllAnimator()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelPostedCloseAnimation()V

    .line 340
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelCurrentAnimator()V

    .line 341
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->notifyUnlockHintAnimationFinished()V

    .line 338
    return-void
.end method

.method public loadDimens()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 159
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/android/keyguard/R$dimen;->somc_keyguard_themed_animation_slit_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitWidth:F

    .line 162
    sget v2, Lcom/android/keyguard/R$dimen;->somc_keyguard_themed_animation_left_align_margin:I

    .line 161
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignMargin:F

    .line 165
    sget v2, Lcom/android/keyguard/R$integer;->somc_keyguard_slit_open_animation_duration:I

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mOpenAnimationDuration:I

    .line 167
    sget v2, Lcom/android/keyguard/R$integer;->somc_keyguard_slit_close_animation_duration:I

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseAnimationDuration:I

    .line 169
    sget v2, Lcom/android/keyguard/R$integer;->somc_keyguard_slit_close_animation_start_delay:I

    .line 168
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseAnimationStartDelay:I

    .line 171
    sget v2, Lcom/android/keyguard/R$integer;->somc_keyguard_slit_fallback_close_animation_duration:I

    .line 170
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFallbackCloseAnimationDuration:I

    .line 173
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 174
    .local v0, "outValue":Landroid/util/TypedValue;
    sget v2, Lcom/android/keyguard/R$dimen;->somc_keyguard_slit_fraction_min:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 175
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMin:F

    .line 176
    sget v2, Lcom/android/keyguard/R$dimen;->somc_keyguard_slit_fraction_max:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 177
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMax:F

    .line 158
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignTargetsParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignTargetsParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 370
    iget v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFraction:F

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateAllLeftAlignAnimationTargets(F)V

    .line 367
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelAllAnimator()V

    .line 332
    iget v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMin:F

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateFraction(F)V

    .line 330
    return-void
.end method

.method public setLeftAlignAnimationTargets(Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;)V
    .locals 0
    .param p1, "targets"    # Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignAnimationTargets:Lcom/sonymobile/keyguard/themedanimation/LeftAlignAnimationTargets;

    .line 207
    return-void
.end method

.method public setLeftAlignTargetsParent(Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mLeftAlignTargetsParent:Landroid/view/View;

    .line 216
    return-void
.end method

.method public setPanelLayoutParamWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mPanelLayoutWidth:I

    .line 237
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateLeftAlignOffset()V

    .line 235
    return-void
.end method

.method public setPanelWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mPanelWidth:I

    .line 227
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->updateLeftAlignOffset()V

    .line 225
    return-void
.end method

.method public startCloseAnimation()V
    .locals 5

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelAllAnimatorWithoutNotify()V

    .line 309
    iget v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFraction:F

    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMin:F

    .line 310
    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseAnimationDuration:I

    iget-object v4, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 309
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->createAnimator(FFILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 311
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitCloseAnimationAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonymobile/lockscreen/animation/AnimatorStartUtils;->startWithCustomizedDurationScale(Landroid/content/Context;Landroid/animation/Animator;)V

    .line 313
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 307
    return-void
.end method

.method public startFallbackCloseAnimation()V
    .locals 5

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelAllAnimator()V

    .line 321
    iget v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFraction:F

    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMin:F

    .line 322
    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFallbackCloseAnimationDuration:I

    iget-object v4, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 321
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->createAnimator(FFILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 323
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonymobile/lockscreen/animation/AnimatorStartUtils;->startWithCustomizedDurationScale(Landroid/content/Context;Landroid/animation/Animator;)V

    .line 324
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 319
    return-void
.end method

.method public startOpenAnimation()V
    .locals 5

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelAllAnimator()V

    .line 279
    iget v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMin:F

    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMax:F

    .line 280
    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mOpenAnimationDuration:I

    iget-object v4, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 279
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->createAnimator(FFILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 281
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitOpenAnimationAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 282
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonymobile/lockscreen/animation/AnimatorStartUtils;->startWithCustomizedDurationScale(Landroid/content/Context;Landroid/animation/Animator;)V

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseAnimationCancelled:Z

    .line 284
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 277
    return-void
.end method

.method public startOpenAnimationFromCurrentPos()V
    .locals 5

    .prologue
    .line 259
    iget-boolean v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mIsOpening:Z

    if-eqz v2, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->cancelAllAnimator()V

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "animator":Landroid/animation/Animator;
    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMax:F

    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFraction:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMax:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mOpenAnimationDuration:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 266
    .local v1, "openAnimationDuration":I
    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFraction:F

    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mFractionMax:F

    .line 267
    iget-object v4, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 266
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->createAnimator(FFILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 268
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mSlitOpenAnimationAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    iget-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sonymobile/lockscreen/animation/AnimatorStartUtils;->startWithCustomizedDurationScale(Landroid/content/Context;Landroid/animation/Animator;)V

    .line 270
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCloseAnimationCancelled:Z

    .line 271
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 258
    return-void
.end method

.method public startUnlockHintAnimation(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->startOpenAnimation()V

    .line 294
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/SlitAndLeftAlignAnimationController;->mUnlockHintFinishedRunnable:Ljava/lang/Runnable;

    .line 292
    return-void
.end method
