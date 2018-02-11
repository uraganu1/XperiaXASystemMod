.class public Lcom/mediatek/widget/ChartBandwidthUsageView;
.super Lcom/mediatek/widget/ChartView;
.source "ChartBandwidthUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;,
        Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;,
        Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;,
        Lcom/mediatek/widget/ChartBandwidthUsageView$1;
    }
.end annotation


# instance fields
.field private mGrid:Lcom/mediatek/widget/ChartBandwidthGridView;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

.field private mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

.field private mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

.field private mVertListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method static synthetic -get0(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartSweepView;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;)V
    .locals 0
    .param p1, "sweep"    # Lcom/mediatek/widget/ChartSweepView;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->clearUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;Z)V
    .locals 0
    .param p1, "sweep"    # Lcom/mediatek/widget/ChartSweepView;
    .param p2, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/widget/ChartBandwidthUsageView;->sendUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance v0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ChartBandwidthUsageView$1;-><init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    .line 76
    new-instance v0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;-><init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V

    new-instance v1, Lcom/android/settings/widget/InvertedChartAxis;

    new-instance v2, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;

    invoke-direct {v2}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings/widget/InvertedChartAxis;-><init>(Lcom/android/settings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 77
    new-instance v0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ChartBandwidthUsageView$2;-><init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private clearUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 2
    .param p1, "sweep"    # Lcom/mediatek/widget/ChartSweepView;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 149
    return-void
.end method

.method private sendUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;Z)V
    .locals 4
    .param p1, "sweep"    # Lcom/mediatek/widget/ChartSweepView;
    .param p2, "force"    # Z

    .prologue
    const/16 v2, 0x64

    .line 143
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    .line 145
    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public focusSweepLimit()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->setEnabled(Z)V

    .line 111
    return-void
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/mediatek/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalUsedData()J
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    invoke-virtual {v0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->getTotalUsedData()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 91
    const-string/jumbo v0, "@M_ChartBandwidthUsageView"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0}, Lcom/mediatek/widget/ChartView;->onFinishInflate()V

    .line 94
    const v0, 0x7f13007e

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/ChartBandwidthGridView;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mGrid:Lcom/mediatek/widget/ChartBandwidthGridView;

    .line 95
    const v0, 0x7f13007f

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    .line 97
    const v0, 0x7f130082

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/ChartSweepView;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    .line 98
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    const-wide/32 v2, 0xa00000

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/widget/ChartSweepView;->setMaxValue(J)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->addOnSweepListener(Lcom/mediatek/widget/ChartSweepView$OnSweepListener;)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    const-wide/16 v2, 0x800

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/widget/ChartSweepView;->setDragInterval(J)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mGrid:Lcom/mediatek/widget/ChartBandwidthGridView;

    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/widget/ChartBandwidthGridView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V

    .line 90
    return-void
.end method

.method public setLimitBytes(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/widget/ChartSweepView;->setValue(J)V

    .line 157
    return-void
.end method

.method public setLimitState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 162
    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mediatek/widget/ChartSweepView;->setVisibility(I)V

    .line 161
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setListener(Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    .line 115
    return-void
.end method

.method public setNetworkStates(Landroid/net/NetworkStats;)V
    .locals 1
    .param p1, "networkStats"    # Landroid/net/NetworkStats;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->setNetworkStates(Landroid/net/NetworkStats;)V

    .line 225
    return-void
.end method

.method public updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 18
    .param p1, "activeSweep"    # Lcom/mediatek/widget/ChartSweepView;

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertMax:J

    .line 176
    .local v4, "max":J
    const-wide/16 v12, 0x0

    .line 177
    .local v12, "newMax":J
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v2

    .line 179
    .local v2, "adjustAxis":I
    if-lez v2, :cond_5

    .line 181
    const-wide/16 v14, 0xb

    mul-long/2addr v14, v4

    const-wide/16 v16, 0xa

    div-long v12, v14, v16

    .line 191
    .end local v2    # "adjustAxis":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    invoke-virtual {v14}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->getMaxBytes()J

    move-result-wide v14

    const-wide/16 v16, 0xc

    mul-long v14, v14, v16

    const-wide/16 v16, 0xa

    div-long v10, v14, v16

    .line 192
    .local v10, "maxVisible":J
    const-wide/32 v14, 0x80000

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 193
    .local v6, "maxDefault":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {v14}, Lcom/mediatek/widget/ChartSweepView;->getValue()J

    move-result-wide v14

    const-wide/16 v16, 0xb

    mul-long v14, v14, v16

    const-wide/16 v16, 0xa

    div-long v14, v14, v16

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 194
    .local v8, "maxValue":J
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 195
    const-wide/32 v14, 0xa00000

    cmp-long v14, v12, v14

    if-lez v14, :cond_1

    const-wide/32 v12, 0xa00000

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertMax:J

    cmp-long v14, v12, v14

    if-eqz v14, :cond_4

    .line 199
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertMax:J

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v14, v0, v1, v12, v13}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v3

    .line 202
    .local v3, "changed":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v12, v13}, Lcom/mediatek/widget/ChartSweepView;->setValidRange(JJ)V

    .line 204
    if-eqz v3, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    invoke-virtual {v14}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->invalidatePath()V

    .line 208
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mGrid:Lcom/mediatek/widget/ChartBandwidthGridView;

    invoke-virtual {v14}, Lcom/mediatek/widget/ChartBandwidthGridView;->invalidate()V

    .line 211
    if-eqz p1, :cond_3

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/widget/ChartSweepView;->updateValueFromPosition()V

    .line 218
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    move-object/from16 v0, p1

    if-eq v14, v0, :cond_4

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/widget/ChartBandwidthUsageView;->layoutSweep(Lcom/mediatek/widget/ChartSweepView;)V

    .line 173
    .end local v3    # "changed":Z
    :cond_4
    return-void

    .line 182
    .end local v6    # "maxDefault":J
    .end local v8    # "maxValue":J
    .end local v10    # "maxVisible":J
    .restart local v2    # "adjustAxis":I
    :cond_5
    if-gez v2, :cond_6

    .line 184
    const-wide/16 v14, 0x9

    mul-long/2addr v14, v4

    const-wide/16 v16, 0xa

    div-long v12, v14, v16

    goto/16 :goto_0

    .line 186
    :cond_6
    move-wide v12, v4

    goto/16 :goto_0
.end method
