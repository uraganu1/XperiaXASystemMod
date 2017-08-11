.class public Lcom/android/contacts/common/list/PinnedHeaderListView;
.super Lcom/android/contacts/common/list/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;,
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mDrawPinnedHeader:Z

.field private mHeaderPaddingStart:I

.field private mHeaderTouched:Z

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mScrollToSectionOnHeaderTouch:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/contacts/common/list/PinnedHeaderListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PinnedHeaderListView;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 131
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/list/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mDrawPinnedHeader:Z

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 117
    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 120
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    .line 136
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 137
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 134
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "header"    # Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .param p3, "currentTime"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 572
    iget-boolean v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mDrawPinnedHeader:Z

    if-nez v5, :cond_0

    .line 573
    return-void

    .line 576
    :cond_0
    iget-boolean v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v5, :cond_1

    .line 577
    iget-wide v6, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v6, p3

    long-to-int v2, v6

    .line 578
    .local v2, "timeLeft":I
    if-gtz v2, :cond_4

    .line 580
    iget v0, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 581
    .local v0, "headerY":I
    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 582
    iget-boolean v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 583
    iput-boolean v9, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 585
    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-eq v0, v5, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->postInvalidate()V

    .line 594
    .end local v0    # "headerY":I
    .end local v2    # "timeLeft":I
    :cond_1
    :goto_0
    iget-boolean v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v5, :cond_3

    .line 595
    iget-object v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 596
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 597
    .local v1, "saveCount":I
    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 598
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v3, v5, v6

    .line 600
    .local v3, "translateX":I
    :goto_1
    int-to-float v5, v3

    iget v6, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 601
    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 602
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 603
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v6, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v7, 0x1f

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 605
    :cond_2
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 606
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 570
    .end local v1    # "saveCount":I
    .end local v3    # "translateX":I
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    return-void

    .line 590
    .restart local v2    # "timeLeft":I
    :cond_4
    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v6, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v7, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v6, v7

    mul-int/2addr v6, v2

    .line 591
    iget v7, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    .line 590
    div-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0

    .line 599
    .end local v2    # "timeLeft":I
    .restart local v1    # "saveCount":I
    .restart local v4    # "view":Landroid/view/View;
    :cond_5
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    .restart local v3    # "translateX":I
    goto :goto_1
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    .line 496
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 499
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    .line 500
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidate()V

    .line 501
    return-void

    .line 497
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_1
    return-void
.end method

