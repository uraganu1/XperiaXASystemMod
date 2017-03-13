.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownLength:I

.field private mCollapseSecondCardPadding:I

.field private mCollapsedSize:I

.field private mExpandedOnStart:Z

.field private mFirstChildMaxHeight:I

.field private mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mIsSmallScreen:Z

.field private mMaxNotificationHeight:I

.field private mNotificationsTopPadding:I

.field private mPaddingBetweenElements:I

.field private mPaddingBetweenElementsDimmed:I

.field private mPaddingBetweenElementsNormal:I

.field private mRoundedRectCornerRadius:I

.field private mScaleDimmed:Z

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

.field private mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mTopStackPeekSize:I

.field private mTopStackSlowDownLength:I

.field private mTopStackTotalSize:I

.field private mZBasicHeight:I

.field private mZBasicHeightDimmed:I

.field private mZBasicHeightNormal:I

.field private mZDistanceBetweenElements:I

.field private mZTranslationFactor:F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/View;Lcom/android/systemui/statusbar/stack/AmbientState;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AmbientState;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePadding(Z)V

    .line 79
    return-void
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 270
    const v2, 0x7f100184

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 3
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p2, "childHeight"    # I
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 586
    iget v0, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 587
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    int-to-float v1, v1

    .line 586
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 585
    return-void
.end method

.method private clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackViewState;I)V
    .locals 2
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p2, "childHeight"    # I

    .prologue
    .line 600
    iget v0, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 601
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    .line 600
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 599
    return-void
.end method

.method private clampYTranslation(Lcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 0
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p2, "childHeight"    # I
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 573
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackViewState;I)V

    .line 572
    return-void
.end method

