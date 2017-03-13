.class public Lcom/android/systemui/statusbar/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationContentView$1;,
        Lcom/android/systemui/statusbar/NotificationContentView$2;
    }
.end annotation


# instance fields
.field private mAnimate:Z

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipTopAmount:I

.field private mContentHeight:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

.field private mDark:Z

.field private final mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandedChild:Landroid/view/View;

.field private mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mHeadsUpChild:Landroid/view/View;

.field private final mHeadsUpHeight:I

.field private mHeadsUpWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

.field private mIsHeadsUp:Z

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private final mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private final mRoundRectClippingEnabled:Z

.field private final mRoundRectRadius:I

.field private mShowingLegacyBackground:Z

.field private final mSmallHeight:I

.field private mUnrestrictedContentHeight:I

.field private mVisibleType:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRoundRectRadius:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationContentView;I)V
    .locals 0
    .param p1, "visibleType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    .line 72
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    const v1, 0x7f0a0089

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRoundRectRadius:I

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    const v1, 0x7f0c0004

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRoundRectClippingEnabled:Z

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 90
    return-void
.end method

.method private calculateVisibleType()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 391
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 392
    .local v0, "noExpandedChild":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 393
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    if-eqz v0, :cond_2

    .line 394
    :cond_0
    const/4 v1, 0x2

    return v1

    .line 391
    .end local v0    # "noExpandedChild":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "noExpandedChild":Z
    goto :goto_0

    .line 396
    :cond_2
    return v3

    .line 399
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    if-le v1, v2, :cond_4

    if-eqz v0, :cond_5

    .line 400
    :cond_4
    const/4 v1, 0x0

    return v1

    .line 402
    :cond_5
    return v3
.end method

.method private getViewForVisibleType(I)Landroid/view/View;
    .locals 1
    .param p1, "visibleType"    # I

    .prologue
    .line 377
    packed-switch p1, :pswitch_data_0

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0

    .line 379
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0

    .line 381
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private needsRoundRectClipping()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 288
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRoundRectClippingEnabled:Z

    if-nez v3, :cond_0

    .line 289
    return v4

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->needsRoundRectClipping()Z

    move-result v0

    .line 294
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->needsRoundRectClipping()Z

    move-result v1

    .line 297
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 298
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 299
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->needsRoundRectClipping()Z

    move-result v2

    .line 300
    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    :goto_3
    return v2

    .line 291
    :cond_1
    const/4 v0, 0x0

    .local v0, "needsForContracted":Z
    goto :goto_0

    .line 294
    .end local v0    # "needsForContracted":Z
    :cond_2
    const/4 v1, 0x0

    .local v1, "needsForExpanded":Z
    goto :goto_1

    .line 297
    .end local v1    # "needsForExpanded":Z
    :cond_3
    const/4 v2, 0x0

    .local v2, "needsForHeadsUp":Z
    goto :goto_2

    .line 300
    .end local v2    # "needsForHeadsUp":Z
    :cond_4
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private runSwitchAnimation(I)V
    .locals 8
    .param p1, "visibleType"    # I

    .prologue
    const-wide/16 v6, 0xaa

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 347
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, "shownView":Landroid/view/View;
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, "hiddenView":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 352
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 353
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 355
    const/4 v3, 0x0

    .line 354
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 357
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 354
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 359
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 360
    const/high16 v3, 0x3f800000    # 1.0f

    .line 359
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 359
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 363
    new-instance v3, Lcom/android/systemui/statusbar/NotificationContentView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/NotificationContentView$3;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    .line 359
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 346
    return-void
.end method

