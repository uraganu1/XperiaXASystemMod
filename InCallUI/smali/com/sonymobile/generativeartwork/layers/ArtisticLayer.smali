.class public final Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;
.super Ljava/lang/Object;
.source "ArtisticLayer.java"

# interfaces
.implements Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
.implements Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;


# static fields
.field private static DEFAULT_SIZE:F

.field private static SCALE_LETTERS:F

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLayerInitialized:Z

.field private mAngle:F

.field private final mColorChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mColorPalette:[[[F

.field private final mFontRenderer:Lcom/sonymobile/generativeartwork/render/FontRenderer;

.field private mIsTransformRecalcNeeded:Z

.field private mLayerSize:[F

.field private final mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

.field private mLetter1XOffset:F

.field private mLetter1YOffset:F

.field private final mLetterStock:Lcom/sonymobile/generativeartwork/gl/LetterStock;

.field private mLettersOffset:F

.field private mLettersScale:F

.field private final mMainShapeTransform:[F

.field private mNeedFontRendering:Z

.field private mOwner:Lcom/sonymobile/generativeartwork/GenerativeArtWork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->TAG:Ljava/lang/String;

    .line 32
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->SCALE_LETTERS:F

    .line 33
    const/high16 v0, 0x44870000    # 1080.0f

    sput v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->DEFAULT_SIZE:F

    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mOwner:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .line 41
    iput-boolean v3, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->isLayerInitialized:Z

    .line 44
    iput v2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mAngle:F

    .line 46
    iput v2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter1XOffset:F

    .line 48
    iput v2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter1YOffset:F

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersScale:F

    .line 54
    iput-boolean v3, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mIsTransformRecalcNeeded:Z

    .line 56
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    filled-new-array {v3, v5, v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorPalette:[[[F

    .line 58
    new-array v0, v5, [F

    .line 59
    sget v1, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->DEFAULT_SIZE:F

    aput v1, v0, v3

    sget v1, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->DEFAULT_SIZE:F

    aput v1, v0, v4

    .line 58
    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLayerSize:[F

    .line 62
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorChangeListeners:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/sonymobile/generativeartwork/render/FontRenderer;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/render/FontRenderer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mFontRenderer:Lcom/sonymobile/generativeartwork/render/FontRenderer;

    .line 69
    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/gl/Letter;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    .line 70
    new-instance v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/gl/LetterStock;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetterStock:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    .line 72
    iput v2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersOffset:F

    .line 73
    iput-boolean v4, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mNeedFontRendering:Z

    .line 78
    return-void
.end method

.method private recalcArtTransformation()V
    .locals 12

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 278
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    const v2, 0x3f2aaaab

    invoke-static {v0, v1, v2, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 284
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    iget v2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mAngle:F

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 287
    iget v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mAngle:F

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    double-to-float v6, v8

    .line 293
    .local v6, "rotationAlignment":F
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    neg-float v2, v6

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 296
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    iget v2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter1XOffset:F

    iget v4, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersScale:F

    div-float/2addr v2, v4

    neg-float v2, v2

    .line 297
    iget v4, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter1YOffset:F

    iget v8, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersScale:F

    div-float/2addr v4, v8

    neg-float v4, v4

    .line 296
    invoke-static {v0, v1, v2, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 301
    iget v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersScale:F

    sub-float v7, v5, v0

    .line 302
    .local v7, "scaleAlignment":F
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    invoke-static {v0, v1, v3, v7, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 303
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    iget v2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersScale:F

    iget v3, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersScale:F

    iget v4, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersScale:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 272
    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;)V
    .locals 3
    .param p1, "ctx"    # Ljava/lang/Object;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mNeedFontRendering:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mFontRenderer:Lcom/sonymobile/generativeartwork/render/FontRenderer;

    iget v2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersOffset:F

    invoke-virtual {v1, v2}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->overlapOnBitmap(F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/generativeartwork/gl/Letter;->setTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Letter;->draw(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public getType()Lcom/sonymobile/generativeartwork/layers/LayerType;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/sonymobile/generativeartwork/layers/LayerType;->ARTISTIC:Lcom/sonymobile/generativeartwork/layers/LayerType;

    return-object v0
.end method

.method declared-synchronized initLayer(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V
    .locals 5
    .param p1, "owner"    # Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .prologue
    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->isLayerInitialized:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetterStock:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    invoke-virtual {p1}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLayerSize:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLayerSize:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/generativeartwork/gl/LetterStock;->init(Landroid/content/Context;II)V

    .line 90
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetterStock:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/generativeartwork/gl/Letter;->init(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;Lcom/sonymobile/generativeartwork/gl/LetterStock;)V

    .line 91
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mOwner:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->isLayerInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 84
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerColorChangeListener(Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method declared-synchronized releaseLayer()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->isLayerInitialized:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/gl/Letter;->release()V

    .line 99
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetterStock:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/gl/LetterStock;->release()V

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->isLayerInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 96
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setArtTrasnformation(FFFF)V
    .locals 0
    .param p1, "angle"    # F
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F
    .param p4, "scale"    # F

    .prologue
    .line 262
    iput p1, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mAngle:F

    .line 265
    iput p2, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter1XOffset:F

    .line 266
    iput p3, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter1YOffset:F

    .line 267
    iput p4, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersScale:F

    .line 269
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->recalcArtTransformation()V

    .line 261
    return-void
.end method

.method public setColor([[F)V
    .locals 1
    .param p1, "colors"    # [[F

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/generativeartwork/gl/Letter;->setLetterColor([[F)V

    .line 360
    return-void
.end method

.method public setColorPalette([[[F)V
    .locals 5
    .param p1, "palette"    # [[[F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 338
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [I

    array-length v2, p1

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    const/4 v2, 0x4

    aput v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorPalette:[[[F

    .line 339
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorPalette:[[[F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorPalette:[[[F

    array-length v1, v1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    invoke-virtual {p0, v3}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setColorPaletteId(I)V

    .line 337
    return-void
.end method

.method public setColorPaletteId(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorPalette:[[[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorPalette:[[[F

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setColor([[F)V

    .line 347
    :cond_0
    return-void
.end method

.method public setLetters(CC)V
    .locals 10
    .param p1, "chr1"    # C
    .param p2, "chr2"    # C

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 205
    new-instance v3, Lcom/sonymobile/generativeartwork/language/LanguageData;

    invoke-direct {v3, p1, p2}, Lcom/sonymobile/generativeartwork/language/LanguageData;-><init>(CC)V

    .line 207
    .local v3, "data":Lcom/sonymobile/generativeartwork/language/LanguageData;
    iget-boolean v5, v3, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    if-eqz v5, :cond_2

    iget v5, v3, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 208
    iget-boolean v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mIsTransformRecalcNeeded:Z

    if-eqz v5, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->recalcArtTransformation()V

    .line 210
    iput-boolean v8, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mIsTransformRecalcNeeded:Z

    .line 216
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mFontRenderer:Lcom/sonymobile/generativeartwork/render/FontRenderer;

    iget-object v6, v3, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v6, v6, v8

    iget-object v7, v3, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v7, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->prepareShapes(CC)V

    .line 218
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mFontRenderer:Lcom/sonymobile/generativeartwork/render/FontRenderer;

    invoke-virtual {v5, v8}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->getBoundsLetter(I)Landroid/graphics/RectF;

    move-result-object v4

    .line 219
    .local v4, "letter1Rect":Landroid/graphics/RectF;
    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLettersOffset:F

    .line 223
    iget v5, v3, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    if-lez v5, :cond_1

    .line 224
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    invoke-static {v3}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->getFirstStockImageId(Lcom/sonymobile/generativeartwork/language/LanguageData;)I

    move-result v6

    .line 225
    const/4 v7, -0x1

    .line 224
    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/generativeartwork/gl/Letter;->setTextureStockImageIds(II)V

    .line 226
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    sget-object v6, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->FONT_AND_STOCK_IMAGES:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    invoke-virtual {v5, v6}, Lcom/sonymobile/generativeartwork/gl/Letter;->setLetterType(Lcom/sonymobile/generativeartwork/gl/Letter$Type;)V

    .line 230
    :goto_0
    iput-boolean v9, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mNeedFontRendering:Z

    .line 241
    .end local v4    # "letter1Rect":Landroid/graphics/RectF;
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    iget-object v6, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    invoke-virtual {v5, v6}, Lcom/sonymobile/generativeartwork/gl/Letter;->setMainShapeTransform([F)V

    .line 244
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorPalette:[[[F

    array-length v5, v5

    invoke-static {v3, v5}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->getColorPaletteId(Lcom/sonymobile/generativeartwork/language/LanguageData;I)I

    move-result v2

    .line 246
    .local v2, "colorPaletteId":I
    invoke-virtual {p0, v2}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setColorPaletteId(I)V

    .line 247
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mColorChangeListeners:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;

    .line 248
    .local v0, "callback":Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;
    invoke-interface {v0, v2}, Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;->setColorPaletteId(I)V

    goto :goto_2

    .line 228
    .end local v0    # "callback":Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "colorPaletteId":I
    .restart local v4    # "letter1Rect":Landroid/graphics/RectF;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    sget-object v6, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->FONT_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    invoke-virtual {v5, v6}, Lcom/sonymobile/generativeartwork/gl/Letter;->setLetterType(Lcom/sonymobile/generativeartwork/gl/Letter$Type;)V

    goto :goto_0

    .line 232
    .end local v4    # "letter1Rect":Landroid/graphics/RectF;
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    invoke-static {v3}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->getFirstStockImageId(Lcom/sonymobile/generativeartwork/language/LanguageData;)I

    move-result v6

    .line 233
    invoke-static {v3}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->getSecondStockImageId(Lcom/sonymobile/generativeartwork/language/LanguageData;)I

    move-result v7

    .line 232
    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/generativeartwork/gl/Letter;->setTextureStockImageIds(II)V

    .line 234
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    sget-object v6, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->STOCK_IMAGES:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    invoke-virtual {v5, v6}, Lcom/sonymobile/generativeartwork/gl/Letter;->setLetterType(Lcom/sonymobile/generativeartwork/gl/Letter$Type;)V

    .line 237
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mMainShapeTransform:[F

    invoke-static {v5, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 238
    iput-boolean v9, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mIsTransformRecalcNeeded:Z

    .line 239
    iput-boolean v8, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mNeedFontRendering:Z

    goto :goto_1

    .line 204
    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    .restart local v2    # "colorPaletteId":I
    :cond_3
    return-void
.end method

.method public setLetters(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)V
    .locals 3
    .param p1, "symbols"    # Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .prologue
    .line 193
    iget-object v0, p1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    iget-object v1, p1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    const/4 v2, 0x1

    aget-char v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setLetters(CC)V

    .line 191
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mFontRenderer:Lcom/sonymobile/generativeartwork/render/FontRenderer;

    int-to-float v1, p1

    sget v2, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->SCALE_LETTERS:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p2

    sget v3, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->SCALE_LETTERS:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/generativeartwork/render/FontRenderer;->setCanvasSize(II)V

    .line 121
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLayerSize:[F

    int-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 122
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLayerSize:[F

    int-to-float v1, p2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 123
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->mLetter:Lcom/sonymobile/generativeartwork/gl/Letter;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/gl/Letter;->resetTexture()V

    .line 119
    return-void
.end method
