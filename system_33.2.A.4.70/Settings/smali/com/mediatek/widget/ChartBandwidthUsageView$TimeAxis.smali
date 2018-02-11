.class public Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;
.super Ljava/lang/Object;
.source "ChartBandwidthUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ChartBandwidthUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeAxis"
.end annotation


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F

.field final synthetic this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;


# direct methods
.method public constructor <init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V
    .locals 4
    .param p1, "this$0"    # Lcom/mediatek/widget/ChartBandwidthUsageView;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->setBounds(JJ)Z

    .line 235
    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "value"    # J

    .prologue
    .line 283
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 284
    return-wide p3
.end method

.method public convertToPoint(J)F
    .locals 7
    .param p1, "value"    # J

    .prologue
    .line 270
    iget v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    iget-wide v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 6
    .param p1, "point"    # F

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    iget-wide v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 10

    .prologue
    const-wide/16 v8, 0x5

    .line 291
    iget-wide v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    iget-wide v6, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v1, v4

    .line 292
    .local v1, "tickCount":I
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [F

    .line 293
    .local v2, "tickPoints":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 294
    iget-wide v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    int-to-long v6, v0

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->convertToPoint(J)F

    move-result v3

    aput v3, v2, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 241
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 3
    .param p1, "min"    # J
    .param p3, "max"    # J

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    iput-wide p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    .line 249
    iput-wide p3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setSize(F)Z
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 259
    iget v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 260
    iput p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

    .line 261
    const/4 v0, 0x1

    return v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAdjustAxis(J)I
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method