.method private findFirstVisibleChild(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 921
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 922
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 923
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 924
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 925
    return-object v0

    .line 922
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private findNumberOfItemsInTopStackAndUpdateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 12
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 731
    const/4 v8, 0x0

    .line 732
    .local v8, "yPositionInScrollView":F
    iget-object v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 735
    .local v2, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_5

    .line 736
    iget-object v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 737
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v4

    .line 738
    .local v4, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-direct {p0, v1, p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AmbientState;)I

    move-result v3

    .line 740
    .local v3, "childHeight":I
    int-to-float v10, v3

    .line 739
    add-float/2addr v10, v8

    .line 741
    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v11, v11

    .line 739
    add-float v9, v10, v11

    .line 742
    .local v9, "yPositionInScrollViewAfterElement":F
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v10, v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_6

    .line 743
    if-nez v5, :cond_2

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    if-gt v10, v11, :cond_2

    .line 746
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v10, v11

    .line 747
    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    .line 746
    sub-int v0, v10, v11

    .line 749
    .local v0, "bottomPeekStart":I
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne v1, v10, :cond_0

    .line 750
    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    .line 749
    .end local v3    # "childHeight":I
    :cond_0
    int-to-float v6, v3

    .line 752
    .local v6, "maxHeight":F
    int-to-float v10, v0

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 753
    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v11, v11

    .line 752
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 754
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 792
    .end local v0    # "bottomPeekStart":I
    .end local v6    # "maxHeight":F
    :cond_1
    :goto_1
    move v8, v9

    .line 735
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 756
    .restart local v3    # "childHeight":I
    :cond_2
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_3

    .line 758
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 759
    if-nez v5, :cond_1

    .line 760
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    iput v10, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    goto :goto_1

    .line 766
    :cond_3
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v10, v10

    sub-float/2addr v10, v8

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    .line 768
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    .line 769
    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 768
    add-int/2addr v11, v3

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    .line 772
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    .line 773
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    add-float/2addr v10, v11

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 775
    if-nez v5, :cond_4

    .line 778
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v10, v10

    .line 777
    sub-float v10, v9, v10

    .line 779
    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v11, v11

    .line 777
    sub-float/2addr v10, v11

    .line 779
    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v11, v11

    .line 777
    add-float v7, v10, v11

    .line 780
    .local v7, "newSize":F
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v10, v10

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 781
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 782
    float-to-int v10, v7

    iput v10, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 784
    .end local v7    # "newSize":F
    :cond_4
    iput v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    .line 728
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "childHeight":I
    .end local v4    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v9    # "yPositionInScrollViewAfterElement":F
    :cond_5
    :goto_2
    return-void

    .line 788
    .restart local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v3    # "childHeight":I
    .restart local v4    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .restart local v9    # "yPositionInScrollViewAfterElement":F
    :cond_6
    add-int/lit8 v10, v5, -0x1

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    goto :goto_2
.end method

.method private getMaxAllowedChildHeight(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AmbientState;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 605
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 606
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 607
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez p2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v3

    if-nez v3, :cond_1

    .line 608
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 609
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v4

    sub-int v1, v3, v4

    .line 610
    .local v1, "extraSize":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    add-int/2addr v3, v1

    return v3

    .line 612
    .end local v1    # "extraSize":I
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    return v3

    .line 613
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 614
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 615
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    return v3

    .line 617
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_4
    if-nez p1, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    :goto_0
    return v3

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_0
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 5
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 190
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 192
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 193
    .local v3, "v":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 194
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 195
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 191
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    return-void
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 8
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v3

    .line 331
    .local v3, "draggedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "draggedView$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 332
    .local v1, "draggedView":Landroid/view/View;
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 333
    .local v0, "childIndex":I
    if-ltz v0, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 334
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 335
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    .line 341
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 347
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    .line 349
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    goto :goto_0

    .line 329
    .end local v0    # "childIndex":I
    .end local v1    # "draggedView":Landroid/view/View;
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_2
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    const v2, 0x7f0a0073

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsDimmed:I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    const v2, 0x7f0a0074

    .line 112
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsNormal:I

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    const v2, 0x7f0a007b

    .line 114
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mNotificationsTopPadding:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    const v2, 0x7f0a001b

    .line 116
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    const v2, 0x7f0a001c

    .line 118
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mMaxNotificationHeight:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    const v2, 0x7f0a006c

    .line 120
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    const v2, 0x7f0a006d

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    const v2, 0x7f0a0072

    .line 124
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    .line 126
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeightNormal:I

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    const v2, 0x7f0a0105

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeightDimmed:I

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    const v2, 0x7f0a006f

    .line 129
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    const v2, 0x7f0a0070

    .line 131
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackSlowDownLength:I

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    const v2, 0x7f0a0089

    .line 133
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mRoundedRectCornerRadius:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    const v2, 0x7f0a0076

    .line 135
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 138
    const/16 v2, 0x1e0

    .line 137
    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    const v2, 0x7f0f0005

    .line 139
    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZTranslationFactor:F

    .line 109
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaxSizeInitialized(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 4
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 913
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 914
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 915
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMaxExpandHeightInitialized()Z

    move-result v1

    return v1

    .line 917
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private updateChildClippingAndBackground(Lcom/android/systemui/statusbar/stack/StackViewState;FFF)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p2, "realHeight"    # F
    .param p3, "clipHeight"    # F
    .param p4, "backgroundHeight"    # F

    .prologue
    const/4 v2, 0x0

    .line 285
    cmpl-float v0, p2, p3

    if-lez v0, :cond_0

    .line 287
    sub-float v0, p2, p3

    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->scale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    .line 291
    :goto_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    .line 293
    sub-float v0, p2, p4

    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->scale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 284
    :goto_1
    return-void

    .line 289
    :cond_0
    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    goto :goto_0

    .line 295
    :cond_1
    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    goto :goto_1
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 18
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 215
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDismissAllInProgress()Z

    move-result v5

    .line 216
    .local v5, "dismissAllInProgress":Z
    const/4 v10, 0x0

    .line 217
    .local v10, "previousNotificationEnd":F
    const/4 v12, 0x0

    .line 218
    .local v12, "previousNotificationStart":F
    const/4 v11, 0x0

    .line 219
    .local v11, "previousNotificationIsSwiped":Z
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 220
    .local v2, "childCount":I
    const/4 v6, 0x0

    .end local v11    # "previousNotificationIsSwiped":Z
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_6

    .line 221
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 222
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v13

    .line 223
    .local v13, "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    iget v14, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v15, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v15, v15

    iget v0, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->scale:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v16, v17, v16

    mul-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float v9, v14, v15

    .line 224
    .local v9, "newYTranslation":F
    iget v14, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v14, v14

    iget v15, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->scale:F

    mul-float v7, v14, v15

    .line 226
    .local v7, "newHeight":F
    add-float v8, v9, v7

    .line 229
    .local v8, "newNotificationEnd":F
    if-eqz v11, :cond_3

    .line 232
    move v3, v7

    .line 249
    .local v3, "clipHeight":F
    :cond_0
    :goto_1
    sub-float v14, v12, v9

    sub-float v14, v7, v14

    .line 248
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v3, v14}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChildClippingAndBackground(Lcom/android/systemui/statusbar/stack/StackViewState;FFF)V

    .line 251
    if-eqz v5, :cond_1

    .line 252
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getMinClipTopAmount()I

    move-result v14

    iget v15, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 255
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v14

    if-nez v14, :cond_2

    .line 258
    if-eqz v5, :cond_5

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 259
    const/4 v11, 0x1

    .line 220
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 234
    .end local v3    # "clipHeight":F
    :cond_3
    sub-float v3, v8, v10

    .line 235
    .restart local v3    # "clipHeight":F
    const/4 v14, 0x0

    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 236
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-eqz v14, :cond_0

    .line 241
    iget-boolean v14, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    if-eqz v14, :cond_4

    .line 242
    const/4 v4, 0x0

    .line 244
    .local v4, "clippingCorrection":F
    :goto_3
    add-float/2addr v3, v4

    goto :goto_1

    .line 243
    .end local v4    # "clippingCorrection":F
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mRoundedRectCornerRadius:I

    int-to-float v14, v14

    iget v15, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->scale:F

    mul-float v4, v14, v15

    .restart local v4    # "clippingCorrection":F
    goto :goto_3

    .line 261
    .end local v4    # "clippingCorrection":F
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 262
    .local v11, "previousNotificationIsSwiped":Z
    move v10, v8

    .line 263
    iget v14, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    int-to-float v14, v14

    iget v15, v13, Lcom/android/systemui/statusbar/stack/StackViewState;->scale:F

    mul-float/2addr v14, v15

    add-float v12, v9, v14

    goto :goto_2

    .line 214
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "clipHeight":F
    .end local v7    # "newHeight":F
    .end local v8    # "newNotificationEnd":F
    .end local v9    # "newYTranslation":F
    .end local v11    # "previousNotificationIsSwiped":Z
    .end local v13    # "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_6
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v5

    .line 305
    .local v5, "dimmed":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v4

    .line 306
    .local v4, "dark":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v6

    .line 307
    .local v6, "hideSensitive":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 308
    .local v0, "activatedChild":Landroid/view/View;
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 309
    .local v2, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_4

    .line 310
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 311
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v3

    .line 312
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    .line 313
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    .line 314
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    .line 315
    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    .line 316
    .local v8, "isActivatedChild":Z
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    if-eqz v9, :cond_0

    if-eqz v5, :cond_0

    if-eqz v8, :cond_3

    .line 317
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    .line 316
    :goto_2
    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->scale:F

    .line 319
    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    .line 320
    iget v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZTranslationFactor:F

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 309
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 315
    .end local v8    # "isActivatedChild":Z
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "isActivatedChild":Z
    goto :goto_1

    .line 318
    :cond_3
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    .line 303
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v8    # "isActivatedChild":Z
    :cond_4
    return-void
.end method

.method private updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->findFirstVisibleChild(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 865
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_2

    .line 866
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mExpandedOnStart:Z

    if-eqz v1, :cond_1

    .line 871
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 870
    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    .line 872
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    instance-of v1, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 875
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    .line 863
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V

    goto :goto_0

    .line 883
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    goto :goto_0
.end method

.method private updateFirstChildMaxSizeToMaxHeight()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->isMaxSizeInitialized(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 893
    new-instance v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    .line 892
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 887
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AmbientState;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    goto :goto_0
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 12
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 524
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 525
    .local v2, "childCount":I
    const/4 v7, 0x0

    .line 526
    .local v7, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v4, 0x0

    .end local v7    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 527
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 528
    .local v1, "child":Landroid/view/View;
    instance-of v9, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v9, :cond_1

    .line 523
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    return-void

    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    move-object v6, v1

    .line 531
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 532
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 534
    if-nez v7, :cond_2

    .line 535
    move-object v7, v6

    .line 537
    :cond_2
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v3

    .line 538
    .local v3, "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-ne v7, v6, :cond_6

    const/4 v5, 0x1

    .line 539
    .local v5, "isTopEntry":Z
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_4

    .line 540
    if-eqz v5, :cond_3

    .line 541
    iget v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 543
    :cond_3
    iget v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 545
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v9

    iget v10, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    sub-float v0, v9, v10

    .line 546
    .local v0, "bottomPosition":F
    iget v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 549
    .end local v0    # "bottomPosition":F
    :cond_4
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 550
    iget v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 551
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mNotificationsTopPadding:I

    int-to-float v10, v10

    .line 550
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 552
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v9

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 553
    if-nez v5, :cond_5

    .line 556
    invoke-virtual {p1, v7}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v8

    .line 557
    .local v8, "topState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v9

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 558
    iget v9, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v10, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 559
    iget v10, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    .line 558
    sub-float/2addr v9, v10

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 526
    .end local v8    # "topState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 538
    .end local v5    # "isTopEntry":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "isTopEntry":Z
    goto :goto_1
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "notGoneIndex"    # I
    .param p4, "v"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 392
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v0

    .line 393
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iput p3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 394
    iget-object v1, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 p3, p3, 0x1

    .line 396
    return p3
.end method

.method private updatePadding(Z)V
    .locals 6
    .param p1, "dimmed"    # Z

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 85
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    if-eqz v0, :cond_0

    .line 86
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsDimmed:I

    .line 85
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 88
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    .line 89
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    .line 88
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    .line 92
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    .line 93
    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    sub-int/2addr v2, v3

    .line 90
    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    .line 97
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v2

    .line 95
    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    .line 100
    if-eqz p1, :cond_1

    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeightDimmed:I

    .line 100
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    .line 84
    return-void

    .line 87
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsNormal:I

    goto :goto_0

    .line 102
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeightNormal:I

    goto :goto_1
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 27
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 410
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v3, v4

    int-to-float v13, v3

    .line 413
    .local v13, "bottomPeekStart":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    int-to-float v3, v3

    sub-float v12, v13, v3

    .line 416
    .local v12, "bottomStackStart":F
    const/4 v14, 0x0

    .line 419
    .local v14, "currentYPosition":F
    const/16 v25, 0x0

    .line 423
    .local v25, "yPositionInScrollView":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v24

    .line 425
    .local v24, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 426
    .local v21, "childCount":I
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    .line 427
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    .line 429
    .local v5, "numberOfElementsCompletelyIn":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v6, v0, :cond_b

    .line 430
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/ExpandableView;

    .line 431
    .local v20, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v8

    .line 432
    .local v8, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    const/4 v3, 0x0

    iput v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AmbientState;)I

    move-result v7

    .line 435
    .local v7, "childHeight":I
    int-to-float v3, v7

    .line 434
    add-float v3, v3, v25

    .line 436
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v4, v4

    .line 434
    add-float v26, v3, v4

    .line 437
    .local v26, "yPositionInScrollViewAfterElement":F
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v3, v3

    sub-float v3, v25, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v4, v4

    add-float v9, v3, v4

    .line 439
    .local v9, "scrollOffset":F
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    add-int/lit8 v3, v3, 0x1

    if-ne v6, v3, :cond_0

    .line 444
    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 446
    :cond_0
    iput v14, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 449
    int-to-float v3, v7

    add-float/2addr v3, v14

    .line 450
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v4, v4

    .line 449
    add-float v23, v3, v4

    .line 452
    .local v23, "nextYPosition":F
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    if-gt v6, v3, :cond_8

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 455
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForTopStackChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;IIILcom/android/systemui/statusbar/stack/StackViewState;F)V

    .line 457
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackViewState;I)V

    .line 460
    iget v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    int-to-float v4, v7

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpl-float v3, v3, v12

    if-ltz v3, :cond_1

    .line 461
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-eqz v3, :cond_7

    .line 470
    .end local v14    # "currentYPosition":F
    :cond_1
    :goto_2
    iget v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v8, v3, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 495
    :goto_3
    if-nez v6, :cond_3

    .line 496
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 497
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 498
    iget v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v4, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 499
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    int-to-float v4, v4

    sub-float v4, v13, v4

    .line 498
    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 501
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    int-to-float v3, v3

    sub-float v3, v13, v3

    .line 502
    iget v4, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 501
    sub-float/2addr v3, v4

    .line 502
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v4, v4

    .line 500
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 504
    :cond_2
    const/4 v3, 0x1

    iput v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 506
    :cond_3
    iget v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    if-nez v3, :cond_4

    .line 507
    const-string/jumbo v3, "StackScrollAlgorithm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to assign location for child "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_4
    iget v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    int-to-float v4, v7

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v4, v4

    add-float v14, v3, v4

    .line 510
    .restart local v14    # "currentYPosition":F
    move/from16 v25, v26

    .line 512
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v24, :cond_5

    .line 513
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 514
    iget v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    sub-int/2addr v4, v10

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 516
    :cond_5
    iget v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v4

    .line 517
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v10

    .line 516
    add-float/2addr v4, v10

    add-float/2addr v3, v4

    iput v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 429
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 428
    .end local v5    # "numberOfElementsCompletelyIn":I
    .end local v6    # "i":I
    .end local v7    # "childHeight":I
    .end local v8    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v9    # "scrollOffset":F
    .end local v20    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v23    # "nextYPosition":F
    .end local v26    # "yPositionInScrollViewAfterElement":F
    :cond_6
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    float-to-int v5, v3

    .restart local v5    # "numberOfElementsCompletelyIn":I
    goto/16 :goto_0

    .line 461
    .restart local v6    # "i":I
    .restart local v7    # "childHeight":I
    .restart local v8    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .restart local v9    # "scrollOffset":F
    .restart local v20    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v23    # "nextYPosition":F
    .restart local v26    # "yPositionInScrollViewAfterElement":F
    :cond_7
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    .line 460
    if-eqz v3, :cond_1

    .line 463
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v3, v3

    sub-float v3, v12, v3

    .line 464
    iget v4, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 463
    sub-float/2addr v3, v4

    .line 464
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v4, v4

    .line 463
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v0, v3

    move/from16 v22, v0

    .line 465
    .local v22, "newSize":I
    move/from16 v0, v22

    iput v0, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 467
    iget v14, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .end local v14    # "currentYPosition":F
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object v15, v8

    move/from16 v16, v7

    .line 466
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FFFLcom/android/systemui/statusbar/stack/StackViewState;I)V

    goto/16 :goto_2

    .line 472
    .end local v22    # "newSize":I
    .restart local v14    # "currentYPosition":F
    :cond_8
    cmpl-float v3, v23, v12

    if-ltz v3, :cond_a

    .line 475
    cmpl-float v3, v14, v12

    if-ltz v3, :cond_9

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move/from16 v16, v12

    move-object/from16 v17, v8

    move/from16 v18, v7

    move-object/from16 v19, p3

    .line 478
    invoke-direct/range {v14 .. v19}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object v15, v8

    move/from16 v16, v7

    .line 483
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FFFLcom/android/systemui/statusbar/stack/StackViewState;I)V

    goto/16 :goto_3

    .line 490
    :cond_a
    const/16 v3, 0x8

    iput v3, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 491
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v8, v7, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampYTranslation(Lcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V

    goto/16 :goto_3

    .line 519
    .end local v7    # "childHeight":I
    .end local v8    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v9    # "scrollOffset":F
    .end local v20    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v23    # "nextYPosition":F
    .end local v26    # "yPositionInScrollViewAfterElement":F
    :cond_b
    invoke-direct/range {p0 .. p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 407
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V
    .locals 6
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "speedBumpIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 203
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 204
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 205
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 209
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    if-lt v3, p3, :cond_0

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 209
    goto :goto_1

    .line 201
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_1
    return-void
.end method

.method private updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 4
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "transitioningPositionStart"    # F
    .param p3, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p4, "childHeight"    # I
    .param p5, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 650
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    add-float/2addr v1, v3

    iput v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 651
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    .line 653
    add-float/2addr v1, p2

    .line 655
    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v2, v2

    .line 653
    sub-float v0, v1, v2

    .line 656
    .local v0, "currentYPosition":F
    const/16 v1, 0x10

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 668
    :goto_0
    int-to-float v1, p4

    sub-float v1, v0, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 669
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackViewState;I)V

    .line 648
    return-void

    .line 659
    .end local v0    # "currentYPosition":F
    :cond_0
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 660
    const/4 v1, 0x0

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 665
    :cond_1
    :goto_1
    const/16 v1, 0x20

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 666
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    int-to-float v0, v1

    .restart local v0    # "currentYPosition":F
    goto :goto_0

    .line 661
    .end local v0    # "currentYPosition":F
    :cond_2
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 662
    const/high16 v2, 0x40800000    # 4.0f

    .line 661
    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 663
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    sub-float v1, v3, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    goto :goto_1
.end method

.method private updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FFFLcom/android/systemui/statusbar/stack/StackViewState;I)V
    .locals 4
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "transitioningPositionStart"    # F
    .param p3, "bottomPeakStart"    # F
    .param p4, "currentYPosition"    # F
    .param p5, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p6, "childHeight"    # I

    .prologue
    .line 626
    sub-float v2, p2, p4

    .line 627
    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 626
    add-int/2addr v3, p6

    int-to-float v3, v3

    .line 625
    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    .line 630
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    .line 631
    .local v1, "offset":F
    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 632
    move v0, p6

    .line 633
    .local v0, "newHeight":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    if-le p6, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    if-eqz v2, :cond_0

    .line 634
    add-float v2, p2, v1

    .line 635
    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v3, v3

    .line 634
    sub-float/2addr v2, v3

    sub-float/2addr v2, p4

    .line 635
    int-to-float v3, p6

    .line 634
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 635
    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v3, v3

    .line 634
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    .line 636
    iput v0, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 638
    :cond_0
    add-float v2, p2, v1

    int-to-float v3, v0

    sub-float/2addr v2, v3

    .line 639
    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v3, v3

    .line 638
    sub-float/2addr v2, v3

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 642
    invoke-direct {p0, p5, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackViewState;I)V

    .line 643
    const/16 v2, 0x8

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 622
    return-void
