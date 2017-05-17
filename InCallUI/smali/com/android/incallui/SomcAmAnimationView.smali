.class public Lcom/android/incallui/SomcAmAnimationView;
.super Landroid/view/View;
.source "SomcAmAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;,
        Lcom/android/incallui/SomcAmAnimationView$1;
    }
.end annotation


# instance fields
.field private mAmCircleStrokeAlpha:I

.field private mAmPlayingColor:I

.field private mAmRecordingColor:I

.field private mAnimationAngle:F

.field private mCirclePaint:Landroid/graphics/Paint;

.field private final mDrawRunnable:Ljava/lang/Runnable;

.field private mDurationOfFullCircle:F

.field private mMainHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mPlayingAnimationTotalTime:I

.field private mRectf:Landroid/graphics/RectF;

.field private mRoundColor:I

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/SomcAmAnimationView;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mAnimationAngle:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/SomcAmAnimationView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mDrawRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/SomcAmAnimationView;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mDurationOfFullCircle:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/incallui/SomcAmAnimationView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/incallui/SomcAmAnimationView;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/SomcAmAnimationView;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/SomcAmAnimationView;->mAnimationAngle:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/SomcAmAnimationView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mMainHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/android/incallui/SomcAmAnimationView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SomcAmAnimationView$1;-><init>(Lcom/android/incallui/SomcAmAnimationView;)V

    iput-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mDrawRunnable:Ljava/lang/Runnable;

    .line 68
    invoke-direct {p0}, Lcom/android/incallui/SomcAmAnimationView;->prepareAnimation()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mMainHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/android/incallui/SomcAmAnimationView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SomcAmAnimationView$1;-><init>(Lcom/android/incallui/SomcAmAnimationView;)V

    iput-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mDrawRunnable:Ljava/lang/Runnable;

    .line 73
    invoke-direct {p0}, Lcom/android/incallui/SomcAmAnimationView;->prepareAnimation()V

    .line 71
    return-void
.end method

.method private calculateResumeAngle(F)F
    .locals 3
    .param p1, "millisecond"    # F

    .prologue
    .line 137
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/incallui/SomcAmAnimationView;->mDurationOfFullCircle:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private prepareAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 77
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 78
    const v6, 0x7f080115

    .line 77
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    .line 79
    .local v0, "centerXCoordinate":F
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 80
    const v6, 0x7f080116

    .line 79
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v1, v5

    .line 81
    .local v1, "centerYCoordinate":F
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 82
    const v6, 0x7f080117

    .line 81
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v3, v5

    .line 83
    .local v3, "radius":F
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 84
    const v6, 0x7f080118

    .line 83
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v4, v5

    .line 85
    .local v4, "strokeWidth":F
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 86
    const v6, 0x7f080114

    .line 85
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v2, v5

    .line 88
    .local v2, "circleStrokeWidth":F
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mAmCircleStrokeAlpha:I

    .line 89
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mAmPlayingColor:I

    .line 90
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mAmRecordingColor:I

    .line 91
    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v0, v3

    sub-float v7, v1, v3

    .line 92
    add-float v8, v0, v3

    add-float v9, v1, v3

    .line 91
    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mRectf:Landroid/graphics/RectF;

    .line 94
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 95
    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    .line 100
    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/incallui/SomcAmAnimationView;->mAmCircleStrokeAlpha:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 108
    iget-object v1, p0, Lcom/android/incallui/SomcAmAnimationView;->mRectf:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/incallui/SomcAmAnimationView;->mRoundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v1, p0, Lcom/android/incallui/SomcAmAnimationView;->mRectf:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/incallui/SomcAmAnimationView;->mAnimationAngle:F

    iget-object v5, p0, Lcom/android/incallui/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 107
    return-void
.end method

.method public resetPlayingAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 158
    iput-object v2, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    .line 160
    :cond_0
    iput v1, p0, Lcom/android/incallui/SomcAmAnimationView;->mAnimationAngle:F

    .line 161
    iput v1, p0, Lcom/android/incallui/SomcAmAnimationView;->mDurationOfFullCircle:F

    .line 155
    return-void
.end method

.method public resumePlayingAnimation(F)V
    .locals 6
    .param p1, "resumeTime"    # F

    .prologue
    const/4 v2, 0x0

    .line 123
    iget v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mPlayingAnimationTotalTime:I

    if-lez v0, :cond_1

    .line 124
    iget v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mPlayingAnimationTotalTime:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mDurationOfFullCircle:F

    .line 128
    iget v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mAmPlayingColor:I

    iput v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mRoundColor:I

    .line 129
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcAmAnimationView;->calculateResumeAngle(F)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mAnimationAngle:F

    .line 133
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;-><init>(Lcom/android/incallui/SomcAmAnimationView;Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 122
    return-void

    .line 126
    :cond_1
    return-void
.end method

.method public resumeRecordingAnimation(F)V
    .locals 6
    .param p1, "resumeTime"    # F

    .prologue
    const/4 v2, 0x0

    .line 146
    iget v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mAmRecordingColor:I

    iput v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mRoundColor:I

    .line 147
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mDurationOfFullCircle:F

    .line 148
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcAmAnimationView;->calculateResumeAngle(F)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mAnimationAngle:F

    .line 149
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;-><init>(Lcom/android/incallui/SomcAmAnimationView;Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 145
    return-void
.end method

.method public setPlayingAnimationTotalTime(I)V
    .locals 0
    .param p1, "totalTime"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/incallui/SomcAmAnimationView;->mPlayingAnimationTotalTime:I

    .line 113
    return-void
.end method

.method public startPlayingAnimation(F)V
    .locals 0
    .param p1, "resumeTime"    # F

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->resetPlayingAnimation()V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcAmAnimationView;->resumePlayingAnimation(F)V

    .line 117
    return-void
.end method

.method public startRecordingAnimation(F)V
    .locals 0
    .param p1, "resumeTime"    # F

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/SomcAmAnimationView;->resetPlayingAnimation()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcAmAnimationView;->resumeRecordingAnimation(F)V

    .line 140
    return-void
.end method
