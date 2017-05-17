.class public Lcom/sonymobile/generativeartwork/render/FontRenderer;
.super Ljava/lang/Object;
.source "FontRenderer.java"


# static fields
.field private static final CHAR_SPACE:C = ' '

.field private static final MAX_SEARCH_ITERS:I = 0x14

.field public static final MIN_FONT_SIZE:F = 10.0f

.field public static final STROKE_WIDTH:F = 1.0f

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
    const-class v0, Lcom/sonymobile/generativeartwork/render/FontRenderer;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "Roboto"

    const/4 v1, 0x1

    .line 33
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mTypeface:Landroid/graphics/Typeface;

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

    .line 74
    return-void
.end method

.method private findBestFontMatch(Ljava/lang/String;)F
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 203
    iget v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    sub-float v7, v0, v1

    .line 204
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v7

    const/high16 v1, 0x43960000    # 300.0f

    add-float v8, v0, v1

    .line 206
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

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

    sub-float v9, v0, v1

    .line 213
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

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

    sub-float/2addr v0, v1

    .line 218
    sub-float v1, v7, v0

    sub-float v2, v8, v10

    mul-float/2addr v1, v2

    sub-float v0, v9, v0

    div-float v0, v1, v0

    add-float/2addr v0, v10

    .line 255
    return v0
.end method


# virtual methods
.method public getBoundsLetter(I)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 197
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public overlapOnBitmap(F)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const v6, -0xff0100

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 103
    iget v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v0, v2

    .line 105
    iget-boolean v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mIsInitialized:Z

    if-nez v2, :cond_0

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPlane:Landroid/graphics/Bitmap;

    return-object v0

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPlane:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 109
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath1:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v5

    .line 113
    iget-object v3, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    sub-float/2addr v3, p1

    .line 115
    iget-object v4, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->m2DTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 117
    iget-object v4, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->m2DTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 119
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->m2DTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath1:Landroid/graphics/Path;

    neg-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPath2:Landroid/graphics/Path;

    neg-float v2, v3

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

    goto/16 :goto_0
.end method

.method public prepareShapes(CC)V
    .locals 7

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

    .line 159
    if-eq p1, v1, :cond_3

    .line 162
    :cond_0
    if-ne p1, v1, :cond_4

    .line 165
    :cond_1
    if-eq p1, v1, :cond_5

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

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mBoundsPath2:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->findBestFontMatch(Ljava/lang/String;)F

    move-result v0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

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

    .line 194
    return-void

    .line 159
    :cond_3
    if-eq p2, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->findBestFontMatch(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 162
    :cond_4
    if-ne p2, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->findBestFontMatch(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 165
    :cond_5
    if-ne p2, v1, :cond_2

    move v0, v4

    .line 168
    goto :goto_0

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/render/FontRenderer;->mLetter2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->findBestFontMatch(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public setCanvasSize(II)V
    .locals 3

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

    .line 91
    return-void
.end method
