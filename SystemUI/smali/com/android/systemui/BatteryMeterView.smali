.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$BatteryTracker;,
        Lcom/android/systemui/BatteryMeterView$SettingObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mCriticalLevel:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIconTint:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private final mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private final mShapePathUnion:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mIconTint:I

    .line 72
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 74
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    .line 75
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 76
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    .line 78
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    .line 80
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mShapePathUnion:Landroid/graphics/Path;

    .line 81
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    .line 82
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    .line 92
    new-instance v8, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 93
    new-instance v8, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-direct {v8, p0}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 447
    new-instance v8, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 107
    .local v7, "res":Landroid/content/res/Resources;
    sget-object v8, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    .line 108
    const/4 v9, 0x0

    .line 107
    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 110
    .local v1, "atts":Landroid/content/res/TypedArray;
    const v8, 0x7f0b0007

    invoke-virtual {p1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 109
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 111
    .local v4, "frameColor":I
    const v8, 0x7f080002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 112
    .local v6, "levels":Landroid/content/res/TypedArray;
    const v8, 0x7f080003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 114
    .local v2, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 115
    .local v0, "N":I
    mul-int/lit8 v8, v0, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    .line 116
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 117
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v9, v5, 0x2

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    aput v10, v8, v9

    .line 118
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v9, v5, 0x2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    aput v10, v8, v9

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    const v8, 0x7f0901a0

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 124
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 125
    const v9, 0x10e004d

    .line 124
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 127
    const v9, 0x7f0f0002

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 126
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 129
    const v9, 0x7f0f0003

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 128
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 131
    const v9, 0x7f0f0004

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 130
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    .line 133
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    .line 134
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 136
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 141
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 145
    const-string/jumbo v8, "sans-serif-condensed"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 146
    .local v3, "font":Landroid/graphics/Typeface;
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 147
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 149
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    const-string/jumbo v8, "sans-serif"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 152
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 153
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 155
    const v8, 0x7f0b0008

    invoke-virtual {p1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 157
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const v9, 0x7f0b0009

    invoke-virtual {p1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    invoke-static {v7}, Lcom/android/systemui/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    .line 162
    const v8, 0x7f0b0041

    invoke-virtual {p1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 161
    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    .line 163
    const v8, 0x7f0b0042

    invoke-virtual {p1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    .line 165
    const v8, 0x7f0b0044

    invoke-virtual {p1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 164
    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 166
    const v8, 0x7f0b0045

    invoke-virtual {p1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 103
    return-void
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 265
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    .line 264
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 274
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 238
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v2, v3, v1

    .line 239
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 240
    if-gt p1, v2, :cond_1

    .line 243
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_0

    .line 244
    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mIconTint:I

    return v3

    .line 246
    :cond_0
    return v0

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 250
    .end local v2    # "thresh":I
    :cond_2
    return v0
.end method

.method private getFillColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 270
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    .line 269
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 207
    const v5, 0x7f080004

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 208
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 209
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 210
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 211
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 209
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 213
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 214
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 215
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 216
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 214
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 218
    :cond_1
    return-object v4
.end method

.method private updateShowPercent()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 231
    const-string/jumbo v2, "status_bar_show_battery_percent"

    .line 230
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 229
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 451
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 453
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 454
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    .line 458
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "level":Ljava/lang/String;
    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 462
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 464
    :cond_3
    if-eqz v1, :cond_4

    .line 465
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 467
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v28, v0

    .line 280
    .local v28, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_0
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v20, v0

    .line 283
    .local v20, "level":I
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    invoke-static {v4, v6}, Lcom/mediatek/systemui/statusbar/util/BatteryHelper;->isPlugForProtection(II)Z

    move-result v22

    .line 285
    :goto_1
    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_2

    return-void

    .line 279
    .end local v20    # "level":I
    .end local v28    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v28, v0

    .restart local v28    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    goto :goto_0

    .line 283
    .restart local v20    # "level":I
    :cond_1
    const/16 v22, 0x0

    .local v22, "mChargingProtection":Z
    goto :goto_1

    .line 287
    .end local v22    # "mChargingProtection":Z
    :cond_2
    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v17, v4, v6

    .line 288
    .local v17, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v27

    .line 289
    .local v27, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v25

    .line 290
    .local v25, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingRight()I

    move-result v26

    .line 291
    .local v26, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v23

    .line 292
    .local v23, "pb":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    sub-int v4, v4, v27

    sub-int v18, v4, v23

    .line 293
    .local v18, "height":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    sub-int v4, v4, v25

    sub-int v29, v4, v26

    .line 295
    .local v29, "width":I
    if-eqz v22, :cond_3

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    invoke-static {v4}, Lcom/mediatek/systemui/statusbar/util/BatteryHelper;->isWirelessCharging(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    sub-int v4, v4, v27

    sub-int v4, v4, v23

    int-to-double v6, v4

    const-wide v32, 0x3fee666666666666L    # 0.95

    mul-double v6, v6, v32

    double-to-int v0, v6

    move/from16 v18, v0

    .line 300
    :cond_3
    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v16, v0

    .line 302
    .local v16, "buttonHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v29

    int-to-float v10, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v4, v6, v7, v10, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v25

    int-to-float v6, v0

    move/from16 v0, v27

    int-to-float v7, v0

    invoke-virtual {v4, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 307
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move/from16 v0, v29

    int-to-float v7, v0

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 308
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 309
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3e800000    # 0.25f

    mul-float v32, v32, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v10, v10, v32

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    .line 306
    move/from16 v0, v32

    invoke-virtual {v4, v6, v7, v10, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move/from16 v0, v16

    int-to-float v7, v0

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 324
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v28

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    :goto_2
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    const/16 v4, 0x60

    move/from16 v0, v20

    if-lt v0, v4, :cond_7

    .line 327
    const/high16 v17, 0x3f800000    # 1.0f

    .line 332
    :cond_4
    :goto_3
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v17, v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    .line 336
    .local v21, "levelTop":F
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 348
    if-eqz v22, :cond_a

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40900000    # 4.5f

    div-float/2addr v6, v7

    add-float v12, v4, v6

    .line 351
    .local v12, "bl":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    add-float v15, v4, v6

    .line 352
    .local v15, "bt":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40e00000    # 7.0f

    div-float/2addr v6, v7

    sub-float v14, v4, v6

    .line 353
    .local v14, "br":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    sub-float v11, v4, v6

    .line 354
    .local v11, "bb":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v12

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v15

    if-eqz v4, :cond_9

    .line 356
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, v12, v15, v14, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 359
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 360
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v32, 0x1

    aget v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v10, v10, v32

    add-float/2addr v7, v10

    .line 358
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 361
    const/16 v19, 0x2

    .local v19, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_d

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 363
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    aget v7, v7, v19

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 364
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    add-int/lit8 v32, v19, 0x1

    aget v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v10, v10, v32

    add-float/2addr v7, v10

    .line 362
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 361
    add-int/lit8 v19, v19, 0x2

    goto :goto_5

    .line 324
    .end local v11    # "bb":F
    .end local v12    # "bl":F
    .end local v14    # "br":F
    .end local v15    # "bt":F
    .end local v19    # "i":I
    .end local v21    # "levelTop":F
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v4

    goto/16 :goto_2

    .line 328
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v20

    if-gt v0, v4, :cond_4

    .line 329
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 333
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, v17

    mul-float/2addr v6, v7

    add-float v21, v4, v6

    .restart local v21    # "levelTop":F
    goto/16 :goto_4

    .line 355
    .restart local v11    # "bb":F
    .restart local v12    # "bl":F
    .restart local v14    # "br":F
    .restart local v15    # "bt":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v14

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v11

    if-nez v4, :cond_5

    .line 371
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    div-float v13, v4, v6

    .line 372
    .local v13, "boltPct":F
    const/4 v4, 0x0

    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 373
    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_e

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 382
    :goto_7
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    invoke-static {v4}, Lcom/mediatek/systemui/statusbar/util/BatteryHelper;->isWirelessCharging(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 384
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v6, v4

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->right:F

    .line 386
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v8, v4

    .line 387
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    .line 383
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 393
    .end local v11    # "bb":F
    .end local v12    # "bl":F
    .end local v13    # "boltPct":F
    .end local v14    # "br":F
    .end local v15    # "bt":F
    :cond_a
    const/16 v24, 0x0

    .line 394
    .local v24, "pctOpaque":Z
    const/4 v8, 0x0

    .local v8, "pctX":F
    const/4 v9, 0x0

    .line 395
    .local v9, "pctY":F
    const/4 v5, 0x0

    .line 396
    .local v5, "pctText":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v20

    if-le v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    if-eqz v4, :cond_b

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    int-to-float v7, v0

    .line 400
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v10, 0x64

    if-ne v4, v10, :cond_f

    const v4, 0x3ec28f5c    # 0.38f

    .line 398
    :goto_8
    mul-float/2addr v4, v7

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    .line 402
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "pctText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v8, v4, v6

    .line 404
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    add-float/2addr v4, v6

    const v6, 0x3ef0a3d7    # 0.47f

    mul-float v9, v4, v6

    .line 405
    cmpl-float v4, v21, v9

    if-lez v4, :cond_10

    const/16 v24, 0x1

    .line 406
    :goto_9
    if-nez v24, :cond_b

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 415
    .end local v5    # "pctText":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePathUnion:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePathUnion:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePathUnion:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePathUnion:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 428
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v4, :cond_c

    .line 429
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v20

    if-gt v0, v4, :cond_11

    .line 431
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v30, v4, v6

    .line 432
    .local v30, "x":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    add-float/2addr v4, v6

    const v6, 0x3ef5c28f    # 0.48f

    mul-float v31, v4, v6

    .line 433
    .local v31, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    .end local v30    # "x":F
    .end local v31    # "y":F
    :cond_c
    :goto_a
    return-void

    .line 366
    .end local v8    # "pctX":F
    .end local v9    # "pctY":F
    .end local v24    # "pctOpaque":Z
    .restart local v11    # "bb":F
    .restart local v12    # "bl":F
    .restart local v14    # "br":F
    .restart local v15    # "bt":F
    .restart local v19    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 368
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v32, 0x1

    aget v10, v10, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v10, v10, v32

    add-float/2addr v7, v10

    .line 366
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_6

    .line 378
    .end local v19    # "i":I
    .restart local v13    # "boltPct":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_7

    .line 400
    .end local v11    # "bb":F
    .end local v12    # "bl":F
    .end local v13    # "boltPct":F
    .end local v14    # "br":F
    .end local v15    # "bt":F
    .local v5, "pctText":Ljava/lang/String;
    .restart local v8    # "pctX":F
    .restart local v9    # "pctY":F
    .restart local v24    # "pctOpaque":Z
    :cond_f
    const/high16 v4, 0x3f000000    # 0.5f

    goto/16 :goto_8

    .line 405
    .local v5, "pctText":Ljava/lang/String;
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_9

    .line 434
    .end local v5    # "pctText":Ljava/lang/String;
    :cond_11
    if-eqz v24, :cond_c

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 171
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 177
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 170
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 185
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 223
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    .line 224
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    .line 225
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    .line 222
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 192
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;->getBackgroundColor(F)I

    move-result v0

    .line 255
    .local v0, "backgroundColor":I
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;->getFillColor(F)I

    move-result v1

    .line 256
    .local v1, "fillColor":I
    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mIconTint:I

    .line 257
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    .line 253
    return-void
.end method
