.class public Lcom/mediatek/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/ChartSweepView$OnSweepListener;,
        Lcom/mediatek/widget/ChartSweepView$1;
    }
.end annotation


# instance fields
.field private mAxis:Lcom/android/settings/widget/ChartAxis;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentOffset:Landroid/graphics/Rect;

.field private mDragInterval:J

.field private mFollowAxis:I

.field private mLabelColor:I

.field private mLabelLayout:Landroid/text/DynamicLayout;

.field private mLabelMinSize:I

.field private mLabelOffset:F

.field private mLabelSize:F

.field private mLabelTemplate:Landroid/text/SpannableStringBuilder;

.field private mLabelTemplateRes:I

.field private mLabelValue:J

.field private mListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

.field private mMargins:Landroid/graphics/Rect;

.field private mMaxValue:J

.field private mNeighborMargin:F

.field private mNeighbors:[Lcom/mediatek/widget/ChartSweepView;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mSweep:Landroid/graphics/drawable/Drawable;

.field private mSweepOffset:Landroid/graphics/Point;

.field private mSweepPadding:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTracking:Landroid/view/MotionEvent;

.field private mTrackingStart:F

.field private mValidAfter:J

.field private mValidAfterDynamic:Lcom/mediatek/widget/ChartSweepView;

.field private mValidBefore:J

.field private mValidBeforeDynamic:Lcom/mediatek/widget/ChartSweepView;

.field private mValue:J


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->dispatchRequestEdit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    .line 58
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    .line 60
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 92
    iput v4, p0, Lcom/mediatek/widget/ChartSweepView;->mTouchMode:I

    .line 100
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/mediatek/widget/ChartSweepView;->mDragInterval:J

    .line 102
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mediatek/widget/ChartSweepView;->mMaxValue:J

    .line 113
    new-array v1, v4, [Lcom/mediatek/widget/ChartSweepView;

    iput-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mNeighbors:[Lcom/mediatek/widget/ChartSweepView;

    .line 155
    new-instance v1, Lcom/mediatek/widget/ChartSweepView$1;

    invoke-direct {v1, p0}, Lcom/mediatek/widget/ChartSweepView$1;-><init>(Lcom/mediatek/widget/ChartSweepView;)V

    iput-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 129
    sget-object v1, Lcom/android/settings/R$styleable;->ChartSweepView:[I

    .line 128
    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartSweepView;->setSweepDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    const/4 v1, -0x1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartSweepView;->setFollowAxis(I)V

    .line 133
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartSweepView;->setNeighborMargin(F)V

    .line 135
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartSweepView;->setLabelMinSize(I)V

    .line 136
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartSweepView;->setLabelTemplate(I)V

    .line 137
    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartSweepView;->setLabelColor(I)V

    .line 140
    const v1, 0x7f020049

    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartSweepView;->setBackgroundResource(I)V

    .line 142
    iget-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-virtual {p0, v5}, Lcom/mediatek/widget/ChartSweepView;->setClickable(Z)V

    .line 149
    invoke-virtual {p0, v5}, Lcom/mediatek/widget/ChartSweepView;->setFocusable(Z)V

    .line 150
    iget-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0, v4}, Lcom/mediatek/widget/ChartSweepView;->setWillNotDraw(Z)V

    .line 125
    return-void
.end method

.method private buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 10
    .param p1, "parentContent"    # Landroid/graphics/Rect;
    .param p2, "afterValue"    # J
    .param p4, "beforeValue"    # J
    .param p6, "margin"    # F

    .prologue
    .line 613
    iget-object v5, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    instance-of v5, v5, Lcom/android/settings/widget/InvertedChartAxis;

    if-eqz v5, :cond_0

    .line 614
    move-wide v6, p4

    .line 615
    .local v6, "temp":J
    move-wide p4, p2

    .line 616
    move-wide p2, v6

    .line 619
    .end local v6    # "temp":J
    :cond_0
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, p2, v8

    if-eqz v5, :cond_3

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, p2, v8

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 620
    .local v1, "afterValid":Z
    :goto_0
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, p4, v8

    if-eqz v5, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, p4, v8

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 622
    .local v3, "beforeValid":Z
    :goto_1
    iget-object v5, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5, p2, p3}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v5

    add-float v0, v5, p6

    .line 623
    .local v0, "afterPoint":F
    iget-object v5, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5, p4, p5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v5

    sub-float v2, v5, p6

    .line 625
    .local v2, "beforePoint":F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 626
    .local v4, "clampRect":Landroid/graphics/Rect;
    iget v5, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_5

    .line 627
    if-eqz v3, :cond_1

    .line 628
    iget v5, v4, Landroid/graphics/Rect;->top:I

    float-to-int v8, v2

    add-int/2addr v5, v8

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 630
    :cond_1
    if-eqz v1, :cond_2

    .line 631
    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 641
    :cond_2
    :goto_2
    return-object v4

    .line 619
    .end local v0    # "afterPoint":F
    .end local v1    # "afterValid":Z
    .end local v2    # "beforePoint":F
    .end local v3    # "beforeValid":Z
    .end local v4    # "clampRect":Landroid/graphics/Rect;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "afterValid":Z
    goto :goto_0

    .line 620
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "beforeValid":Z
    goto :goto_1

    .line 634
    .restart local v0    # "afterPoint":F
    .restart local v2    # "beforePoint":F
    .restart local v4    # "clampRect":Landroid/graphics/Rect;
    :cond_5
    if-eqz v3, :cond_6

    .line 635
    iget v5, v4, Landroid/graphics/Rect;->left:I

    float-to-int v8, v2

    add-int/2addr v5, v8

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 637
    :cond_6
    if-eqz v1, :cond_2

    .line 638
    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_2
.end method

.method private computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "parentContent"    # Landroid/graphics/Rect;

    .prologue
    .line 601
    iget-wide v2, p0, Lcom/mediatek/widget/ChartSweepView;->mValidAfter:J

    iget-wide v4, p0, Lcom/mediatek/widget/ChartSweepView;->mValidBefore:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v8

    .line 603
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->getValidAfterDynamic()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->getValidBeforeDynamic()J

    move-result-wide v4

    iget v6, p0, Lcom/mediatek/widget/ChartSweepView;->mNeighborMargin:F

    move-object v0, p0

    move-object v1, p1

    .line 602
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v7

    .line 605
    .local v7, "dynamicRect":Landroid/graphics/Rect;
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 608
    :cond_0
    return-object v8
.end method

.method private dispatchOnSweep(Z)V
    .locals 1
    .param p1, "sweepDone"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0, p1}, Lcom/mediatek/widget/ChartSweepView$OnSweepListener;->onSweep(Lcom/mediatek/widget/ChartSweepView;Z)V

    .line 201
    :cond_0
    return-void
.end method

.method private dispatchRequestEdit()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0}, Lcom/mediatek/widget/ChartSweepView$OnSweepListener;->requestEdit(Lcom/mediatek/widget/ChartSweepView;)V

    .line 207
    :cond_0
    return-void
