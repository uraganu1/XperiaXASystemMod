.class public Lcom/android/incallui/SomcSmallEndCallSlidingTab;
.super Lcom/android/incallui/SomcSlidingTab;
.source "SomcSmallEndCallSlidingTab.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SomcSlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected animateExpandedToDisabled(Z)V
    .locals 5
    .param p1, "animateExpanded"    # Z

    .prologue
    const/4 v4, 0x4

    .line 32
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 33
    .local v0, "goneToDispAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 35
    iget-object v1, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSecondNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v1, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    iget-object v1, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object v1, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    if-nez p1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    :cond_0
    return-void
.end method

.method public changeSlidingTabToEnded(Z)V
    .locals 3
    .param p1, "ended"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 48
    iget v6, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSliderWidth:I

    invoke-virtual {p0, p1, v6}, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->measureDimension(II)I

    move-result v5

    .line 49
    .local v5, "width":I
    iget v6, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSliderHeight:I

    invoke-virtual {p0, p2, v6}, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->measureDimension(II)I

    move-result v1

    .line 51
    .local v1, "height":I
    iget v3, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSliderWidth:I

    .line 52
    .local v3, "sliderLength":I
    iget-object v6, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 53
    .local v0, "firstButtonLength":I
    iget-object v6, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 54
    .local v2, "secondButtonLength":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 60
    .local v4, "specSize":I
    div-int/lit8 v6, v0, 0x2

    iget v7, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSliderMarginStart:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mFirstBtnPosition:I

    .line 62
    div-int/lit8 v6, v2, 0x2

    iget v7, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSliderMarginStart:I

    add-int/2addr v6, v7

    sub-int v6, v4, v6

    iput v6, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSecondBtnPosition:I

    .line 64
    iput v10, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mFirstTouchablePart:I

    .line 66
    iget v6, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSliderMarginStart:I

    add-int/2addr v6, v2

    sub-int v6, v4, v6

    iput v6, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSecondTouchablePart:I

    .line 68
    int-to-double v6, v3

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 69
    iget v7, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSliderMarginStart:I

    .line 68
    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mFirstActivatePoint:I

    .line 71
    iput v10, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mSecondActivatePoint:I

    .line 73
    invoke-virtual {p0, v5, v1}, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->setMeasuredDimension(II)V

    .line 47
    return-void
.end method

.method public resetSlider(Z)V
    .locals 2
    .param p1, "animateExpanded"    # Z

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mHintText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    return-void
.end method

.method protected sliderButtonReleaseAfter(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/incallui/SomcSlidingTab;->sliderButtonReleaseAfter(I)V

    .line 85
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->mHintText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    return-void
.end method
