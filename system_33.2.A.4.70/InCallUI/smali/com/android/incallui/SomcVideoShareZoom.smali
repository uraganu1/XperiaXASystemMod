.class public Lcom/android/incallui/SomcVideoShareZoom;
.super Landroid/widget/RelativeLayout;
.source "SomcVideoShareZoom.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mCircleSize:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mListener:Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;

.field private mMaxCircle:F

.field private mMaxPosition:Landroid/graphics/Point;

.field private mMaxZoom:I

.field private mMinCircle:F

.field private mMinPosition:Landroid/graphics/Point;

.field private mThumbBase:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/SomcVideoShareZoom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinPosition:Landroid/graphics/Point;

    .line 36
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxPosition:Landroid/graphics/Point;

    .line 61
    const-string/jumbo v1, "layout_inflater"

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04004e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    const v1, 0x7f0f00ed

    invoke-virtual {p0, v1}, Lcom/android/incallui/SomcVideoShareZoom;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mThumbBase:Landroid/widget/RelativeLayout;

    .line 64
    invoke-virtual {p0}, Lcom/android/incallui/SomcVideoShareZoom;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinCircle:F

    .line 65
    invoke-virtual {p0}, Lcom/android/incallui/SomcVideoShareZoom;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxCircle:F

    .line 66
    iget v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxCircle:F

    iget v2, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinCircle:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxCircle:F

    .line 67
    invoke-direct {p0}, Lcom/android/incallui/SomcVideoShareZoom;->prepareMinMaxPositions()V

    .line 68
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 57
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private onZoomChanged(I)V
    .locals 4
    .param p1, "current"    # I

    .prologue
    const/4 v3, 0x0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SomcVideoShareZoom;->log(Ljava/lang/String;)V

    .line 128
    if-gez p1, :cond_0

    .line 129
    const/4 p1, 0x0

    .line 131
    :cond_0
    iget v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxZoom:I

    if-le p1, v1, :cond_1

    .line 132
    iget p1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxZoom:I

    .line 137
    :cond_1
    iget v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxZoom:I

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxZoom:I

    div-int v0, v1, v2

    .line 143
    .local v0, "y":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scroll to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SomcVideoShareZoom;->log(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mThumbBase:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 126
    return-void

    .line 140
    .end local v0    # "y":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "y":I
    goto :goto_0
.end method

.method private prepareMinMaxPositions()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxPosition:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/incallui/SomcVideoShareZoom;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 77
    iget-object v0, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinPosition:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/incallui/SomcVideoShareZoom;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 79
    iget-object v0, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/SomcVideoShareZoom;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 79
    add-int/2addr v1, v2

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/SomcVideoShareZoom;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080154

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 79
    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 82
    iget-object v0, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 75
    return-void
.end method


# virtual methods
.method public handleTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/incallui/SomcVideoShareZoom;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 99
    .local v1, "sf":F
    iget v3, p0, Lcom/android/incallui/SomcVideoShareZoom;->mCircleSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v0, v3

    .line 100
    .local v0, "circle":F
    iget v3, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 101
    iget v3, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 102
    iget-object v3, p0, Lcom/android/incallui/SomcVideoShareZoom;->mListener:Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;

    if-eqz v3, :cond_0

    float-to-int v3, v0

    iget v4, p0, Lcom/android/incallui/SomcVideoShareZoom;->mCircleSize:I

    if-eq v3, v4, :cond_0

    .line 103
    float-to-int v3, v0

    iput v3, p0, Lcom/android/incallui/SomcVideoShareZoom;->mCircleSize:I

    .line 104
    iget v3, p0, Lcom/android/incallui/SomcVideoShareZoom;->mCircleSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinCircle:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxZoom:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxCircle:F

    iget v5, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMinCircle:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 105
    .local v2, "zoom":I
    iget-object v3, p0, Lcom/android/incallui/SomcVideoShareZoom;->mListener:Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;

    invoke-interface {v3, v2}, Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 106
    invoke-direct {p0, v2}, Lcom/android/incallui/SomcVideoShareZoom;->onZoomChanged(I)V

    .line 108
    .end local v2    # "zoom":I
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 113
    const-string/jumbo v0, "onScaleBegin"

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcVideoShareZoom;->log(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SomcVideoShareZoom;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/incallui/SomcVideoShareZoom;->invalidate()V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 121
    const-string/jumbo v0, "onScaleEnd"

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcVideoShareZoom;->log(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/incallui/SomcVideoShareZoom;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/incallui/SomcVideoShareZoom;->invalidate()V

    .line 120
    return-void
.end method

.method public setZoomParamReady(FLcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;)V
    .locals 1
    .param p1, "maxZoom"    # F
    .param p2, "zoomListener"    # Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;

    .prologue
    .line 91
    const-string/jumbo v0, "onZoomParamReady"

    invoke-direct {p0, v0}, Lcom/android/incallui/SomcVideoShareZoom;->log(Ljava/lang/String;)V

    .line 92
    float-to-int v0, p1

    iput v0, p0, Lcom/android/incallui/SomcVideoShareZoom;->mMaxZoom:I

    .line 93
    iput-object p2, p0, Lcom/android/incallui/SomcVideoShareZoom;->mListener:Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;

    .line 90
    return-void
.end method