.end method

.method public static getLabelBottom(Lcom/mediatek/widget/ChartSweepView;)F
    .locals 2
    .param p0, "view"    # Lcom/mediatek/widget/ChartSweepView;

    .prologue
    .line 763
    invoke-static {p0}, Lcom/mediatek/widget/ChartSweepView;->getLabelTop(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelTop(Lcom/mediatek/widget/ChartSweepView;)F
    .locals 2
    .param p0, "view"    # Lcom/mediatek/widget/ChartSweepView;

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelWidth(Lcom/mediatek/widget/ChartSweepView;)F
    .locals 2
    .param p0, "view"    # Lcom/mediatek/widget/ChartSweepView;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getParentContentRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 569
    .local v0, "parent":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 570
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 571
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 569
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getTargetInset()F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 186
    iget v2, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 187
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 188
    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 187
    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 189
    .local v0, "targetHeight":F
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float v3, v0, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    return v2

    .line 191
    .end local v0    # "targetHeight":F
    :cond_0
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 192
    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 191
    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 193
    .local v1, "targetWidth":F
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float v3, v1, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    return v2
.end method

.method private getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F
    .locals 3
    .param p1, "eventInParent"    # Landroid/view/MotionEvent;

    .prologue
    .line 425
    iget v0, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 428
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private getValidAfterDynamic()J
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mValidAfterDynamic:Lcom/mediatek/widget/ChartSweepView;

    .line 586
    .local v0, "dynamic":Lcom/mediatek/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method private getValidBeforeDynamic()J
    .locals 4

    .prologue
    .line 590
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/mediatek/widget/ChartSweepView;

    .line 591
    .local v0, "dynamic":Lcom/mediatek/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private invalidateLabel()V
    .locals 6

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iget-wide v4, p0, Lcom/mediatek/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/settings/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelValue:J

    .line 287
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 289
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidate()V

    .line 284
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-wide v0, p0, Lcom/mediatek/widget/ChartSweepView;->mValue:J

    iput-wide v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelValue:J

    goto :goto_0
.end method

.method private invalidateLabelTemplate()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 261
    iget v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelTemplateRes:I

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelTemplateRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 264
    .local v8, "template":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 265
    .local v2, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 266
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 267
    iget v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelColor:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 268
    iget v0, v2, Landroid/text/TextPaint;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, -0x1000000

    invoke-virtual {v2, v0, v6, v6, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 270
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 271
    new-instance v0, Landroid/text/DynamicLayout;

    .line 272
    iget-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/16 v3, 0x400

    const/high16 v5, 0x3f800000    # 1.0f

    .line 271
    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    .line 273
    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidateLabel()V

    .line 280
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v8    # "template":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidate()V

    .line 281
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->requestLayout()V

    .line 260
    return-void

    .line 276
    :cond_0
    iput-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 277
    iput-object v1, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    goto :goto_0
.end method


# virtual methods
.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 575
    return-void
.end method

.method public addOnSweepListener(Lcom/mediatek/widget/ChartSweepView$OnSweepListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mediatek/widget/ChartSweepView;->mListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    .line 197
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 646
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 647
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 645
    :cond_0
    return-void
.end method

.method public getFollowAxis()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    return v0
.end method

.method public getLabelValue()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelValue:J

    return-wide v0
.end method

.method public getMargins()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPoint()F
    .locals 4

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    iget-wide v2, p0, Lcom/mediatek/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v2, v3}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    return v0

    .line 387
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/mediatek/widget/ChartSweepView;->mValue:J

    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "axis"    # Lcom/android/settings/widget/ChartAxis;

    .prologue
    .line 162
    const-string/jumbo v0, "missing axis"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    .line 161
    return-void
.end method

.method public invalidateLabelOffset()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "labelOffset":F
    iget v2, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 302
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mValidAfterDynamic:Lcom/mediatek/widget/ChartSweepView;

    if-eqz v2, :cond_3

    .line 303
    invoke-static {p0}, Lcom/mediatek/widget/ChartSweepView;->getLabelWidth(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mValidAfterDynamic:Lcom/mediatek/widget/ChartSweepView;

    invoke-static {v3}, Lcom/mediatek/widget/ChartSweepView;->getLabelWidth(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelSize:F

    .line 304
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mValidAfterDynamic:Lcom/mediatek/widget/ChartSweepView;

    invoke-static {v2}, Lcom/mediatek/widget/ChartSweepView;->getLabelTop(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v2

    invoke-static {p0}, Lcom/mediatek/widget/ChartSweepView;->getLabelBottom(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 305
    .local v1, "margin":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 306
    div-float v0, v1, v5

    .line 319
    .end local v1    # "margin":F
    :cond_0
    :goto_0
    iget v2, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelSize:F

    iget v3, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelMinSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelSize:F

    .line 322
    iget v2, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelOffset:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 323
    iput v0, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelOffset:F

    .line 324
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidate()V

    .line 325
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mValidAfterDynamic:Lcom/mediatek/widget/ChartSweepView;

    if-eqz v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mValidAfterDynamic:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/mediatek/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/mediatek/widget/ChartSweepView;

    if-eqz v2, :cond_2

    .line 329
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/mediatek/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 298
    :cond_2
    return-void

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/mediatek/widget/ChartSweepView;

    if-eqz v2, :cond_4

    .line 309
    invoke-static {p0}, Lcom/mediatek/widget/ChartSweepView;->getLabelWidth(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/mediatek/widget/ChartSweepView;

    invoke-static {v3}, Lcom/mediatek/widget/ChartSweepView;->getLabelWidth(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelSize:F

    .line 310
    invoke-static {p0}, Lcom/mediatek/widget/ChartSweepView;->getLabelTop(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/mediatek/widget/ChartSweepView;

    invoke-static {v3}, Lcom/mediatek/widget/ChartSweepView;->getLabelBottom(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 311
    .restart local v1    # "margin":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 312
    neg-float v2, v1

    div-float v0, v2, v5

    goto :goto_0

    .line 315
    .end local v1    # "margin":F
    :cond_4
    invoke-static {p0}, Lcom/mediatek/widget/ChartSweepView;->getLabelWidth(Lcom/mediatek/widget/ChartSweepView;)F

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelSize:F

    goto :goto_0
.end method

.method public isTouchCloserTo(Landroid/view/MotionEvent;Lcom/mediatek/widget/ChartSweepView;)Z
    .locals 3
    .param p1, "eventInParent"    # Landroid/view/MotionEvent;
    .param p2, "another"    # Lcom/mediatek/widget/ChartSweepView;

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/mediatek/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v1

    .line 420
    .local v1, "selfDist":F
    invoke-direct {p2, p1}, Lcom/mediatek/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v0

    .line 421
    .local v0, "anotherDist":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 337
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 335
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 722
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 724
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getWidth()I

    move-result v4

    .line 725
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getHeight()I

    move-result v2

    .line 728
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v5, :cond_0

    .line 729
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 731
    .local v1, "count":I
    iget v5, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelSize:F

    const/high16 v6, 0x44800000    # 1024.0f

    sub-float v0, v5, v6

    .line 733
    .local v0, "alignOffset":F
    iget-object v5, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelOffset:F

    add-float/2addr v6, v7

    .line 732
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 734
    iget-object v5, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v5, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 736
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 737
    iget v5, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelSize:F

    float-to-int v3, v5

    .line 742
    .end local v0    # "alignOffset":F
    .end local v1    # "count":I
    .local v3, "labelSize":I
    :goto_0
    iget v5, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 743
    iget-object v5, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v4

    .line 744
    iget-object v8, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 743
    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 750
    :goto_1
    iget-object v5, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 721
    return-void

    .line 739
    .end local v3    # "labelSize":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "labelSize":I
    goto :goto_0

    .line 746
    :cond_1
    iget-object v5, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 747
    iget-object v8, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    .line 746
    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 716
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 717
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 715
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v9, :cond_0

    .line 657
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 658
    .local v3, "sweepHeight":I
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v9}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    .line 660
    .local v6, "templateHeight":I
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    .line 661
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    .line 662
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->getTargetInset()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 663
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/mediatek/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 671
    .end local v3    # "sweepHeight":I
    .end local v6    # "templateHeight":I
    :goto_0
    iget v9, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 672
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    .line 673
    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 672
    sub-int v4, v9, v10

    .line 674
    .local v4, "targetHeight":I
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 675
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 676
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 677
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 687
    .end local v4    # "targetHeight":I
    :goto_1
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 690
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v8

    .line 691
    .local v8, "widthBefore":I
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    .line 692
    .local v1, "heightBefore":I
    iget v9, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    if-nez v9, :cond_2

    .line 693
    mul-int/lit8 v7, v8, 0x3

    .line 694
    .local v7, "widthAfter":I
    invoke-virtual {p0, v7, v1}, Lcom/mediatek/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 695
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v7, v8

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 697
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v2, v9, 0x2

    .line 698
    .local v2, "offset":I
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 699
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 710
    .end local v7    # "widthAfter":I
    :goto_2
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->offset(II)V

    .line 711
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    neg-int v10, v10

    iget-object v11, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    neg-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 653
    return-void

    .line 666
    .end local v1    # "heightBefore":I
    .end local v2    # "offset":I
    .end local v8    # "widthBefore":I
    :cond_0
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    .line 667
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    .line 668
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/mediatek/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 679
    :cond_1
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    .line 680
    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 679
    sub-int v5, v9, v10

    .line 681
    .local v5, "targetWidth":I
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 682
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->right:I

    .line 683
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 684
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 701
    .end local v5    # "targetWidth":I
    .restart local v1    # "heightBefore":I
    .restart local v8    # "widthBefore":I
    :cond_2
    mul-int/lit8 v0, v1, 0x2

    .line 702
    .local v0, "heightAfter":I
    invoke-virtual {p0, v8, v0}, Lcom/mediatek/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 703
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v0, v1

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 705
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v9, 0x2

    .line 706
    .restart local v2    # "offset":I
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 707
    iget-object v9, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 435
    const/16 v17, 0x0

    return v17

    .line 438
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 439
    .local v13, "parent":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 543
    const/16 v17, 0x0

    return v17

    .line 444
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v17, v0

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x8

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v17, v17, v20

    if-lez v17, :cond_1

    const/4 v4, 0x1

    .line 446
    .local v4, "acceptDrag":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v17, v17, v20

    if-gez v17, :cond_2

    const/4 v5, 0x1

    .line 454
    .local v5, "acceptLabel":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v11

    .line 455
    .local v11, "eventInParent":Landroid/view/MotionEvent;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getLeft()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getTop()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mNeighbors:[Lcom/mediatek/widget/ChartSweepView;

    move-object/from16 v20, v0

    const/16 v17, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    aget-object v12, v20, v17

    .line 459
    .local v12, "neighbor":Lcom/mediatek/widget/ChartSweepView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/mediatek/widget/ChartSweepView;->isTouchCloserTo(Landroid/view/MotionEvent;Lcom/mediatek/widget/ChartSweepView;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 460
    const/16 v17, 0x0

    return v17

    .line 445
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    .end local v11    # "eventInParent":Landroid/view/MotionEvent;
    .end local v12    # "neighbor":Lcom/mediatek/widget/ChartSweepView;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "acceptDrag":Z
    goto :goto_0

    .line 446
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "acceptLabel":Z
    goto :goto_1

    .line 447
    .end local v5    # "acceptLabel":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "acceptLabel":Z
    goto :goto_1

    .line 449
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x8

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v17, v17, v20

    if-lez v17, :cond_5

    const/4 v4, 0x1

    .line 450
    .restart local v4    # "acceptDrag":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v17, v17, v20

    if-gez v17, :cond_6

    const/4 v5, 0x1

    .restart local v5    # "acceptLabel":Z
    goto/16 :goto_1

    .line 449
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "acceptDrag":Z
    goto :goto_3

    .line 450
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "acceptLabel":Z
    goto/16 :goto_1

    .line 451
    .end local v5    # "acceptLabel":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "acceptLabel":Z
    goto/16 :goto_1

    .line 458
    .restart local v11    # "eventInParent":Landroid/view/MotionEvent;
    .restart local v12    # "neighbor":Lcom/mediatek/widget/ChartSweepView;
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 464
    .end local v12    # "neighbor":Lcom/mediatek/widget/ChartSweepView;
    :cond_9
    if-eqz v4, :cond_c

    .line 465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v17, v0

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getTop()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v17, v17, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/widget/ChartSweepView;->mTrackingStart:F

    .line 470
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 471
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/widget/ChartSweepView;->mTouchMode:I

    .line 474
    invoke-virtual {v13}, Landroid/view/View;->isActivated()Z

    move-result v17

    if-nez v17, :cond_a

    .line 475
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setActivated(Z)V

    .line 478
    :cond_a
    const/16 v17, 0x1

    return v17

    .line 468
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getLeft()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v17, v17, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/widget/ChartSweepView;->mTrackingStart:F

    goto :goto_4

    .line 479
    :cond_c
    if-eqz v5, :cond_d

    .line 480
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/widget/ChartSweepView;->mTouchMode:I

    .line 481
    const/16 v17, 0x1

    return v17

    .line 483
    :cond_d
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/widget/ChartSweepView;->mTouchMode:I

    .line 484
    const/16 v17, 0x0

    return v17

    .line 487
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    .end local v11    # "eventInParent":Landroid/view/MotionEvent;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/widget/ChartSweepView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 488
    const/16 v17, 0x1

    return v17

    .line 491
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v14

    .line 495
    .local v14, "parentContent":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/widget/ChartSweepView;->computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 496
    .local v6, "clampRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 497
    const/16 v17, 0x1

    return v17

    .line 501
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v17, v0

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getTop()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v17, v17, v20

    move/from16 v0, v17

    int-to-float v10, v0

    .line 503
    .local v10, "currentTargetY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v17, v0

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    sub-float v20, v20, v21

    .line 503
    add-float v16, v17, v20

    .line 506
    .local v16, "requestedTargetY":F
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 505
    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    .line 507
    .local v8, "clampedTargetY":F
    sub-float v17, v8, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->setTranslationY(F)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v8, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v18

    .line 522
    .end local v8    # "clampedTargetY":F
    .end local v10    # "currentTargetY":F
    .end local v16    # "requestedTargetY":F
    .local v18, "value":J
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/widget/ChartSweepView;->mDragInterval:J

    move-wide/from16 v20, v0

    rem-long v20, v18, v20

    sub-long v18, v18, v20

    .line 523
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/widget/ChartSweepView;->setValue(J)V

    .line 525
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 526
    const/16 v17, 0x1

    return v17

    .line 511
    .end local v18    # "value":J
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->getLeft()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v17, v17, v20

    move/from16 v0, v17

    int-to-float v9, v0

    .line 512
    .local v9, "currentTargetX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v17, v0

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    sub-float v20, v20, v21

    .line 512
    add-float v15, v17, v20

    .line 515
    .local v15, "requestedTargetX":F
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 514
    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    .line 516
    .local v7, "clampedTargetX":F
    sub-float v17, v7, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->setTranslationX(F)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v7, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v18

    .restart local v18    # "value":J
    goto/16 :goto_5

    .line 528
    .end local v6    # "clampRect":Landroid/graphics/Rect;
    .end local v7    # "clampedTargetX":F
    .end local v9    # "currentTargetX":F
    .end local v14    # "parentContent":Landroid/graphics/Rect;
    .end local v15    # "requestedTargetX":F
    .end local v18    # "value":J
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/widget/ChartSweepView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->performClick()Z

    .line 540
    :cond_11
    :goto_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/widget/ChartSweepView;->mTouchMode:I

    .line 541
    const/16 v17, 0x1

    return v17

    .line 530
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/widget/ChartSweepView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 531
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/widget/ChartSweepView;->mTrackingStart:F

    .line 532
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 533
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/widget/ChartSweepView;->mLabelValue:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/widget/ChartSweepView;->mValue:J

    .line 534
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 535
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->setTranslationX(F)V

    .line 536
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->setTranslationY(F)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartSweepView;->requestLayout()V

    goto :goto_6

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 580
    return-void
.end method

.method public setDragInterval(J)V
    .locals 1
    .param p1, "dragInterval"    # J

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/mediatek/widget/ChartSweepView;->mDragInterval:J

    .line 177
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/mediatek/widget/ChartSweepView;->setFocusable(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->requestLayout()V

    .line 214
    return-void
.end method

.method public setFollowAxis(I)V
    .locals 0
    .param p1, "followAxis"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    .line 241
    return-void
.end method

.method public setLabelColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelColor:I

    .line 257
    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 255
    return-void
.end method

.method public setLabelMinSize(I)V
    .locals 0
    .param p1, "minSize"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelMinSize:I

    .line 247
    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 245
    return-void
.end method

.method public setLabelTemplate(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/mediatek/widget/ChartSweepView;->mLabelTemplateRes:I

    .line 252
    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 250
    return-void
.end method

.method public setMaxValue(J)V
    .locals 1
    .param p1, "max"    # J

    .prologue
    .line 361
    iput-wide p1, p0, Lcom/mediatek/widget/ChartSweepView;->mMaxValue:J

    .line 360
    return-void
.end method

.method public setNeighborMargin(F)V
    .locals 0
    .param p1, "neighborMargin"    # F

    .prologue
    .line 401
    iput p1, p0, Lcom/mediatek/widget/ChartSweepView;->mNeighborMargin:F

    .line 400
    return-void
.end method

.method public setSweepDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sweep"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    if-eqz p1, :cond_3

    .line 227
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 232
    iput-object p1, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    .line 233
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidate()V

    .line 220
    return-void

    :cond_2
    move v0, v1

    .line 231
    goto :goto_0

    .line 235
    :cond_3
    iput-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setValidRange(JJ)V
    .locals 1
    .param p1, "validAfter"    # J
    .param p3, "validBefore"    # J

    .prologue
    .line 396
    iput-wide p1, p0, Lcom/mediatek/widget/ChartSweepView;->mValidAfter:J

    .line 397
    iput-wide p3, p0, Lcom/mediatek/widget/ChartSweepView;->mValidBefore:J

    .line 395
    return-void
.end method

.method public setValue(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/mediatek/widget/ChartSweepView;->mMaxValue:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/mediatek/widget/ChartSweepView;->mMaxValue:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 366
    const-string/jumbo v0, "@M_ChartSweepView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "big value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-wide v0, p0, Lcom/mediatek/widget/ChartSweepView;->mMaxValue:J

    iput-wide v0, p0, Lcom/mediatek/widget/ChartSweepView;->mValue:J

    .line 371
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->invalidateLabel()V

    .line 364
    return-void

    .line 369
    :cond_0
    iput-wide p1, p0, Lcom/mediatek/widget/ChartSweepView;->mValue:J

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 346
    iget-object v2, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 343
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 346
    goto :goto_0
.end method

.method public shouldAdjustAxis()I
    .locals 4

    .prologue
    .line 564
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/settings/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method

.method public updateValueFromPosition()V
    .locals 6

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/mediatek/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 554
    .local v2, "parentContent":Landroid/graphics/Rect;
    iget v3, p0, Lcom/mediatek/widget/ChartSweepView;->mFollowAxis:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 556
    .local v1, "effectiveY":F
    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v3, v1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/widget/ChartSweepView;->setValue(J)V

    .line 552
    .end local v1    # "effectiveY":F
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartSweepView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/mediatek/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 559
    .local v0, "effectiveX":F
    iget-object v3, p0, Lcom/mediatek/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v3, v0}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/widget/ChartSweepView;->setValue(J)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
