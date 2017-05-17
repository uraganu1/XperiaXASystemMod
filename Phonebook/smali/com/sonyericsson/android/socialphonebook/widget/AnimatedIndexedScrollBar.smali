.class public abstract Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;
.super Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;
.source "AnimatedIndexedScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;,
        Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;
    }
.end annotation


# static fields
.field private static final BUMP_ANIMATION_DAMPING:F = 0.5f

.field private static final BUMP_ANIMATION_STIFFNESS:I = 0x578

.field private static final BUMP_DOWN:I = 0x0

.field private static final BUMP_POSITION_TOLERANCE:F = 0.01f

.field private static final BUMP_RUBBERBAND_EDGE:F = 0.33f

.field private static final BUMP_RUBBERBAND_FACTOR:F = 0.4f

.field private static final BUMP_THRESHOLD:F = 1.02f

.field private static final BUMP_UP:I = 0x1

.field private static final BUMP_VELOCITY_TOLERANCE:F = 0.1f

.field private static final TIME_BETWEEN_FRAMES:I = 0x10

.field private static final VISIBLE_SECIONS_OFFSET:F = 0.4f

.field private static final VISIBLE_SECTIONS_INCREMENT:F = 0.1f

.field private static final VISIBLE_SECTIONS_PADDING:F = 0.1f


# instance fields
.field private bumpWidthHeightFactor:F

.field private mBumpAnimator:Ljava/lang/Runnable;

.field private mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

.field private mBumpMaxOffset:F

.field private mBumpMaxXHeight:F

.field private mBumpMaxYWidth:F

.field private mBumpMinXHeight:F

.field private mBumpMinYWidth:F

.field private mIsSectionAnimationRunning:Z

.field private mLeftAligned:Z

.field private mMaxScale:F

.field private mSectionAnimator:Ljava/lang/Runnable;

.field private mTouchXPos:F

.field private mTouchYPos:F

.field private mTouchableWidth:F

.field private mVisibleSectionsColor:I

