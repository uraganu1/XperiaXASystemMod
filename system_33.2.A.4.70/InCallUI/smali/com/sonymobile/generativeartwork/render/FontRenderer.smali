.class public Lcom/sonymobile/generativeartwork/render/FontRenderer;
.super Ljava/lang/Object;
.source "FontRenderer.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final mTypeface:Landroid/graphics/Typeface;


# instance fields
.field m2DTransform:Landroid/graphics/Matrix;

.field mBoundsPath1:Landroid/graphics/RectF;

.field mBoundsPath2:Landroid/graphics/RectF;

.field private mCanvas:Landroid/graphics/Canvas;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHeight:I

.field private mIsInitialized:Z

.field private mLetter1:Ljava/lang/String;

.field private mLetter2:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath1:Landroid/graphics/Path;

.field private mPath2:Landroid/graphics/Path;

.field private mPlane:Landroid/graphics/Bitmap;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/sonymobile/generativeartwork/render/FontRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->TAG:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "Roboto"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mTypeface:Landroid/graphics/Typeface;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mWidth:I

    .line 44
    iput v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mHeight:I

    .line 46
    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter1:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter2:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath2:Landroid/graphics/Path;

    .line 52
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mIsInitialized:Z

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->m2DTransform:Landroid/graphics/Matrix;

    .line 59
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 73
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setHinting(I)V

    .line 64
    return-void
.end method

.method private findBestFontMatch(Ljava/lang/String;)F
    .locals 13
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 203
    iget v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    sub-float v11, v0, v1

    .line 204
    .local v11, "targetHeight":F
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v11

    const/high16 v1, 0x43960000    # 300.0f

    add-float v9, v0, v1

    .line 206
    .local v9, "startFont":F
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 208
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 209
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 212
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v10, v0, v1

    .line 213
    .local v10, "startPoint":F
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 215
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 216
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v7, v0, v1

    .line 218
    .local v7, "endPoint":F
    sub-float v0, v11, v7

    sub-float v1, v9, v12

    mul-float/2addr v0, v1

    sub-float v1, v10, v7

    div-float/2addr v0, v1

    add-float v8, v0, v12

    .line 255
    .local v8, "nextFont":F
    return v8
.end method


# virtual methods
.method public getBoundsLetter(I)Landroid/graphics/RectF;
    .locals 1
    .param p1, "letter"    # I

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    .line 197
    :goto_0
    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public overlapOnBitmap(F)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "contentDependentOffset"    # F

    .prologue
    const v4, -0xff0100

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 102
    const/high16 v6, 0x3f000000    # 0.5f

    .line 103
    .local v6, "globalOffsetX":F
    iget v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v7, v0, v2

    .line 105
    .local v7, "globalOffsetY":F
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPlane:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 109
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v8, v0, v3

    .line 113
    .local v8, "letter1XOffset":F
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    sub-float v9, v0, p1

    .line 115
    .local v9, "letter2XOffset":F
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->m2DTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 117
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->m2DTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 119
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->m2DTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    neg-float v2, v8

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath2:Landroid/graphics/Path;

    neg-float v2, v9

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0000ff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath2:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 139
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mWidth:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v3, v2

    iget v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mHeight:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 144
    .end local v8    # "letter1XOffset":F
    .end local v9    # "letter2XOffset":F
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPlane:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public prepareShapes(CC)V
    .locals 8
    .param p1, "letter1"    # C
    .param p2, "letter2"    # C

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter1:Ljava/lang/String;

    .line 155
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter2:Ljava/lang/String;

    .line 157
    const/4 v7, 0x0

    .line 159
    .local v7, "bestFont":F
    if-ne p1, v1, :cond_0

    .line 160
    if-eq p2, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->findBestFontMatch(Ljava/lang/String;)F

    move-result v7

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 189
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter1:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 191
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 192
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter2:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath2:Landroid/graphics/Path;

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 193
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath2:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 153
    return-void

    .line 162
    :cond_0
    if-eq p1, v1, :cond_1

    .line 163
    if-ne p2, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->findBestFontMatch(Ljava/lang/String;)F

    move-result v7

    goto :goto_0

    .line 165
    :cond_1
    if-ne p1, v1, :cond_2

    .line 166
    if-ne p2, v1, :cond_2

    .line 168
    const/4 v7, 0x0

    .line 166
    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter1:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 174
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 175
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter2:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath2:Landroid/graphics/Path;

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 176
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath2:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 180
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 181
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v5

    .line 180
    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->findBestFontMatch(Ljava/lang/String;)F

    move-result v7

    goto/16 :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->findBestFontMatch(Ljava/lang/String;)F

    move-result v7

    goto/16 :goto_0
.end method

.method public setCanvasSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 83
    int-to-float v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mWidth:I

    .line 84
    iput p2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mHeight:I

    .line 86
    iget v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mWidth:I

    iget v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPlane:Landroid/graphics/Bitmap;

    .line 87
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPlane:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mCanvas:Landroid/graphics/Canvas;

    .line 88
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPlane:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mIsInitialized:Z

    .line 82
    return-void
.end method
