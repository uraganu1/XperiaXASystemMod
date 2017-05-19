.class public Lcom/android/incallui/ZoomControlBar;
.super Lcom/android/incallui/ZoomControl;
.source "ZoomControlBar.java"


# static fields
.field private static mSliderPosition:I


# instance fields
.field private mBar:Landroid/view/View;

.field private mIconWidth:I

.field private mSliderLength:I

.field private mStartChanging:Z

.field private mTotalIconWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/ZoomControlBar;->mSliderPosition:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    const v1, 0x7f020144

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    iget-object v0, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/incallui/ZoomControlBar;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method private getSliderPosition(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 63
    iget v1, p0, Lcom/android/incallui/ZoomControlBar;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    .line 64
    iget v1, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    iget v2, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .line 68
    .local v0, "pos":I
    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :cond_0
    iget v1, p0, Lcom/android/incallui/ZoomControlBar;->mSliderLength:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mSliderLength:I

    .line 70
    :cond_1
    return v0

    .line 66
    .end local v0    # "pos":I
    :cond_2
    iget v1, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    sub-int v0, p1, v1

    .restart local v0    # "pos":I
    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControlBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    if-nez v3, :cond_1

    :cond_0
    return v4

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 86
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return v8

    .line 90
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/incallui/ZoomControlBar;->setActivated(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControlBar;->closeZoomControl()V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/incallui/ZoomControlBar;->setActivated(Z)V

    .line 96
    iput-boolean v4, p0, Lcom/android/incallui/ZoomControlBar;->mStartChanging:Z

    .line 98
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/incallui/ZoomControlBar;->getSliderPosition(I)I

    move-result v2

    .line 99
    .local v2, "pos":I
    iget-boolean v3, p0, Lcom/android/incallui/ZoomControlBar;->mStartChanging:Z

    if-nez v3, :cond_3

    .line 102
    sget v3, Lcom/android/incallui/ZoomControlBar;->mSliderPosition:I

    sub-int v1, v3, v2

    .line 103
    .local v1, "delta":I
    const/16 v3, 0xa

    if-gt v1, v3, :cond_2

    .line 104
    const/16 v3, -0xa

    if-ge v1, v3, :cond_3

    .line 105
    :cond_2
    iput-boolean v8, p0, Lcom/android/incallui/ZoomControlBar;->mStartChanging:Z

    .line 108
    .end local v1    # "delta":I
    :cond_3
    iget-boolean v3, p0, Lcom/android/incallui/ZoomControlBar;->mStartChanging:Z

    if-eqz v3, :cond_4

    .line 109
    int-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/android/incallui/ZoomControlBar;->mSliderLength:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/ZoomControlBar;->performZoom(D)V

    .line 110
    sput v2, Lcom/android/incallui/ZoomControlBar;->mSliderPosition:I

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControlBar;->requestLayout()V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 120
    iget v4, p0, Lcom/android/incallui/ZoomControlBar;->mZoomMax:I

    if-nez v4, :cond_0

    return-void

    .line 121
    :cond_0
    sub-int v0, p5, p3

    .line 122
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    iget v5, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    iget v6, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    iget v7, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v8, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 127
    sget v4, Lcom/android/incallui/ZoomControlBar;->mSliderPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 128
    sget v2, Lcom/android/incallui/ZoomControlBar;->mSliderPosition:I

    .line 132
    .local v2, "sliderPosition":I
    :goto_0
    iget v4, p0, Lcom/android/incallui/ZoomControlBar;->mOrientation:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_2

    .line 133
    iget-object v4, p0, Lcom/android/incallui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    invoke-virtual {v4, v8, v8, v5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 134
    iget-object v4, p0, Lcom/android/incallui/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    iget v6, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    invoke-virtual {v4, v5, v8, v6, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 135
    iget-object v4, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v1, v4, v2

    .line 141
    .local v1, "pos":I
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 142
    .local v3, "sliderWidth":I
    iget-object v4, p0, Lcom/android/incallui/ZoomControlBar;->mZoomSlider:Landroid/widget/ImageView;

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v1, v5

    .line 143
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v1

    .line 142
    invoke-virtual {v4, v5, v8, v6, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 119
    return-void

    .line 130
    .end local v1    # "pos":I
    .end local v2    # "sliderPosition":I
    .end local v3    # "sliderWidth":I
    :cond_1
    iget v4, p0, Lcom/android/incallui/ZoomControlBar;->mSliderLength:I

    int-to-double v4, v4

    iget v6, p0, Lcom/android/incallui/ZoomControlBar;->mZoomIndex:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/android/incallui/ZoomControlBar;->mZoomMax:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .restart local v2    # "sliderPosition":I
    goto :goto_0

    .line 137
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/ZoomControlBar;->mZoomOut:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    invoke-virtual {v4, v8, v8, v5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 138
    iget-object v4, p0, Lcom/android/incallui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    iget v6, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    invoke-virtual {v4, v5, v8, v6, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 139
    iget-object v4, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v1, v4, v2

    .restart local v1    # "pos":I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    .line 76
    iget-object v0, p0, Lcom/android/incallui/ZoomControlBar;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    .line 77
    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mIconWidth:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    .line 78
    iget v0, p0, Lcom/android/incallui/ZoomControlBar;->mWidth:I

    iget v1, p0, Lcom/android/incallui/ZoomControlBar;->mTotalIconWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/ZoomControlBar;->mSliderLength:I

    .line 74
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/incallui/ZoomControl;->setActivated(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/incallui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 52
    return-void
.end method
