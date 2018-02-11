.class public Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;
.super Ljava/lang/Object;
.source "ChartBandwidthUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ChartBandwidthUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandwidthAxis"
.end annotation


# static fields
.field private static final SPAN_SIZE:Ljava/lang/Object;

.field private static final SPAN_UNIT:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 361
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->SPAN_SIZE:Ljava/lang/Object;

    .line 362
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->SPAN_UNIT:Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 4
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "bootstrap"    # Ljava/lang/CharSequence;

    .prologue
    .line 438
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 439
    .local v1, "start":I
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 440
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 441
    invoke-static {p1, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 442
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 443
    const/16 v2, 0x12

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 445
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 17
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "value"    # J

    .prologue
    .line 371
    const-wide/32 v12, 0x100000

    cmp-long v12, p3, v12

    if-gez v12, :cond_0

    .line 372
    const v12, 0x7f0b007f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 373
    .local v8, "unit":Ljava/lang/CharSequence;
    const-wide/16 v10, 0x400

    .line 379
    .local v10, "unitFactor":J
    :goto_0
    move-wide/from16 v0, p3

    long-to-double v12, v0

    long-to-double v14, v10

    div-double v2, v12, v14

    .line 383
    .local v2, "result":D
    const-wide/32 v12, 0x100000

    cmp-long v12, p3, v12

    if-lez v12, :cond_1

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpg-double v12, v2, v12

    if-gez v12, :cond_1

    .line 384
    const-string/jumbo v12, "%.1f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "size":Ljava/lang/CharSequence;
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    mul-long/2addr v12, v10

    const-wide/16 v14, 0xa

    div-long/2addr v12, v14

    long-to-double v4, v12

    .line 391
    .local v4, "resultRounded":D
    :goto_1
    sget-object v12, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->SPAN_SIZE:Ljava/lang/Object;

    const-string/jumbo v13, "^1"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v7

    .line 392
    .local v7, "sizeBounds":[I
    const/4 v12, 0x0

    aget v12, v7, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 393
    sget-object v12, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->SPAN_UNIT:Ljava/lang/Object;

    const-string/jumbo v13, "^2"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v9

    .line 394
    .local v9, "unitBounds":[I
    const/4 v12, 0x0

    aget v12, v9, v12

    const/4 v13, 0x1

    aget v13, v9, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 396
    double-to-long v12, v4

    return-wide v12

    .line 375
    .end local v2    # "result":D
    .end local v4    # "resultRounded":D
    .end local v6    # "size":Ljava/lang/CharSequence;
    .end local v7    # "sizeBounds":[I
    .end local v8    # "unit":Ljava/lang/CharSequence;
    .end local v9    # "unitBounds":[I
    .end local v10    # "unitFactor":J
    :cond_0
    const v12, 0x7f0b007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 376
    .restart local v8    # "unit":Ljava/lang/CharSequence;
    const-wide/32 v10, 0x100000

    .restart local v10    # "unitFactor":J
    goto :goto_0

    .line 387
    .restart local v2    # "result":D
    :cond_1
    const-string/jumbo v12, "%.0f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 388
    .restart local v6    # "size":Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    mul-long/2addr v12, v10

    long-to-double v4, v12

    .restart local v4    # "resultRounded":D
    goto :goto_1
.end method

.method public convertToPoint(J)F
    .locals 11
    .param p1, "value"    # J

    .prologue
    .line 346
    long-to-double v4, p1

    iget-wide v6, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    long-to-double v6, v6

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double v2, v4, v6

    .line 348
    .local v2, "normalized":D
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    const-wide v8, 0x3fd79b217a704c38L    # 0.3688434310617512

    mul-double/2addr v6, v8

    const-wide v8, -0x4059d6f1420f71c4L    # -0.043281994520182526

    add-double/2addr v6, v8

    .line 347
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 349
    .local v0, "fraction":D
    iget v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-float v4, v4

    return v4
.end method

.method public convertToValue(F)J
    .locals 10
    .param p1, "point"    # F

    .prologue
    .line 355
    iget v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    div-float v4, p1, v4

    float-to-double v2, v4

    .line 357
    .local v2, "normalized":D
    const-wide v4, 0x4005b07dd022ee16L    # 2.711177469316463

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 356
    const-wide v6, 0x3ff4f6ac3b8f3c62L    # 1.3102228476089057

    mul-double v0, v6, v4

    .line 358
    .local v0, "fraction":D
    iget-wide v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    double-to-long v4, v4

    return-wide v4
.end method

.method public getTickPoints()[F
    .locals 14

    .prologue
    .line 402
    iget-wide v10, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    iget-wide v12, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    sub-long v2, v10, v12

    .line 404
    .local v2, "range":J
    const-wide/32 v10, 0x300000

    cmp-long v7, v2, v10

    if-gez v7, :cond_0

    .line 405
    const-wide/32 v4, 0x10000

    .line 412
    .local v4, "tickJump":J
    :goto_0
    div-long v10, v2, v4

    long-to-int v1, v10

    .line 413
    .local v1, "tickCount":I
    new-array v6, v1, [F

    .line 414
    .local v6, "tickPoints":[F
    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    .line 415
    .local v8, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 416
    invoke-virtual {p0, v8, v9}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->convertToPoint(J)F

    move-result v7

    aput v7, v6, v0

    .line 417
    add-long/2addr v8, v4

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    .end local v0    # "i":I
    .end local v1    # "tickCount":I
    .end local v4    # "tickJump":J
    .end local v6    # "tickPoints":[F
    .end local v8    # "value":J
    :cond_0
    const-wide/32 v10, 0x600000

    cmp-long v7, v2, v10

    if-gez v7, :cond_1

    .line 407
    const-wide/32 v4, 0x20000

    .restart local v4    # "tickJump":J
    goto :goto_0

    .line 409
    .end local v4    # "tickJump":J
    :cond_1
    const-wide/32 v4, 0x40000

    .restart local v4    # "tickJump":J
    goto :goto_0

    .line 420
    .restart local v0    # "i":I
    .restart local v1    # "tickCount":I
    .restart local v6    # "tickPoints":[F
    .restart local v8    # "value":J
    :cond_2
    return-object v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 316
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

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
    .line 322
    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    iput-wide p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    .line 324
    iput-wide p3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    .line 325
    const/4 v0, 0x1

    return v0

    .line 327
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setSize(F)Z
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 334
    iget v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 335
    iput p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    .line 336
    const/4 v0, 0x1

    return v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAdjustAxis(J)I
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 426
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->convertToPoint(J)F

    move-result v0

    .line 427
    .local v0, "point":F
    float-to-double v2, v0

    iget v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 428
    const/4 v1, -0x1

    return v1

    .line 429
    :cond_0
    float-to-double v2, v0

    iget v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    float-to-double v4, v1

    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 430
    const/4 v1, 0x1

    return v1

    .line 432
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