.method private selectLayout(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 313
    .local v0, "visibleType":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_3

    .line 314
    :cond_1
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 317
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->runSwitchAnimation(I)V

    .line 321
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 308
    :cond_3
    return-void

    .line 315
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v1, :cond_2

    .line 316
    :cond_5
    if-eqz v0, :cond_2

    .line 319
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    goto :goto_0
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 240
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    goto :goto_0
.end method

.method private updateClipping()V
    .locals 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 303
    return-void
.end method

.method private updateRoundRectClipping()V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->needsRoundRectClipping()Z

    move-result v0

    .line 284
    .local v0, "enabled":Z
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipToOutline(Z)V

    .line 282
    return-void
.end method

.method private updateViewVisibilities(I)V
    .locals 10
    .param p1, "visibleType"    # I

    .prologue
    const/4 v5, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 326
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 327
    .local v0, "contractedVisible":Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_5

    move v3, v6

    :goto_2
    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    .line 329
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v3, v4, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 330
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 331
    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    const/4 v1, 0x1

    .line 332
    .local v1, "expandedVisible":Z
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_7

    move v3, v4

    :goto_4
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_8

    move v3, v6

    :goto_5
    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    .line 334
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3, v4, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 336
    .end local v1    # "expandedVisible":Z
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 337
    const/4 v3, 0x2

    if-ne p1, v3, :cond_9

    const/4 v2, 0x1

    .line 338
    .local v2, "headsUpVisible":Z
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v2, :cond_1

    move v5, v4

    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v2, :cond_a

    :goto_7
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 340
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3, v4, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 342
    .end local v2    # "headsUpVisible":Z
    :cond_2
    invoke-virtual {p0, v4, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 325
    return-void

    .line 326
    .end local v0    # "contractedVisible":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "contractedVisible":Z
    goto :goto_0

    :cond_4
    move v3, v5

    .line 327
    goto :goto_1

    :cond_5
    move v3, v7

    .line 328
    goto :goto_2

    .line 331
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "expandedVisible":Z
    goto :goto_3

    :cond_7
    move v3, v5

    .line 332
    goto :goto_4

    :cond_8
    move v3, v7

    .line 333
    goto :goto_5

    .line 337
    .end local v1    # "expandedVisible":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "headsUpVisible":Z
    goto :goto_6

    :cond_a
    move v6, v7

    .line 339
    goto :goto_7
.end method

.method private updateVisibility()V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisible(Z)V

    .line 236
    return-void
.end method


# virtual methods
.method public getContentHeight()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    return v0
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 270
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyContentUpdated()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 408
    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->notifyContentUpdated()V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->notifyContentUpdated()V

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 407
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 156
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 150
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 149
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 105
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 106
    .local v1, "heightMode":I
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v1, v10, :cond_7

    const/4 v0, 0x1

    .line 107
    .local v0, "hasFixedHeight":Z
    :goto_0
    const/high16 v10, -0x80000000

    if-ne v1, v10, :cond_8

    const/4 v2, 0x1

    .line 108
    .local v2, "isHeightLimited":Z
    :goto_1
    const v5, 0x7fffffff

    .line 109
    .local v5, "maxSize":I
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 112
    :cond_1
    const/4 v4, 0x0

    .line 113
    .local v4, "maxChildHeight":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v10, :cond_2

    .line 114
    iget v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 115
    .local v7, "size":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 116
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 115
    invoke-virtual {v10, p1, v11}, Landroid/view/View;->measure(II)V

    .line 117
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 119
    .end local v7    # "size":I
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v10, :cond_4

    .line 120
    move v7, v5

    .line 121
    .restart local v7    # "size":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 122
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v10, :cond_3

    .line 124
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 126
    :cond_3
    const v10, 0x7fffffff

    if-ne v7, v10, :cond_9

    .line 127
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 129
    .local v8, "spec":I
    :goto_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v10, p1, v8}, Landroid/view/View;->measure(II)V

    .line 130
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 132
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "size":I
    .end local v8    # "spec":I
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v10, :cond_6

    .line 133
    iget v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 134
    .restart local v7    # "size":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 135
    .restart local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v10, :cond_5

    .line 137
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 139
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 140
    const/high16 v11, -0x80000000

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 139
    invoke-virtual {v10, p1, v11}, Landroid/view/View;->measure(II)V

    .line 141
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 143
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "size":I
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 144
    .local v6, "ownHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 145
    .local v9, "width":I
    invoke-virtual {p0, v9, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setMeasuredDimension(II)V

    .line 104
    return-void

    .line 106
    .end local v0    # "hasFixedHeight":Z
    .end local v2    # "isHeightLimited":Z
    .end local v4    # "maxChildHeight":I
    .end local v5    # "maxSize":I
    .end local v6    # "ownHeight":I
    .end local v9    # "width":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "hasFixedHeight":Z
    goto/16 :goto_0

    .line 107
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "isHeightLimited":Z
    goto/16 :goto_1

    .line 128
    .restart local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "maxChildHeight":I
    .restart local v5    # "maxSize":I
    .restart local v7    # "size":I
    :cond_9
    const/high16 v10, -0x80000000

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "spec":I
    goto :goto_2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 231
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "resetActualHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeAllViews()V

    .line 172
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 173
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 174
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 176
    if-eqz p1, :cond_3

    .line 177
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 161
    :cond_3
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 277
    return-void
.end method

.method public setContentHeight(I)V
    .locals 2
    .param p1, "contentHeight"    # I

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 255
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 252
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 198
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 193
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    const/4 v0, 0x0

    .line 424
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 425
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowingLegacyBackground:Z

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    .line 423
    return-void

    .line 426
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    .line 214
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 206
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2
    .param p1, "headsUp"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    .line 431
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 429
    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 218
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 443
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowingLegacyBackground:Z

    .line 442
    return-void
.end method