.method private smoothScrollToPartition(I)Z
    .locals 6
    .param p1, "partition"    # I

    .prologue
    const/4 v5, 0x0

    .line 475
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-nez v4, :cond_0

    .line 476
    return v5

    .line 478
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v4, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    .line 479
    .local v3, "position":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 480
    return v5

    .line 483
    :cond_1
    const/4 v2, 0x0

    .line 484
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 485
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    .line 486
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_2

    .line 487
    iget v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    .line 484
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    .line 491
    const/16 v5, 0x64

    .line 490
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPositionFromTop(III)V

    .line 492
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 508
    iget-boolean v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    if-eqz v12, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 510
    .local v2, "currentTime":J
    :goto_0
    const/4 v11, 0x0

    .line 511
    .local v11, "top":I
    const/4 v10, 0x0

    .line 512
    .local v10, "right":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v0

    .line 513
    .local v0, "bottom":I
    const/4 v6, 0x0

    .line 514
    .local v6, "hasVisibleHeaders":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v12, :cond_4

    .line 515
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v12, v8

    .line 516
    .local v7, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v12, :cond_0

    .line 517
    const/4 v6, 0x1

    .line 518
    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v12, v0, :cond_2

    .line 519
    iget v0, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 514
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 508
    .end local v0    # "bottom":I
    .end local v2    # "currentTime":J
    .end local v6    # "hasVisibleHeaders":Z
    .end local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v8    # "i":I
    .end local v10    # "right":I
    .end local v11    # "top":I
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "currentTime":J
    goto :goto_0

    .line 520
    .restart local v0    # "bottom":I
    .restart local v6    # "hasVisibleHeaders":Z
    .restart local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .restart local v8    # "i":I
    .restart local v10    # "right":I
    .restart local v11    # "top":I
    :cond_2
    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v12, :cond_3

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 521
    :cond_3
    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v13, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v9, v12, v13

    .line 522
    .local v9, "newTop":I
    if-le v9, v11, :cond_0

    .line 523
    move v11, v9

    goto :goto_2

    .line 529
    .end local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v9    # "newTop":I
    :cond_4
    if-eqz v6, :cond_5

    .line 530
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 533
    :cond_5
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 535
    if-eqz v6, :cond_c

    .line 536
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 541
    iget v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-lez v12, :cond_6

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v12

    if-nez v12, :cond_6

    .line 542
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 543
    .local v1, "firstChild":Landroid/view/View;
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    const/4 v13, 0x0

    aget-object v4, v12, v13

    .line 545
    .local v4, "firstHeader":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    if-eqz v4, :cond_6

    .line 546
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 547
    .local v5, "firstHeaderTop":I
    :goto_3
    iget v12, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 552
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v4    # "firstHeader":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v5    # "firstHeaderTop":I
    :cond_6
    iget v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_a

    .line 553
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v12, v8

    .line 554
    .restart local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v12, :cond_7

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v12, :cond_8

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 555
    :cond_8
    invoke-direct {p0, p1, v7, v2, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_4

    .line 546
    .end local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v4    # "firstHeader":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "firstHeaderTop":I
    goto :goto_3

    .line 559
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v4    # "firstHeader":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v5    # "firstHeaderTop":I
    :cond_a
    const/4 v8, 0x0

    :goto_5
    iget v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v12, :cond_c

    .line 560
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v12, v8

    .line 561
    .restart local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v12, :cond_b

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 562
    invoke-direct {p0, p1, v7, v2, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    .line 559
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 567
    .end local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_c
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 507
    return-void
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 434
    iput-boolean v7, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 435
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 436
    return v8

    .line 439
    :cond_0
    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    if-nez v5, :cond_3

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 441
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 442
    .local v3, "x":I
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    .local v1, "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 443
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v5, v1

    .line 446
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v2

    .line 447
    .local v2, "padding":I
    iget-boolean v5, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v5, v4, :cond_1

    iget v5, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v6, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v5, v6

    if-le v5, v4, :cond_1

    .line 448
    if-lt v3, v2, :cond_1

    iget-object v5, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    if-lt v5, v3, :cond_1

    .line 449
    iput-boolean v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 450
    iget-boolean v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    if-eqz v5, :cond_2

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 452
    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result v5

    return v5

    .line 454
    :cond_2
    return v8

    .line 460
    .end local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v1    # "i":I
    .end local v2    # "padding":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    return v7
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v7

    .line 226
    .local v7, "height":I
    const/4 v11, 0x0

    .line 227
    .local v11, "windowTop":I
    move v10, v7

    .line 229
    .local v10, "windowBottom":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v6, v0, v8

    .line 231
    .local v6, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v0, :cond_0

    .line 232
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v0, :cond_1

    .line 233
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v11, v0, v1

    .line 229
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 234
    :cond_1
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    iget v10, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 241
    .end local v6    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 242
    .local v9, "selectedView":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 243
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v11, :cond_5

    .line 244
    invoke-virtual {p0, p3, v11}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    .line 250
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 223
    :cond_4
    return-void

    .line 245
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v10, :cond_3

    .line 246
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0, p3, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    .line 144
    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    .line 146
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/AutoScrollListView;->onLayout(ZIIII)V

    .line 141
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 174
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v3, :cond_4

    .line 175
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    .line 176
    .local v0, "count":I
    sget-object v3, Lcom/android/contacts/common/list/PinnedHeaderListView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "header count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-eq v0, v3, :cond_0

    .line 178
    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    .line 179
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    if-nez v3, :cond_2

    .line 180
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 188
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v2, v3, :cond_3

    .line 189
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 190
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    invoke-direct {v4, v6}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;)V

    aput-object v4, v3, v2

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 183
    .local v1, "headers":[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 184
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v7, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 195
    .end local v1    # "headers":[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .restart local v2    # "i":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 196
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    .line 197
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 199
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_5

    .line 200
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 173
    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 212
    iput p2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    .line 213
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 211
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 465
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 469
    :cond_0
    return v1

    .line 471
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 152
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 164
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 162
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 158
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 156
    return-void
.end method
