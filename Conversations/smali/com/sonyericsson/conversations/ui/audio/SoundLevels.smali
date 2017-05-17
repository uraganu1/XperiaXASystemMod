.class public Lcom/sonyericsson/conversations/ui/audio/SoundLevels;
.super Landroid/view/View;
.source "SoundLevels.java"


# instance fields
.field private mCenterDefined:Z

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentVolume:F

.field private mIsEnabled:Z

.field private mLevelSource:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

.field private final mMaximumLevelSize:F

.field private final mMinimumLevel:F

.field private final mMinimumLevelSize:F

.field private final mPrimaryLevelPaint:Landroid/graphics/Paint;

.field private final mSpeechLevelsAnimator:Landroid/animation/TimeAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v1, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mLevelSource:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mLevelSource:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;->setSpeechLevel(I)V

    .line 86
    sget-object v1, Lcom/sonyericsson/conversations/R$styleable;->SoundLevels:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mMaximumLevelSize:F

    .line 91
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mMinimumLevelSize:F

    .line 93
    iget v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mMinimumLevelSize:F

    iget v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mMaximumLevelSize:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mMinimumLevel:F

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mPrimaryLevelPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mPrimaryLevelPaint:Landroid/graphics/Paint;

    .line 97
    const/4 v2, 0x2

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 96
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mPrimaryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    new-instance v1, Landroid/animation/TimeAnimator;

    invoke-direct {v1}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mSpeechLevelsAnimator:Landroid/animation/TimeAnimator;

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mSpeechLevelsAnimator:Landroid/animation/TimeAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/TimeAnimator;->setRepeatCount(I)V

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mSpeechLevelsAnimator:Landroid/animation/TimeAnimator;

    new-instance v2, Lcom/sonyericsson/conversations/ui/audio/SoundLevels$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels$1;-><init>(Lcom/sonyericsson/conversations/ui/audio/SoundLevels;)V

    invoke-virtual {v1, v2}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 79
    return-void
.end method

.method private startSpeechLevelsAnimator()V
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "startAnimator()"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mSpeechLevelsAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mSpeechLevelsAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 152
    :cond_1
    return-void
.end method

.method private stopSpeechLevelsAnimator()V
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "stopAnimator()"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mSpeechLevelsAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mSpeechLevelsAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 161
    :cond_1
    return-void
.end method

.method private updateSpeechLevelsAnimatorState()V
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->startSpeechLevelsAnimator()V

    .line 190
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->stopSpeechLevelsAnimator()V

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->stopSpeechLevelsAnimator()V

    .line 171
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 119
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mIsEnabled:Z

    if-nez v2, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCenterDefined:Z

    if-nez v2, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCenterX:I

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCenterY:I

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCenterDefined:Z

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mLevelSource:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;->getSpeechLevel()I

    move-result v0

    .line 134
    .local v0, "level":I
    int-to-float v2, v0

    iget v3, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCurrentVolume:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 135
    iget v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCurrentVolume:F

    int-to-float v3, v0

    iget v4, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCurrentVolume:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCurrentVolume:F

    .line 140
    :goto_0
    iget v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mMinimumLevel:F

    iget v3, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mMinimumLevel:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    iget v4, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCurrentVolume:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 141
    .local v1, "radius":F
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mPrimaryLevelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCenterY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mMaximumLevelSize:F

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mPrimaryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 118
    return-void

    .line 137
    .end local v1    # "radius":F
    :cond_2
    iget v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCurrentVolume:F

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mCurrentVolume:F

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 204
    const-class v0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mIsEnabled:Z

    if-ne p1, v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 184
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mIsEnabled:Z

    .line 186
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->setKeepScreenOn(Z)V

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->updateSpeechLevelsAnimatorState()V

    .line 177
    return-void
.end method

.method public setLevelSource(Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;)V
    .locals 1
    .param p1, "source"    # Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    .prologue
    .line 146
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 147
    const-string/jumbo v0, "Speech source set."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->mLevelSource:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    .line 145
    return-void
.end method