.end method

.method private updateStateForTopStackChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;IIILcom/android/systemui/statusbar/stack/StackViewState;F)V
    .locals 8
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "numberOfElementsCompletelyIn"    # I
    .param p3, "i"    # I
    .param p4, "childHeight"    # I
    .param p5, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p6, "scrollOffset"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 679
    add-int/lit8 v4, p3, -0x1

    .line 680
    add-int/lit8 v5, p2, -0x3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 679
    sub-int v3, v4, v5

    .line 681
    .local v3, "paddedIndex":I
    if-ltz v3, :cond_2

    .line 684
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v4, p4

    int-to-float v4, v4

    .line 685
    iget v5, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    .line 684
    sub-float v1, v4, v5

    .line 686
    .local v1, "distanceToStack":F
    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    if-ne p3, v4, :cond_0

    .line 687
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 691
    iput p6, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 706
    :goto_0
    const/4 v4, 0x4

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 674
    .end local v1    # "distanceToStack":F
    :goto_1
    return-void

    .line 695
    .restart local v1    # "distanceToStack":F
    :cond_0
    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    if-ne p3, v4, :cond_1

    .line 697
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float v4, v1, v4

    .line 696
    sub-float v2, v6, v4

    .line 702
    .local v2, "numItemsBefore":F
    :goto_2
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 703
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v5

    .line 702
    sub-float v0, v4, v5

    .line 704
    .local v0, "currentChildEndY":F
    int-to-float v4, p4

    sub-float v4, v0, v4

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    goto :goto_0

    .line 699
    .end local v0    # "currentChildEndY":F
    .end local v2    # "numItemsBefore":F
    :cond_1
    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    int-to-float v5, p3

    sub-float v2, v4, v5

    .restart local v2    # "numItemsBefore":F
    goto :goto_2

    .line 708
    .end local v1    # "distanceToStack":F
    .end local v2    # "numItemsBefore":F
    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 709
    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    sub-float v4, v6, v4

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 714
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    sub-int/2addr v4, p4

    int-to-float v4, v4

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 715
    const/4 v4, 0x2

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    goto :goto_1

    .line 712
    :cond_3
    const/4 v4, 0x0

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    goto :goto_3
.end method