.field private mVisibleSectionsIndication:Landroid/graphics/Path;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)Lcom/sonyericsson/movablepanes/util/SpringDynamics;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mIsSectionAnimationRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->updateVisibleSelectionsIndication()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mVisibleSectionsIndication:Landroid/graphics/Path;

    .line 107
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->bumpWidthHeightFactor:F

    .line 125
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;-><init>(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpAnimator:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;-><init>(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSectionAnimator:Ljava/lang/Runnable;

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mVisibleSectionsIndication:Landroid/graphics/Path;

    .line 107
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->bumpWidthHeightFactor:F

    .line 125
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;-><init>(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpAnimator:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;-><init>(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSectionAnimator:Ljava/lang/Runnable;

    .line 166
    return-void
.end method

.method private animateBumpTo(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->setMaxPosition(F)V

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->setMinPosition(F)V

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->getVelocity()F

    move-result v2

    .line 474
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 473
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->setState(FFJ)V

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method private drawAlphabetAnimation(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v13, 0x3f828f5c    # 1.02f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 509
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mUsedTextSize:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 510
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;

    .line 512
    .local v8, "sect":Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;
    const/4 v3, 0x0

    .line 513
    .local v3, "inBump":Z
    invoke-interface {v8}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;->getLabelCountInTransition()I

    move-result v4

    .line 514
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 515
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 518
    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mYOffset:F

    invoke-interface {v8, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;->getPositionInTransition(I)F

    move-result v10

    add-float v1, v9, v10

    .line 519
    .local v1, "bumpAbsY":F
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getBumpAbsX(F)F

    move-result v0

    .line 520
    .local v0, "bumpAbsX":F
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getOffset(F)F

    move-result v9

    add-float/2addr v1, v9

    .line 523
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getScale(F)F

    move-result v7

    .line 525
    .local v7, "scale":F
    if-nez v3, :cond_2

    cmpl-float v9, v7, v13

    if-lez v9, :cond_2

    .line 527
    const/4 v3, 0x1

    .line 529
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mUsedTextSize:F

    iget v11, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mMaxScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 537
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 540
    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mMaxScale:F

    sub-float v10, v7, v12

    sub-float/2addr v9, v10

    div-float v7, v12, v9

    .line 541
    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mCharXOffset:F

    iget-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    if-eqz v9, :cond_3

    move v9, v0

    :goto_2
    add-float v5, v10, v9

    .line 542
    .local v5, "px":F
    move v6, v1

    .line 543
    .local v6, "py":F
    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 546
    .end local v5    # "px":F
    .end local v6    # "py":F
    :cond_1
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v1, v9

    .line 547
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v8, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;->getTextScaleXsInTransition(I)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 548
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTextColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    iget-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    if-eqz v9, :cond_4

    .line 550
    invoke-interface {v8, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;->getLabelInTransition(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mCharXOffset:F

    add-float/2addr v10, v0

    .line 551
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    .line 550
    invoke-virtual {p1, v9, v10, v1, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 556
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    :cond_2
    if-eqz v3, :cond_0

    cmpg-float v9, v7, v13

    if-gez v9, :cond_0

    .line 532
    const/4 v3, 0x0

    .line 534
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mUsedTextSize:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 541
    :cond_3
    neg-float v9, v0

    goto :goto_2

    .line 553
    :cond_4
    invoke-interface {v8, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;->getLabelInTransition(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mCharXOffset:F

    sub-float/2addr v10, v0

    .line 554
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    .line 553
    invoke-virtual {p1, v9, v10, v1, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 561
    .end local v0    # "bumpAbsX":F
    .end local v1    # "bumpAbsY":F
    .end local v7    # "scale":F
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mUsedTextSize:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 507
    return-void
.end method

.method private getBumpAbsX(F)F
    .locals 5
    .param p1, "bumpAbsY"    # F

    .prologue
    .line 414
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchYPos:F

    sub-float v2, v3, p1

    .line 416
    .local v2, "deltaY":F
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMaxYWidth:F

    div-float v1, v2, v3

    .line 418
    .local v1, "bumpRelY":F
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getBumpRelX(F)F

    move-result v0

    .line 420
    .local v0, "bumpRelX":F
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMaxXHeight:F

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v4

    mul-float/2addr v3, v4

    return v3
.end method

.method private getBumpRelX(F)F
    .locals 6
    .param p1, "bumpY"    # F

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "bumpRelX":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 451
    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    neg-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 453
    :cond_0
    return v0
.end method

.method private getCurrentSection(F)I
    .locals 4
    .param p1, "yPos"    # F

    .prologue
    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "currentPosition":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, p1, v3

    .line 482
    .local v2, "y":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 483
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBoxHeight:F

    div-float v3, v2, v3

    float-to-int v1, v3

    .line 484
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionCount()I

    move-result v0

    .line 485
    .local v0, "count":I
    if-lt v1, v0, :cond_0

    .line 486
    add-int/lit8 v1, v0, -0x1

    .line 489
    .end local v0    # "count":I
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getSectionFromPosition(I)I

    move-result v3

    return v3
.end method

.method private getMaxXHeight(F)F
    .locals 5
    .param p1, "xPos"    # F

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 458
    .local v2, "width":F
    const v3, 0x3ea8f5c3    # 0.33f

    mul-float v1, v2, v3

    .line 461
    .local v1, "rubberbandEdge":F
    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    move p1, v2

    .line 463
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    if-eqz v3, :cond_3

    .end local p1    # "xPos":F
    :goto_1
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMinXHeight:F

    add-float v0, p1, v3

    .line 464
    .local v0, "maxXHeight":F
    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    .line 465
    sub-float v3, v0, v1

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    add-float v0, v1, v3

    .line 467
    :cond_1
    return v0

    .line 461
    .end local v0    # "maxXHeight":F
    .restart local p1    # "xPos":F
    :cond_2
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 463
    :cond_3
    sub-float p1, v2, p1

    goto :goto_1
.end method

.method private getOffset(F)F
    .locals 14
    .param p1, "bumpAbsY"    # F

    .prologue
    const v13, 0x3e99999a    # 0.3f

    const/high16 v12, 0x3f800000    # 1.0f

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 425
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchYPos:F

    sub-float v1, v5, p1

    .line 427
    .local v1, "deltaY":F
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMaxYWidth:F

    div-float v0, v1, v5

    .line 429
    .local v0, "bumpY":F
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 431
    .local v4, "sign":F
    const/4 v3, 0x0

    .line 432
    .local v3, "offset":F
    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, v5, v0

    if-gez v5, :cond_0

    cmpg-float v5, v0, v12

    if-gez v5, :cond_0

    .line 433
    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    neg-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-float v3, v6

    .line 436
    :cond_0
    const v2, 0x3e99999a    # 0.3f

    .line 437
    .local v2, "limit":F
    neg-float v5, v2

    cmpg-float v5, v5, v0

    if-gez v5, :cond_1

    cmpg-float v5, v0, v13

    if-gez v5, :cond_1

    .line 438
    mul-float v5, v4, v13

    div-float/2addr v0, v5

    .line 439
    sub-float v0, v12, v0

    .line 440
    float-to-double v6, v0

    mul-double/2addr v6, v10

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    sub-float/2addr v5, v12

    add-float/2addr v3, v5

    .line 443
    :cond_1
    neg-float v5, v4

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMaxOffset:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    invoke-virtual {v6}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v6

    mul-float v3, v5, v6

    .line 444
    return v3
.end method

.method private getScale(F)F
    .locals 6
    .param p1, "bumpAbsY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 494
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchYPos:F

    sub-float v1, v3, p1

    .line 496
    .local v1, "deltaY":F
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMaxYWidth:F

    div-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v0, v5, v3

    .line 498
    .local v0, "bumpRelY":F
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mMaxScale:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    invoke-virtual {v4}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v4

    mul-float/2addr v3, v4

    add-float v2, v5, v3

    .line 499
    .local v2, "scale":F
    return v2
.end method

.method private updateVisibleSelectionsIndication()V
    .locals 8

    .prologue
    .line 389
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mUsedTextSize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 391
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mVisibleSectionsIndication:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 392
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightFromIndex:I

    int-to-float v2, v5

    .local v2, "i":F
    :goto_0
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightFromIndex:I

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightCount:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_2

    .line 396
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mYOffset:F

    const v6, 0x3ecccccd    # 0.4f

    sub-float v6, v2, v6

    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBoxHeight:F

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    .line 397
    .local v1, "absY":F
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getBumpAbsX(F)F

    move-result v0

    .line 398
    .local v0, "absX":F
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getOffset(F)F

    move-result v5

    add-float/2addr v1, v5

    .line 401
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mCharXOffset:F

    iget-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    if-eqz v6, :cond_0

    .end local v0    # "absX":F
    :goto_1
    add-float v3, v5, v0

    .line 402
    .local v3, "px":F
    move v4, v1

    .line 404
    .local v4, "py":F
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mVisibleSectionsIndication:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 405
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mVisibleSectionsIndication:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 393
    :goto_2
    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v5

    goto :goto_0

    .line 401
    .end local v3    # "px":F
    .end local v4    # "py":F
    .restart local v0    # "absX":F
    :cond_0
    neg-float v0, v0

    goto :goto_1

    .line 407
    .end local v0    # "absX":F
    .restart local v3    # "px":F
    .restart local v4    # "py":F
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mVisibleSectionsIndication:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 388
    .end local v1    # "absY":F
    .end local v3    # "px":F
    .end local v4    # "py":F
    :cond_2
    return-void
.end method


# virtual methods
.method protected applyAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/R$styleable;->IndexedScrollBar:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 346
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    .line 347
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 351
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 350
    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v1, 0x1

    .line 352
    .local v1, "shouldMirror":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 353
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    if-eqz v4, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    .line 355
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->applyAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 344
    return-void

    .line 350
    .end local v1    # "shouldMirror":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "shouldMirror":Z
    goto :goto_0

    :cond_2
    move v2, v3

    .line 353
    goto :goto_1
.end method

.method public drawScrollBar(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v11, 0x3f828f5c    # 1.02f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 252
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mIsSectionAnimationRunning:Z

    if-eqz v7, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->drawAlphabetAnimation(Landroid/graphics/Canvas;)V

    .line 254
    return-void

    .line 267
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mUsedTextSize:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, "inBump":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mDrawSectionCnt:I

    if-ge v2, v7, :cond_7

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 274
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mYOffset:F

    int-to-float v8, v2

    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBoxHeight:F

    mul-float/2addr v8, v9

    add-float v1, v7, v8

    .line 275
    .local v1, "bumpAbsY":F
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getBumpAbsX(F)F

    move-result v0

    .line 276
    .local v0, "bumpAbsX":F
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getOffset(F)F

    move-result v7

    add-float/2addr v1, v7

    .line 279
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getScale(F)F

    move-result v6

    .line 281
    .local v6, "scale":F
    if-nez v3, :cond_3

    cmpl-float v7, v6, v11

    if-lez v7, :cond_3

    .line 283
    const/4 v3, 0x1

    .line 285
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mUsedTextSize:F

    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mMaxScale:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 294
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 297
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mMaxScale:F

    sub-float v8, v6, v10

    sub-float/2addr v7, v8

    div-float v6, v10, v7

    .line 298
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mCharXOffset:F

    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    if-eqz v7, :cond_4

    move v7, v0

    :goto_2
    add-float v4, v8, v7

    .line 299
    .local v4, "px":F
    move v5, v1

    .line 300
    .local v5, "py":F
    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 303
    .end local v4    # "px":F
    .end local v5    # "py":F
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v1, v7

    .line 304
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v8, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionTextScaleXs(I)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 305
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightFromIndex:I

    if-gt v7, v2, :cond_5

    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightFromIndex:I

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightCount:I

    add-int/2addr v7, v8

    if-ge v2, v7, :cond_5

    .line 306
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTextColorHighlight:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    :goto_3
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    if-eqz v7, :cond_6

    .line 311
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v7, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionLabel(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mCharXOffset:F

    add-float/2addr v8, v0

    .line 312
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    .line 311
    invoke-virtual {p1, v7, v8, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 317
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 286
    :cond_3
    if-eqz v3, :cond_1

    cmpg-float v7, v6, v11

    if-gez v7, :cond_1

    .line 289
    const/4 v3, 0x0

    .line 291
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mUsedTextSize:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 298
    :cond_4
    neg-float v7, v0

    goto :goto_2

    .line 308
    :cond_5
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 314
    :cond_6
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v7, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionLabel(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mCharXOffset:F

    sub-float/2addr v8, v0

    .line 315
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    .line 314
    invoke-virtual {p1, v7, v8, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 322
    .end local v0    # "bumpAbsX":F
    .end local v1    # "bumpAbsY":F
    .end local v6    # "scale":F
    :cond_7
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mUsedTextSize:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    return-void
.end method

.method protected drawVisibleSectionsIndication(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 360
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const v3, 0x3f99999a    # 1.2f

    mul-float v1, v2, v3

    .line 361
    .local v1, "visibleSectionWidth":F
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->getPosition()F

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 363
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mVisibleSectionsColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    sub-float v3, v4, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 365
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 366
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 367
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 368
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 369
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mVisibleSectionsIndication:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 372
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 359
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 328
    .local v0, "rs":Landroid/content/res/Resources;
    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMinXHeight:F

    .line 329
    const v1, 0x7f0d0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMinYWidth:F

    .line 330
    const v1, 0x7f0d006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchableWidth:F

    .line 331
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mMaxScale:F

    .line 332
    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mVisibleSectionsColor:I

    .line 333
    const v1, 0x7f0d006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMaxOffset:F

    .line 334
    new-instance v1, Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpFactor:Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    const/high16 v2, 0x44af0000    # 1400.0f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->setSpring(FF)V

    .line 337
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    .line 338
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 339
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 340
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->init(Landroid/content/Context;)V

    .line 326
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar;->onSizeChanged(IIII)V

    .line 379
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mCharXOffset:F

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->updateVisibleSelectionsIndication()V

    .line 376
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBoxWidth:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getLongestLabelTextWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mCharXOffset:F

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchYPos:F

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchXPos:F

    .line 218
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchXPos:F

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getMaxXHeight(F)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMaxXHeight:F

    .line 219
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMinYWidth:F

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->bumpWidthHeightFactor:F

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMaxXHeight:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBumpMaxYWidth:F

    .line 221
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->updateVisibleSelectionsIndication()V

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    .line 224
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchXPos:F

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchableWidth:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    if-eqz v1, :cond_1

    .line 225
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchXPos:F

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchableWidth:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mLeftAligned:Z

    .line 224
    if-eqz v1, :cond_4

    .line 226
    :cond_1
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->animateBumpTo(I)V

    .line 237
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBarTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;

    if-eqz v1, :cond_3

    if-ne p1, p0, :cond_3

    .line 238
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mIsSectionAnimationRunning:Z

    if-nez v1, :cond_3

    .line 239
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mTouchYPos:F

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->getCurrentSection(F)I

    move-result v0

    .line 240
    .local v0, "currentSection":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mBarTouchListener:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;

    invoke-interface {v1, p1, v0, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBar$OnIndexedScrollBarTouchListener;->onTouch(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    .line 244
    .end local v0    # "currentSection":I
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->invalidate()V

    .line 246
    return v5

    .line 230
    :cond_4
    return v4

    .line 232
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_6

    .line 233
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 234
    :cond_6
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->animateBumpTo(I)V

    goto :goto_0
.end method

.method public final setHighlight([II)V
    .locals 12
    .param p1, "sectionIndexes"    # [I
    .param p2, "count"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 172
    const-wide/16 v0, 0x0

    .line 173
    .local v0, "highlightBits":J
    const/4 v2, 0x0

    .line 174
    .local v2, "highlightFromIndex":I
    const/4 v3, -0x1

    .line 175
    .local v3, "highlightToIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 176
    aget v5, p1, v4

    .line 177
    .local v5, "index":I
    if-ltz v5, :cond_0

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSectionCnt:I

    if-ge v5, v6, :cond_0

    .line 178
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    or-long/2addr v0, v6

    .line 179
    if-ne v3, v10, :cond_1

    .line 180
    move v2, v5

    .line 181
    move v3, v5

    .line 175
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_1
    if-ge v5, v2, :cond_2

    .line 183
    move v2, v5

    goto :goto_1

    .line 184
    :cond_2
    if-le v5, v3, :cond_0

    .line 185
    move v3, v5

    goto :goto_1

    .line 189
    .end local v5    # "index":I
    :cond_3
    if-eq v3, v10, :cond_4

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v6, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->changeIfNecessary(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 190
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPrevWidth:I

    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mPrevHeight:I

    invoke-virtual {p0, v6, v7, v11, v11}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->onSizeChanged(IIII)V

    .line 191
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->stateChangePostProcessing()V

    .line 192
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    instance-of v6, v6, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;

    if-eqz v6, :cond_4

    .line 193
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSectionAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 194
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSectionAnimator:Ljava/lang/Runnable;

    const-wide/16 v8, 0x10

    invoke-virtual {p0, v6, v8, v9}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 195
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mIsSectionAnimationRunning:Z

    .line 198
    :cond_4
    iget-wide v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightBits:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_5

    .line 199
    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightBits:J

    .line 200
    if-eq v3, v10, :cond_6

    .line 201
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v6, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionFromSection(I)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightFromIndex:I

    .line 202
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    invoke-virtual {v6, v3}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;->getPositionFromSection(I)I

    move-result v6

    .line 203
    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightFromIndex:I

    .line 202
    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightCount:I

    .line 208
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->updateVisibleSelectionsIndication()V

    .line 209
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->invalidate()V

    .line 171
    :cond_5
    return-void

    .line 205
    :cond_6
    iput v11, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightFromIndex:I

    .line 206
    iput v10, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mHighlightCount:I

    goto :goto_2
.end method
