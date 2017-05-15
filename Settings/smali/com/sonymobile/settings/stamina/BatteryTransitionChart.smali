.class public Lcom/sonymobile/settings/stamina/BatteryTransitionChart;
.super Landroid/view/View;
.source "BatteryTransitionChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;,
        Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;
    }
.end annotation


# instance fields
.field final mAmpmLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;",
            ">;"
        }
    .end annotation
.end field

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mBatteryBroadcast:Landroid/content/Intent;

.field mBatteryLevel:I

.field final mBorderBottomPaint:Landroid/graphics/Paint;

.field final mBorderPaint:Landroid/graphics/Paint;

.field mChartMinHeight:I

.field mDischarging:Z

.field mEightyPercentLabelString:Ljava/lang/String;

.field mEightyPercentLabelStringWidth:I

.field mEndDataWallTime:J

.field mEndWallTime:J

.field mFortyPercentLabelString:Ljava/lang/String;

.field mFortyPercentLabelStringWidth:I

.field mHistDataEnd:J

.field mHistEnd:J

.field mHistStart:J

.field mLastHeight:I

.field mLastWidth:I

.field mLevelBottom:I

.field mLevelLeft:I

.field mLevelOffset:I

.field mLevelRight:I

.field mLevelTop:I

.field mMaxPercentLabelString:Ljava/lang/String;

.field mMaxPercentLabelStringWidth:I

.field mMinPercentLabelString:Ljava/lang/String;

.field mMinPercentLabelStringWidth:I

.field mNumHist:I

.field mPathStartPos:I

.field mRemainingTime:J

.field mSixtyPercentLabelString:Ljava/lang/String;

.field mSixtyPercentLabelStringWidth:I

.field mStartWallTime:J

.field mStats:Landroid/os/BatteryStats;

.field final mStressTextPaint:Landroid/text/TextPaint;

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field final mTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field mTwentyPercentLabelString:Ljava/lang/String;

.field mTwentyPercentLabelStringWidth:I

.field mUnitPercentLabelString:Ljava/lang/String;

.field mUnitPercentLabelStringWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x1

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v10}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    .line 60
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v10}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStressTextPaint:Landroid/text/TextPaint;

    .line 61
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBorderPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBorderBottomPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 89
    iput v6, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLastWidth:I

    .line 90
    iput v6, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLastHeight:I

    .line 113
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mAmpmLabels:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    .line 157
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 158
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBorderPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBorderPaint:Landroid/graphics/Paint;

    const v6, 0x7f0e006c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBorderBottomPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBorderBottomPaint:Landroid/graphics/Paint;

    .line 162
    const v6, 0x7f0e006d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 161
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    const v5, 0x7f0e006b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 165
    .local v0, "defaultColor":I
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 166
    .local v4, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010435

    invoke-virtual {v5, v6, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 167
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 169
    .local v2, "stressColor":I
    const v5, 0x7f0c00d3

    .line 168
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 171
    .local v3, "textSize":I
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 172
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStressTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 174
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 178
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStressTextPaint:Landroid/text/TextPaint;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 180
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 181
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStressTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 184
    const v5, 0x7f0c00d4

    .line 183
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mChartMinHeight:I

    .line 151
    return-void
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->isLayoutRtl()Z

    move-result v12

    .line 522
    .local v12, "layoutRtl":Z
    if-eqz v12, :cond_0

    move/from16 v22, p2

    .line 523
    .local v22, "textStartX":I
    :goto_0
    if-eqz v12, :cond_1

    const/16 v19, 0x0

    .line 524
    .local v19, "textEndX":I
    :goto_1
    if-eqz v12, :cond_2

    sget-object v17, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 525
    .local v17, "textAlignLeft":Landroid/graphics/Paint$Align;
    :goto_2
    if-eqz v12, :cond_3

    sget-object v18, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 526
    .local v18, "textAlignRight":Landroid/graphics/Paint$Align;
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    sub-int v13, v1, v2

    .line 527
    .local v13, "levelHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    sub-int v14, v1, v2

    .line 528
    .local v14, "levelWidth":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    sub-int v20, v1, v2

    .line 530
    .local v20, "textHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelStringWidth:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMinPercentLabelStringWidth:I

    sub-int v7, v1, v2

    .line 532
    .local v7, "canvasLeft":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    const/4 v1, 0x5

    if-ge v8, v1, :cond_4

    .line 533
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v2, v13, 0x5

    mul-int/2addr v2, v8

    add-int v24, v1, v2

    .line 534
    .local v24, "y":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelRight:I

    int-to-float v4, v1

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 532
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 522
    .end local v7    # "canvasLeft":I
    .end local v8    # "i":I
    .end local v13    # "levelHeight":I
    .end local v14    # "levelWidth":I
    .end local v17    # "textAlignLeft":Landroid/graphics/Paint$Align;
    .end local v18    # "textAlignRight":Landroid/graphics/Paint$Align;
    .end local v19    # "textEndX":I
    .end local v20    # "textHeight":I
    .end local v22    # "textStartX":I
    .end local v24    # "y":I
    :cond_0
    const/16 v22, 0x0

    .restart local v22    # "textStartX":I
    goto :goto_0

    .line 523
    :cond_1
    move/from16 v19, p2

    .restart local v19    # "textEndX":I
    goto :goto_1

    .line 524
    :cond_2
    sget-object v17, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .restart local v17    # "textAlignLeft":Landroid/graphics/Paint$Align;
    goto :goto_2

    .line 525
    :cond_3
    sget-object v18, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .restart local v18    # "textAlignRight":Landroid/graphics/Paint$Align;
    goto :goto_3

    .line 536
    .restart local v7    # "canvasLeft":I
    .restart local v8    # "i":I
    .restart local v13    # "levelHeight":I
    .restart local v14    # "levelWidth":I
    .restart local v20    # "textHeight":I
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelRight:I

    int-to-float v4, v1

    .line 537
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBorderBottomPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 536
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    .line 544
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    div-int/lit8 v2, v20, 0x3

    add-int v24, v1, v2

    .line 545
    .restart local v24    # "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 546
    const/4 v11, 0x0

    .line 547
    .local v11, "lastX":I
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_a

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;

    .line 549
    .local v10, "label":Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;
    if-nez v8, :cond_7

    .line 550
    iget v1, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->x:I

    iget v2, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v23, v1, v2

    .line 551
    .local v23, "x":I
    if-gez v23, :cond_5

    .line 552
    const/16 v23, 0x0

    .line 554
    :cond_5
    iget-object v1, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 555
    iget v1, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->width:I

    add-int v11, v23, v1

    .line 547
    :cond_6
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 556
    .end local v23    # "x":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_8

    .line 557
    iget v1, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->x:I

    iget v2, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v23, v1, v2

    .line 558
    .restart local v23    # "x":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    add-int/2addr v1, v11

    move/from16 v0, v23

    if-lt v0, v1, :cond_6

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;

    .line 562
    .local v16, "nextLabel":Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;
    move-object/from16 v0, v16

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->width:I

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    sub-int/2addr v1, v2

    move/from16 v0, v23

    if-gt v0, v1, :cond_6

    .line 565
    iget-object v1, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 566
    iget v1, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->width:I

    add-int v11, v23, v1

    goto :goto_6

    .line 568
    .end local v16    # "nextLabel":Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;
    .end local v23    # "x":I
    :cond_8
    iget v1, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->x:I

    iget v2, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v23, v1, v2

    .line 569
    .restart local v23    # "x":I
    iget v1, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->width:I

    add-int v1, v1, v23

    move/from16 v0, p2

    if-lt v1, v0, :cond_9

    .line 570
    add-int/lit8 v1, p2, -0x1

    iget v2, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v23, v1, v2

    .line 572
    :cond_9
    iget-object v1, v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStressTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 578
    .end local v10    # "label":Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;
    .end local v11    # "lastX":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mAmpmLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_10

    .line 579
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    add-int v1, v1, v20

    div-int/lit8 v2, v20, 0x3

    add-int v24, v1, v2

    .line 580
    .restart local v24    # "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 581
    const/4 v11, 0x0

    .line 582
    .restart local v11    # "lastX":I
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mAmpmLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_10

    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mAmpmLabels:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;

    .line 584
    .local v9, "label":Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;
    if-nez v8, :cond_d

    .line 585
    iget v1, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->x:I

    iget v2, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v23, v1, v2

    .line 586
    .restart local v23    # "x":I
    if-gez v23, :cond_b

    .line 587
    const/16 v23, 0x0

    .line 589
    :cond_b
    iget-object v1, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->label:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 590
    iget v1, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->width:I

    add-int v11, v23, v1

    .line 582
    .end local v23    # "x":I
    :cond_c
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 591
    :cond_d
    rem-int/lit8 v1, v8, 0x2

    if-nez v1, :cond_c

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mAmpmLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_e

    .line 594
    iget v1, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->x:I

    iget v2, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v23, v1, v2

    .line 595
    .restart local v23    # "x":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    add-int/2addr v1, v11

    move/from16 v0, v23

    if-lt v0, v1, :cond_c

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mAmpmLabels:Ljava/util/ArrayList;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;

    .line 599
    .local v15, "nextLabel":Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;
    iget v1, v15, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->width:I

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    sub-int/2addr v1, v2

    move/from16 v0, v23

    if-gt v0, v1, :cond_c

    .line 602
    iget-object v1, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->label:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 603
    iget v1, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->width:I

    add-int v11, v23, v1

    goto :goto_8

    .line 605
    .end local v15    # "nextLabel":Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;
    .end local v23    # "x":I
    :cond_e
    iget v1, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->x:I

    iget v2, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v23, v1, v2

    .line 606
    .restart local v23    # "x":I
    iget v1, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->width:I

    add-int v1, v1, v23

    move/from16 v0, p2

    if-lt v1, v0, :cond_f

    .line 607
    add-int/lit8 v1, p2, -0x1

    iget v2, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v23, v1, v2

    .line 609
    :cond_f
    iget-object v1, v9, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;->label:Ljava/lang/String;

    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStressTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 615
    .end local v9    # "label":Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;
    .end local v11    # "lastX":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    add-int/2addr v1, v2

    div-int/lit8 v21, v1, 0x2

    .line 617
    .local v21, "textMargin":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelString:Ljava/lang/String;

    int-to-float v2, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    sub-int v3, v3, v21

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mUnitPercentLabelString:Ljava/lang/String;

    .line 619
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelStringWidth:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mUnitPercentLabelStringWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 620
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    sub-int v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    .line 618
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEightyPercentLabelString:Ljava/lang/String;

    .line 622
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelStringWidth:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEightyPercentLabelStringWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 623
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    sub-int v3, v3, v21

    div-int/lit8 v4, v13, 0x5

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    .line 621
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mSixtyPercentLabelString:Ljava/lang/String;

    .line 625
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelStringWidth:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mSixtyPercentLabelStringWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 626
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    sub-int v3, v3, v21

    div-int/lit8 v4, v13, 0x5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    .line 624
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mFortyPercentLabelString:Ljava/lang/String;

    .line 628
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelStringWidth:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mFortyPercentLabelStringWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 629
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    sub-int v3, v3, v21

    div-int/lit8 v4, v13, 0x5

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    .line 627
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTwentyPercentLabelString:Ljava/lang/String;

    .line 631
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelStringWidth:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTwentyPercentLabelStringWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 632
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    sub-int v3, v3, v21

    div-int/lit8 v4, v13, 0x5

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    .line 630
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 520
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;I)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "levelh"    # I
    .param p4, "startX"    # I
    .param p5, "y"    # I
    .param p6, "curLevelPath"    # Landroid/graphics/Path;
    .param p7, "lastX"    # I

    .prologue
    .line 315
    if-eqz p6, :cond_1

    .line 316
    if-ltz p7, :cond_0

    if-ge p7, p1, :cond_0

    .line 317
    int-to-float v0, p1

    int-to-float v1, p5

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 319
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 320
    int-to-float v0, p4

    iget v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 321
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 314
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 514
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getWidth()I

    move-result v1

    .line 515
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getHeight()I

    move-result v0

    .line 517
    .local v0, "height":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 511
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 299
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelStringWidth:I

    .line 300
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEightyPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEightyPercentLabelStringWidth:I

    .line 301
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mSixtyPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mSixtyPercentLabelStringWidth:I

    .line 302
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mFortyPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mFortyPercentLabelStringWidth:I

    .line 303
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTwentyPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTwentyPercentLabelStringWidth:I

    .line 304
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMinPercentLabelStringWidth:I

    .line 305
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mUnitPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mUnitPercentLabelStringWidth:I

    .line 306
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    .line 307
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextDescent:I

    .line 308
    iget v1, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextDescent:I

    iget v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    sub-int v0, v1, v2

    .line 309
    .local v0, "textHeight":I
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getDefaultSize(II)I

    move-result v1

    .line 310
    iget v2, p0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mChartMinHeight:I

    add-int/2addr v2, v0

    invoke-static {v2, p2}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getDefaultSize(II)I

    move-result v2

    .line 309
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->setMeasuredDimension(II)V

    .line 298
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 50
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 331
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 333
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLastWidth:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLastHeight:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    .line 334
    return-void

    .line 337
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLastWidth:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLastHeight:I

    if-nez v2, :cond_2

    .line 338
    :cond_1
    return-void

    .line 341
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLastWidth:I

    .line 342
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLastHeight:I

    .line 344
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextAscent:I

    sub-int v37, v2, v4

    .line 346
    .local v37, "textHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/view/WindowManager;

    .line 347
    .local v44, "wm":Landroid/view/WindowManager;
    new-instance v36, Landroid/graphics/Point;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Point;-><init>()V

    .line 348
    .local v36, "size":Landroid/graphics/Point;
    invoke-interface/range {v44 .. v44}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    .line 349
    .local v19, "disp":Landroid/view/Display;
    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 351
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    .line 353
    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ge v2, v4, :cond_8

    .line 354
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMinPercentLabelStringWidth:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    .line 355
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMinPercentLabelStringWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelRight:I

    .line 362
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    sub-int v30, v2, v4

    .line 364
    .local v30, "levelWidth":I
    mul-int/lit8 v2, v37, 0x2

    div-int/lit8 v4, v37, 0x3

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelOffset:I

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mAmpmLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 370
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    move-wide/from16 v42, v0

    .line 371
    .local v42, "walltimeStart":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndWallTime:J

    cmp-long v2, v10, v42

    if-lez v2, :cond_9

    .line 372
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndWallTime:J

    sub-long v40, v10, v42

    .line 373
    .local v40, "walltimeChange":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    .line 374
    .local v20, "curWalltime":J
    const-wide/16 v26, 0x0

    .line 376
    .local v26, "lastRealtime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatLow:I

    move/from16 v18, v0

    .line 377
    .local v18, "batLow":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatLow:I

    sub-int v17, v2, v4

    .line 379
    .local v17, "batChange":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelOffset:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    sub-int v5, v2, v4

    .line 380
    .local v5, "levelh":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelBottom:I

    .line 382
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    .local v3, "x":I
    const/16 v46, 0x0

    .local v46, "y":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    .local v6, "startX":I
    const/4 v9, -0x1

    .local v9, "lastX":I
    const/4 v7, -0x1

    .line 383
    .local v7, "lastY":I
    const/16 v32, 0x0

    .line 384
    .local v32, "oldX":I
    const/16 v33, 0x0

    .line 385
    .local v33, "oldY":I
    const/16 v31, 0x0

    .line 386
    .local v31, "oldBatteryLevel":I
    const/16 v22, 0x0

    .line 387
    .local v22, "i":I
    const/4 v8, 0x0

    .line 388
    .local v8, "curLevelPath":Landroid/graphics/Path;
    const/16 v24, 0x0

    .line 389
    .local v24, "isCreatedMoveTo":Z
    const/16 v25, 0x0

    .line 390
    .local v25, "isNeededMoveTo":Z
    const/16 v23, 0x0

    .line 392
    .local v23, "isCreatedLineTo":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mNumHist:I

    move/from16 v16, v0

    .line 393
    .local v16, "N":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndDataWallTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    cmp-long v2, v10, v12

    if-lez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 394
    new-instance v34, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v34 .. v34}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v34, "rec":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v45, v3

    .line 395
    .end local v3    # "x":I
    .end local v8    # "curLevelPath":Landroid/graphics/Path;
    .local v45, "x":I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_12

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 396
    add-int/lit8 v22, v22, 0x1

    .line 397
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mPathStartPos:I

    move/from16 v0, v22

    if-lt v0, v2, :cond_3

    move-object/from16 v0, v34

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    cmp-long v2, v10, v12

    if-ltz v2, :cond_3

    .line 398
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndDataWallTime:J

    move-object/from16 v0, v34

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v2, v10, v12

    if-ltz v2, :cond_3

    .line 401
    invoke-virtual/range {v34 .. v34}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 402
    const-wide/16 v10, 0x0

    cmp-long v2, v26, v10

    if-nez v2, :cond_4

    .line 403
    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v26, v0

    .line 405
    :cond_4
    move-object/from16 v0, v34

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v10, v10, v26

    add-long v20, v20, v10

    .line 406
    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v26, v0

    .line 407
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    .line 408
    sub-long v10, v20, v42

    move/from16 v0, v30

    int-to-long v12, v0

    mul-long/2addr v10, v12

    div-long v10, v10, v40

    long-to-int v4, v10

    .line 407
    add-int v3, v2, v4

    .line 409
    .end local v45    # "x":I
    .restart local v3    # "x":I
    if-gez v3, :cond_5

    .line 410
    const/4 v3, 0x0

    .line 413
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, v34

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v4, v4, v18

    add-int/lit8 v10, v5, -0x1

    mul-int/2addr v4, v10

    div-int v4, v4, v17

    sub-int v46, v2, v4

    .line 415
    if-eq v9, v3, :cond_6

    .line 417
    move/from16 v0, v46

    if-eq v7, v0, :cond_6

    .line 418
    if-nez v8, :cond_b

    .line 419
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 420
    .local v8, "curLevelPath":Landroid/graphics/Path;
    if-nez v24, :cond_a

    if-eqz v25, :cond_a

    .line 421
    move/from16 v0, v32

    int-to-float v2, v0

    move/from16 v0, v33

    int-to-float v4, v0

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 422
    move/from16 v6, v32

    .line 423
    int-to-float v2, v3

    move/from16 v0, v46

    int-to-float v4, v0

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 424
    const/16 v23, 0x1

    .line 429
    :goto_3
    const/16 v24, 0x1

    .line 430
    const/16 v25, 0x0

    .line 435
    .end local v8    # "curLevelPath":Landroid/graphics/Path;
    :goto_4
    move v9, v3

    .line 436
    move/from16 v7, v46

    .line 468
    :cond_6
    :goto_5
    if-nez v23, :cond_7

    move/from16 v0, v22

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 469
    if-eqz v8, :cond_7

    .line 470
    int-to-float v2, v3

    move/from16 v0, v46

    int-to-float v4, v0

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_7
    move/from16 v45, v3

    .end local v3    # "x":I
    .restart local v45    # "x":I
    goto/16 :goto_2

    .line 357
    .end local v5    # "levelh":I
    .end local v6    # "startX":I
    .end local v7    # "lastY":I
    .end local v9    # "lastX":I
    .end local v16    # "N":I
    .end local v17    # "batChange":I
    .end local v18    # "batLow":I
    .end local v20    # "curWalltime":J
    .end local v22    # "i":I
    .end local v23    # "isCreatedLineTo":Z
    .end local v24    # "isCreatedMoveTo":Z
    .end local v25    # "isNeededMoveTo":Z
    .end local v26    # "lastRealtime":J
    .end local v30    # "levelWidth":I
    .end local v31    # "oldBatteryLevel":I
    .end local v32    # "oldX":I
    .end local v33    # "oldY":I
    .end local v34    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v40    # "walltimeChange":J
    .end local v42    # "walltimeStart":J
    .end local v45    # "x":I
    .end local v46    # "y":I
    :cond_8
    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 358
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelStringWidth:I

    .line 357
    add-int/2addr v2, v4

    .line 358
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMinPercentLabelStringWidth:I

    .line 357
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    .line 359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMinPercentLabelStringWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v10, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v10

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelRight:I

    goto/16 :goto_0

    .line 372
    .restart local v30    # "levelWidth":I
    .restart local v42    # "walltimeStart":J
    :cond_9
    const-wide/16 v40, 0x1

    .restart local v40    # "walltimeChange":J
    goto/16 :goto_1

    .line 426
    .restart local v3    # "x":I
    .restart local v5    # "levelh":I
    .restart local v6    # "startX":I
    .restart local v7    # "lastY":I
    .restart local v8    # "curLevelPath":Landroid/graphics/Path;
    .restart local v9    # "lastX":I
    .restart local v16    # "N":I
    .restart local v17    # "batChange":I
    .restart local v18    # "batLow":I
    .restart local v20    # "curWalltime":J
    .restart local v22    # "i":I
    .restart local v23    # "isCreatedLineTo":Z
    .restart local v24    # "isCreatedMoveTo":Z
    .restart local v25    # "isNeededMoveTo":Z
    .restart local v26    # "lastRealtime":J
    .restart local v31    # "oldBatteryLevel":I
    .restart local v32    # "oldX":I
    .restart local v33    # "oldY":I
    .restart local v34    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v46    # "y":I
    :cond_a
    int-to-float v2, v3

    move/from16 v0, v46

    int-to-float v4, v0

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 427
    move v6, v3

    goto :goto_3

    .line 432
    .end local v8    # "curLevelPath":Landroid/graphics/Path;
    :cond_b
    int-to-float v2, v3

    move/from16 v0, v46

    int-to-float v4, v0

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 433
    const/16 v23, 0x1

    goto :goto_4

    .line 440
    .end local v3    # "x":I
    .restart local v45    # "x":I
    :cond_c
    move-wide/from16 v28, v20

    .line 441
    .local v28, "lastWalltime":J
    move-object/from16 v0, v34

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-eq v2, v4, :cond_d

    .line 442
    move-object/from16 v0, v34

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x7

    if-ne v2, v4, :cond_e

    .line 443
    :cond_d
    move-object/from16 v0, v34

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    cmp-long v2, v10, v12

    if-ltz v2, :cond_11

    .line 444
    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v20, v0

    .line 448
    :goto_6
    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v26, v0

    .line 450
    :cond_e
    move-object/from16 v0, v34

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x6

    if-eq v2, v4, :cond_10

    .line 451
    move-object/from16 v0, v34

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    .line 452
    sub-long v10, v28, v20

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x36ee80

    cmp-long v2, v10, v12

    if-lez v2, :cond_10

    .line 453
    :cond_f
    if-eqz v8, :cond_10

    .line 454
    add-int/lit8 v3, v45, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->finishPaths(IIIIILandroid/graphics/Path;I)V

    .line 455
    const/4 v7, -0x1

    const/4 v9, -0x1

    .line 456
    const/4 v8, 0x0

    .line 459
    :cond_10
    if-nez v24, :cond_18

    .line 460
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    .line 461
    sub-long v10, v20, v42

    move/from16 v0, v30

    int-to-long v12, v0

    mul-long/2addr v10, v12

    div-long v10, v10, v40

    long-to-int v4, v10

    .line 460
    add-int v32, v2, v4

    .line 462
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    add-int/2addr v2, v5

    .line 463
    move-object/from16 v0, v34

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v4, v4, v18

    add-int/lit8 v10, v5, -0x1

    mul-int/2addr v4, v10

    div-int v4, v4, v17

    .line 462
    sub-int v33, v2, v4

    .line 464
    move-object/from16 v0, v34

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v31, v0

    .line 465
    const/16 v25, 0x1

    move/from16 v3, v45

    .end local v45    # "x":I
    .restart local v3    # "x":I
    goto/16 :goto_5

    .line 446
    .end local v3    # "x":I
    .restart local v45    # "x":I
    :cond_11
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    move-object/from16 v0, v34

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistStart:J

    move-wide/from16 v48, v0

    sub-long v12, v12, v48

    add-long v20, v10, v12

    goto :goto_6

    .line 474
    .end local v28    # "lastWalltime":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move/from16 v3, v45

    .line 477
    .end local v34    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v45    # "x":I
    .restart local v3    # "x":I
    :cond_13
    if-ltz v7, :cond_14

    if-gez v9, :cond_16

    .line 479
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    div-int/lit8 v4, v30, 0x2

    add-int v9, v2, v4

    move v3, v9

    .line 480
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryLevel:I

    sub-int v4, v4, v18

    add-int/lit8 v10, v5, -0x1

    mul-int/2addr v4, v10

    div-int v4, v4, v17

    sub-int v7, v2, v4

    move/from16 v46, v7

    .line 487
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    div-int/lit8 v4, v30, 0x2

    add-int v3, v2, v4

    .line 489
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_17

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndWallTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    cmp-long v2, v10, v12

    if-lez v2, :cond_17

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->is24Hour()Z

    move-result v15

    .line 492
    .local v15, "is24hr":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 493
    .local v14, "calStart":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    invoke-virtual {v14, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 494
    const/16 v2, 0xe

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 495
    const/16 v2, 0xd

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 496
    const/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 497
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v38

    .line 498
    .local v38, "startRoundTime":J
    const/16 v35, 0x0

    .local v35, "roop":I
    :goto_8
    const/16 v2, 0x9

    move/from16 v0, v35

    if-ge v0, v2, :cond_17

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v10, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    div-int/lit8 v13, v30, 0x8

    mul-int v13, v13, v35

    add-int/2addr v13, v4

    .line 499
    invoke-direct/range {v10 .. v15}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$TimeLabel;-><init>(Landroid/content/Context;Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    if-nez v15, :cond_15

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mAmpmLabels:Ljava/util/ArrayList;

    new-instance v4, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTextPaint:Landroid/text/TextPaint;

    .line 503
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    div-int/lit8 v12, v30, 0x8

    mul-int v12, v12, v35

    add-int/2addr v11, v12

    .line 502
    invoke-direct {v4, v10, v11, v14}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart$AmpmLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_15
    const/16 v2, 0xb

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    const/16 v4, 0xb

    invoke-virtual {v14, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 498
    add-int/lit8 v35, v35, 0x1

    goto :goto_8

    .line 483
    .end local v14    # "calStart":Ljava/util/Calendar;
    .end local v15    # "is24hr":Z
    .end local v35    # "roop":I
    .end local v38    # "startRoundTime":J
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mLevelLeft:I

    sub-long v10, v20, v42

    move/from16 v0, v30

    int-to-long v12, v0

    mul-long/2addr v10, v12

    div-long v10, v10, v40

    long-to-int v4, v10

    add-int v3, v2, v4

    move-object/from16 v2, p0

    move/from16 v4, p2

    .line 484
    invoke-virtual/range {v2 .. v9}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->finishPaths(IIIIILandroid/graphics/Path;I)V

    goto/16 :goto_7

    .line 330
    :cond_17
    return-void

    .end local v3    # "x":I
    .restart local v28    # "lastWalltime":J
    .restart local v34    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v45    # "x":I
    :cond_18
    move/from16 v3, v45

    .end local v45    # "x":I
    .restart local v3    # "x":I
    goto/16 :goto_5
.end method

.method public setStats(Landroid/os/BatteryStats;Landroid/content/Intent;Z)V
    .locals 30
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "broadcast"    # Landroid/content/Intent;
    .param p3, "usmChart"    # Z

    .prologue
    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStats:Landroid/os/BatteryStats;

    .line 189
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryBroadcast:Landroid/content/Intent;

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v8, v24, v26

    .line 193
    .local v8, "elapsedRealtimeUs":J
    const-string/jumbo v23, "100"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMaxPercentLabelString:Ljava/lang/String;

    .line 194
    const-string/jumbo v23, "80"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEightyPercentLabelString:Ljava/lang/String;

    .line 195
    const-string/jumbo v23, "60"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mSixtyPercentLabelString:Ljava/lang/String;

    .line 196
    const-string/jumbo v23, "40"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mFortyPercentLabelString:Ljava/lang/String;

    .line 197
    const-string/jumbo v23, "20"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mTwentyPercentLabelString:Ljava/lang/String;

    .line 198
    const-string/jumbo v23, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 199
    const-string/jumbo v23, "%"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mUnitPercentLabelString:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryLevel:I

    .line 201
    const-wide/16 v20, 0x0

    .line 202
    .local v20, "remainingTimeUs":J
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mDischarging:Z

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string/jumbo v24, "plugged"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_b

    .line 207
    if-nez p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 208
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmBatteryTimeEstimate(Landroid/content/Context;)I

    move-result v6

    .line 214
    .local v6, "drainTime":I
    :goto_0
    if-lez v6, :cond_1

    .line 215
    mul-int/lit8 v23, v6, 0x3c

    mul-int/lit8 v23, v23, 0x3c

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v20, v24, v26

    .line 227
    .end local v6    # "drainTime":I
    :cond_1
    :goto_1
    const/16 v18, 0x0

    .line 228
    .local v18, "pos":I
    const/4 v10, 0x0

    .line 229
    .local v10, "lastInteresting":I
    const/4 v11, -0x1

    .line 230
    .local v11, "lastLevel":B
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatLow:I

    .line 231
    const/16 v23, 0x64

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatHigh:I

    .line 232
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    .line 233
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndDataWallTime:J

    .line 234
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndWallTime:J

    .line 235
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mPathStartPos:I

    .line 236
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistStart:J

    .line 237
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistEnd:J

    .line 238
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mRemainingTime:J

    .line 239
    const-wide/16 v14, 0x0

    .line 240
    .local v14, "lastWallTime":J
    const-wide/16 v12, 0x0

    .line 241
    .local v12, "lastRealtime":J
    const-wide/16 v16, 0x0

    .line 243
    .local v16, "oldCurrentTime":J
    const/4 v7, 0x1

    .line 245
    .local v7, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 246
    new-instance v19, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v19 .. v19}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 247
    .end local v11    # "lastLevel":B
    .local v19, "rec":Landroid/os/BatteryStats$HistoryItem;
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 248
    add-int/lit8 v18, v18, 0x1

    .line 249
    if-eqz v7, :cond_2

    .line 250
    const/4 v7, 0x0

    .line 251
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistStart:J

    .line 252
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v16, v0

    .line 254
    :cond_2
    move-object/from16 v0, v19

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 255
    move-object/from16 v0, v19

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 264
    :cond_3
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v24, v0

    const-wide v26, 0x39ef8b000L

    add-long v26, v26, v14

    cmp-long v23, v24, v26

    if-gtz v23, :cond_4

    .line 265
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistStart:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x493e0

    add-long v26, v26, v28

    cmp-long v23, v24, v26

    if-gez v23, :cond_5

    .line 266
    :cond_4
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    .line 269
    :cond_5
    move-object/from16 v0, v19

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 270
    move-object/from16 v0, v19

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 271
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_6

    .line 272
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mPathStartPos:I

    .line 273
    move/from16 v10, v18

    .line 274
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistStart:J

    move-wide/from16 v24, v0

    sub-long v24, v12, v24

    sub-long v24, v14, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    .line 277
    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 278
    move-object/from16 v0, v19

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v11, :cond_7

    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 279
    :cond_7
    move-object/from16 v0, v19

    iget-byte v11, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 281
    :cond_8
    move/from16 v10, v18

    .line 282
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistDataEnd:J

    .line 284
    :cond_9
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v16, v0

    goto/16 :goto_2

    .line 210
    .end local v7    # "first":Z
    .end local v10    # "lastInteresting":I
    .end local v12    # "lastRealtime":J
    .end local v14    # "lastWallTime":J
    .end local v16    # "oldCurrentTime":J
    .end local v18    # "pos":I
    .end local v19    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getContext()Landroid/content/Context;

    move-result-object v23

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v24

    .line 210
    invoke-static/range {v23 .. v24}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getBatteryTimeEstimate(Landroid/content/Context;Z)I

    move-result v6

    .restart local v6    # "drainTime":I
    goto/16 :goto_0

    .line 218
    .end local v6    # "drainTime":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v4

    .line 219
    .local v4, "chargeTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string/jumbo v24, "status"

    .line 220
    const/16 v25, 0x1

    .line 219
    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 221
    .local v22, "status":I
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mDischarging:Z

    .line 222
    const-wide/16 v24, 0x0

    cmp-long v23, v4, v24

    if-lez v23, :cond_1

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 223
    move-wide/from16 v20, v4

    goto/16 :goto_1

    .line 287
    .end local v4    # "chargeTime":J
    .end local v22    # "status":I
    .restart local v7    # "first":Z
    .restart local v10    # "lastInteresting":I
    .restart local v12    # "lastRealtime":J
    .restart local v14    # "lastWallTime":J
    .restart local v16    # "oldCurrentTime":J
    .restart local v18    # "pos":I
    :cond_c
    const-wide/16 v24, 0x3e8

    div-long v24, v20, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mRemainingTime:J

    .line 288
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndDataWallTime:J

    .line 289
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndDataWallTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndWallTime:J

    .line 290
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mEndDataWallTime:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0xa4cb800

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mStartWallTime:J

    .line 291
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistDataEnd:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mRemainingTime:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistEnd:J

    .line 292
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mNumHist:I

    .line 294
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistEnd:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistStart:J

    move-wide/from16 v26, v0

    cmp-long v23, v24, v26

    if-gtz v23, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistStart:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/settings/stamina/BatteryTransitionChart;->mHistEnd:J

    .line 187
    :cond_d
    return-void
.end method
