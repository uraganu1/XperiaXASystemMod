.class public Lcom/android/incallui/widget/multiwaveview/PointCloud;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;,
        Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;,
        Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;
    }
.end annotation


# static fields
.field private static final INNER_POINTS:I = 0x8

.field private static final MAX_POINT_SIZE:F = 4.0f

.field private static final MIN_POINT_SIZE:F = 2.0f

.field private static final PI:F = 3.1415927f

.field private static final TAG:Ljava/lang/String; = "PointCloud"


# instance fields
.field glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCloud:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mScale:F

    .line 41
    new-instance v0, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;-><init>(Lcom/android/incallui/widget/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    .line 42
    new-instance v0, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;-><init>(Lcom/android/incallui/widget/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 124
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    :cond_0
    return-void
.end method

.method private static hypot(FF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 170
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private interp(FFF)F
    .locals 1
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "f"    # F

    .prologue
    .line 200
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 174
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    .line 205
    .local v6, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;>;"
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    .line 206
    iget v10, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mScale:F

    iget v11, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mScale:F

    iget v12, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mCenterX:F

    iget v13, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mCenterY:F

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 207
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 208
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;

    .line 210
    .local v4, "point":Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;
    iget v10, v4, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->radius:F

    iget v11, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mOuterRadius:F

    div-float/2addr v10, v11

    .line 209
    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v12, 0x40000000    # 2.0f

    invoke-direct {p0, v11, v12, v10}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->interp(FFF)F

    move-result v5

    .line 211
    .local v5, "pointSize":F
    iget v10, v4, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->x:F

    iget v11, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mCenterX:F

    add-float v7, v10, v11

    .line 212
    .local v7, "px":F
    iget v10, v4, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->y:F

    iget v11, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mCenterY:F

    add-float v8, v10, v11

    .line 213
    .local v8, "py":F
    invoke-virtual {p0, v4}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->getAlphaForPoint(Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;)I

    move-result v0

    .line 215
    .local v0, "alpha":I
    if-nez v0, :cond_0

    .line 207
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget-object v10, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_1

    .line 218
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    .line 219
    iget-object v10, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v1, v10, v11

    .line 220
    .local v1, "cx":F
    iget-object v10, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v2, v10, v11

    .line 221
    .local v2, "cy":F
    const/high16 v10, 0x40800000    # 4.0f

    div-float v9, v5, v10

    .line 222
    .local v9, "s":F
    invoke-virtual {p1, v9, v9, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 223
    sub-float v10, v7, v1

    sub-float v11, v8, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    iget-object v10, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 225
    iget-object v10, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 228
    .end local v1    # "cx":F
    .end local v2    # "cy":F
    .end local v9    # "s":F
    :cond_1
    iget-object v10, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    iget-object v10, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 232
    .end local v0    # "alpha":I
    .end local v4    # "point":Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;
    .end local v5    # "pointSize":F
    .end local v7    # "px":F
    .end local v8    # "py":F
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 203
    return-void
.end method

.method public getAlphaForPoint(Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;)I
    .locals 12
    .param p1, "point"    # Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;

    .prologue
    .line 179
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    invoke-static {v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->-get2(Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    iget v8, p1, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->x:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    invoke-static {v8}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->-get3(Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v8

    iget v9, p1, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->y:F

    sub-float/2addr v8, v9

    invoke-static {v7, v8}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->hypot(FF)F

    move-result v4

    .line 180
    .local v4, "glowDistance":F
    const/4 v3, 0x0

    .line 182
    .local v3, "glowAlpha":F
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    invoke-static {v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->-get1(Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_0

    .line 183
    float-to-double v8, v4

    const-wide v10, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    invoke-static {v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->-get1(Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    float-to-double v10, v7

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 184
    .local v0, "cos":D
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    invoke-static {v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->-get0(Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->max(FF)F

    move-result v8

    mul-float v3, v7, v8

    .line 188
    .end local v0    # "cos":D
    :cond_0
    iget v7, p1, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->x:F

    iget v8, p1, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->y:F

    invoke-static {v7, v8}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->hypot(FF)F

    move-result v5

    .line 189
    .local v5, "radius":F
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    invoke-static {v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->-get1(Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v7

    sub-float v2, v5, v7

    .line 190
    .local v2, "distanceToWaveRing":F
    const/4 v6, 0x0

    .line 191
    .local v6, "waveAlpha":F
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    invoke-static {v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->-get2(Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    cmpg-float v7, v2, v7

    if-gez v7, :cond_1

    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_1

    .line 192
    float-to-double v8, v2

    const-wide v10, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    invoke-static {v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->-get2(Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v7

    float-to-double v10, v7

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 193
    .restart local v0    # "cos":D
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    invoke-static {v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->-get0(Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v7

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->max(FF)F

    move-result v8

    mul-float v6, v7, v8

    .line 196
    .end local v0    # "cos":D
    :cond_1
    invoke-static {v3, v6}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->max(FF)F

    move-result v7

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    return v7
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mScale:F

    return v0
.end method

.method public makePointCloud(FF)V
    .locals 18
    .param p1, "innerRadius"    # F
    .param p2, "outerRadius"    # F

    .prologue
    .line 136
    const/4 v15, 0x0

    cmpl-float v15, p1, v15

    if-nez v15, :cond_0

    .line 137
    const-string/jumbo v15, "PointCloud"

    const-string/jumbo v16, "Must specify an inner radius"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mOuterRadius:F

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 142
    sub-float v10, p2, p1

    .line 143
    .local v10, "pointAreaRadius":F
    const v15, 0x40c90fdb

    mul-float v15, v15, p1

    const/high16 v16, 0x41000000    # 8.0f

    div-float v7, v15, v16

    .line 144
    .local v7, "ds":F
    div-float v15, v10, v7

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 145
    .local v3, "bands":I
    int-to-float v15, v3

    div-float v6, v10, v15

    .line 146
    .local v6, "dr":F
    move/from16 v12, p1

    .line 147
    .local v12, "r":F
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_0
    if-gt v2, v3, :cond_2

    .line 148
    const v15, 0x40c90fdb

    mul-float v4, v15, v12

    .line 149
    .local v4, "circumference":F
    div-float v15, v4, v7

    float-to-int v11, v15

    .line 150
    .local v11, "pointsInBand":I
    const v8, 0x3fc90fdb

    .line 151
    .local v8, "eta":F
    int-to-float v15, v11

    const v16, 0x40c90fdb

    div-float v5, v16, v15

    .line 152
    .local v5, "dEta":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_1

    .line 153
    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    mul-float v13, v12, v15

    .line 154
    .local v13, "x":F
    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    mul-float v14, v12, v15

    .line 155
    .local v14, "y":F
    add-float/2addr v8, v5

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    new-instance v16, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v14, v12}, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;-><init>(Lcom/android/incallui/widget/multiwaveview/PointCloud;FFF)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 147
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-float/2addr v12, v6

    goto :goto_0

    .line 135
    .end local v4    # "circumference":F
    .end local v5    # "dEta":F
    .end local v8    # "eta":F
    .end local v9    # "i":I
    .end local v11    # "pointsInBand":I
    :cond_2
    return-void
.end method

.method public setCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 131
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mCenterX:F

    .line 132
    iput p2, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mCenterY:F

    .line 130
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->mScale:F

    .line 161
    return-void
.end method