.method private updateVisibleChildren(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/16 v11, 0x8

    .line 359
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v5

    .line 360
    .local v5, "hostView":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 361
    .local v0, "childCount":I
    iget-object v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 362
    iget-object v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 363
    const/4 v7, 0x0

    .line 364
    .local v7, "notGoneIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 365
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableView;

    .line 366
    .local v9, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v10

    if-eq v10, v11, :cond_1

    .line 367
    invoke-direct {p0, p1, p2, v7, v9}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I

    move-result v7

    .line 368
    instance-of v10, v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v10, :cond_1

    move-object v8, v9

    .line 369
    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 373
    .local v8, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    .line 374
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v4, :cond_1

    .line 375
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "childRow$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 376
    .local v1, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v10

    if-eq v10, v11, :cond_0

    .line 378
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v3

    .line 379
    .local v3, "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iput v7, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 380
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 364
    .end local v1    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "childRow$iterator":Ljava/util/Iterator;
    .end local v3    # "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v8    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 358
    .end local v9    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 805
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 806
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 807
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 808
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 809
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    int-to-float v8, v3

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    cmpg-float v8, v8, v10

    if-gez v8, :cond_2

    .line 810
    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    int-to-float v10, v3

    sub-float v6, v8, v10

    .line 814
    .local v6, "stackIndex":F
    if-nez v3, :cond_1

    const/high16 v8, 0x40200000    # 2.5f

    :goto_1
    const/high16 v10, 0x40400000    # 3.0f

    add-float v4, v10, v8

    .line 815
    .local v4, "max":F
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 816
    if-nez v3, :cond_0

    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 821
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v6, v8

    .line 822
    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    if-le v8, v10, :cond_0

    .line 827
    const v8, 0x3ff33333    # 1.9f

    mul-float/2addr v8, v6

    const v10, 0x3dcccccd    # 0.1f

    add-float v6, v10, v8

    .line 830
    :cond_0
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    .line 831
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    .line 830
    add-float/2addr v8, v10

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 806
    .end local v4    # "max":F
    .end local v6    # "stackIndex":F
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v6    # "stackIndex":F
    :cond_1
    move v8, v9

    .line 814
    goto :goto_1

    .line 832
    .end local v6    # "stackIndex":F
    :cond_2
    int-to-float v8, v3

    add-int/lit8 v10, v1, -0x1

    int-to-float v10, v10

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-lez v8, :cond_3

    .line 833
    int-to-float v8, v3

    add-int/lit8 v10, v1, -0x1

    int-to-float v10, v10

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v10, v11

    sub-float v5, v8, v10

    .line 834
    .local v5, "numItemsAbove":F
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    .line 835
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    .line 834
    sub-float v7, v8, v10

    .line 836
    .local v7, "translationZ":F
    iput v7, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    goto :goto_2

    .line 838
    .end local v5    # "numItemsAbove":F
    .end local v7    # "translationZ":F
    :cond_3
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    goto :goto_2

    .line 804
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_4
    return-void
.end method


# virtual methods
.method public getBottomStackSlowDownLength()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 5
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 153
    .local v0, "algorithmState":Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    .line 155
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 156
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    .line 157
    iput v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    .line 158
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    .line 159
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 160
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    .line 161
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v1

    .line 163
    .local v1, "bottomOverScroll":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v2

    .line 167
    .local v2, "scrollY":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 168
    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 170
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateVisibleChildren(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 173
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->findNumberOfItemsInTopStackAndUpdateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 176
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 179
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 181
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 182
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 183
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V

    .line 185
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 147
    return-void
.end method

.method public notifyChildrenChanged(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-eqz v0, :cond_0

    .line 942
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 940
    :cond_0
    return-void
.end method

.method public onExpansionStarted(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 2
    .param p1, "currentState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 857
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    .line 858
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mExpandedOnStart:Z

    .line 859
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 860
    .local v0, "hostView":Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V

    .line 856
    return-void
.end method

.method public onExpansionStopped()V
    .locals 1

    .prologue
    .line 932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    .line 933
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 931
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V

    .line 955
    :cond_0
    return-void
.end method

.method public setDimmed(Z)V
    .locals 0
    .param p1, "dimmed"    # Z

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePadding(Z)V

    .line 951
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 961
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 937
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 936
    return-void
.end method

.method public shouldScaleDimmed()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    return v0
.end method

.method public updateIsSmallScreen(I)V
    .locals 2
    .param p1, "panelHeight"    # I

    .prologue
    .line 851
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 852
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 851
    add-int/2addr v0, v1

    .line 852
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 851
    add-int/2addr v0, v1

    .line 853
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mMaxNotificationHeight:I

    .line 851
    add-int/2addr v0, v1

    .line 850
    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    .line 849
    return-void

    .line 850
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
