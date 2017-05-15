.class public Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;
.super Landroid/view/View;
.source "ChartBandwidthNetworkSeriesView.java"


# instance fields
.field private mCurrentBytes:[J

.field private mCurrentLen:I

.field private mEndTime:J

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mMax:J

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mStats:Landroid/net/NetworkStats;

.field private mTotalUsed:J

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mEndTime:J

    .line 62
    iput-boolean v4, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    .line 77
    sget-object v2, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    .line 76
    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/high16 v3, -0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 79
    .local v1, "stroke":I
    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->setSeriesColor(I)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->setWillNotDraw(Z)V

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 83
    const/16 v2, 0x5a

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    .line 84
    iput v4, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    .line 74
    return-void
.end method


# virtual methods
.method public generatePath()V
    .locals 18

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->getMaxBytes()J

    move-result-wide v6

    .line 122
    .local v6, "range":J
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    .line 123
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 126
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    .line 127
    :cond_0
    return-void

    .line 130
    :cond_1
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    .line 131
    const-wide/16 v8, 0x0

    .line 132
    .local v8, "totalData":J
    const-wide/16 v2, 0x0

    .line 134
    .local v2, "currentData":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 135
    const/4 v4, 0x0

    .line 136
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    invoke-virtual {v10, v5, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 137
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    const-string/jumbo v10, "@M_ChartBandwidthNetworkSeriesView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", rxBytes = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 138
    iget-wide v12, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 137
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 138
    const-string/jumbo v12, ", txBytes = "

    .line 137
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 138
    iget-wide v12, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 137
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-wide v10, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    .end local v4    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_2
    const-string/jumbo v10, "@M_ChartBandwidthNetworkSeriesView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "totalData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mTotalUsed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    const-wide/16 v2, 0x0

    .line 145
    :goto_1
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    .line 146
    const-string/jumbo v10, "@M_ChartBandwidthNetworkSeriesView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "currentData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    const/16 v11, 0x5a

    if-ge v10, v11, :cond_4

    .line 149
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    aput-wide v2, v10, v11

    .line 150
    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    .line 156
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    rsub-int/lit8 v12, v12, 0x64

    add-int/lit8 v12, v12, 0x1

    int-to-long v12, v12

    invoke-interface {v11, v12, v13}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v11

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/4 v14, 0x0

    aget-wide v14, v13, v14

    div-long/2addr v14, v6

    const-wide/16 v16, 0x64

    mul-long v14, v14, v16

    invoke-interface {v12, v14, v15}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v12

    .line 156
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    if-ge v5, v10, :cond_6

    .line 160
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    rsub-int/lit8 v12, v12, 0x64

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v12, v5

    int-to-long v12, v12

    invoke-interface {v11, v12, v13}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v11

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    aget-wide v14, v13, v5

    invoke-interface {v12, v14, v15}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v12

    .line 160
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    aget-wide v12, v12, v5

    cmp-long v10, v10, v12

    if-gez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    aget-wide v10, v10, v5

    :goto_4
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 144
    :cond_3
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    sub-long v2, v8, v10

    goto/16 :goto_1

    .line 152
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x59

    invoke-static {v10, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 153
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/16 v11, 0x59

    aput-wide v2, v10, v11

    goto/16 :goto_2

    .line 162
    :cond_5
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    goto :goto_4

    .line 164
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->invalidate()V

    .line 120
    return-void
.end method

.method public getMaxBytes()J
    .locals 4

    .prologue
    const-wide/32 v0, 0x100000

    .line 100
    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    :cond_0
    return-wide v0
.end method

.method public getTotalUsedData()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings/widget/ChartAxis;

    .prologue
    .line 95
    const-string/jumbo v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 96
    const-string/jumbo v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 94
    return-void
.end method

.method public invalidatePath()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->invalidate()V

    .line 111
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 171
    iget-boolean v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    if-nez v3, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->generatePath()V

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 176
    .local v0, "primaryLeftPoint":F
    iget-object v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v4, 0x64

    invoke-interface {v3, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    .line 178
    .local v1, "primaryRightPoint":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 179
    .local v2, "save":I
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 180
    iget-object v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 168
    return-void
.end method

.method public setNetworkStates(Landroid/net/NetworkStats;)V
    .locals 0
    .param p1, "networkStats"    # Landroid/net/NetworkStats;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->generatePath()V

    .line 107
    return-void
.end method

.method public setSeriesColor(I)V
    .locals 2
    .param p1, "stroke"    # I

    .prologue
    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    return-void
.end method
