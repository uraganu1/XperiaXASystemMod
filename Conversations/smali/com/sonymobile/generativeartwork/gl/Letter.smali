.class public Lcom/sonymobile/generativeartwork/gl/Letter;
.super Ljava/lang/Object;
.source "Letter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/gl/Letter$1;,
        Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;,
        Lcom/sonymobile/generativeartwork/gl/Letter$Type;
    }
.end annotation


# static fields
.field private static final NUM_UVS:I

.field private static final NUM_VERTICES:I

.field static final TAG:Ljava/lang/String;

.field private static final mBackgroundCoords:[F

.field private static final mBackgroundUVCoords:[F

.field private static mUVsBuffer:Ljava/nio/FloatBuffer;

.field private static mVertexBuffer:Ljava/nio/FloatBuffer;


# instance fields
.field private mBuffers:[I

.field mFBAcess:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;

.field private mFirstStockImageId:I

.field private mFragmentShader:I

.field private mIsTextureAllocated:Z

.field private mLettersBitmap:Landroid/graphics/Bitmap;

.field private mLettersTextureID:I

.field private final mMainColor:[[F

.field private final mMainShapeTransform:[F

.field private mPerInstanceGLObjGenerated:Z

.field private mProgram:I

.field private mSecondStockImageId:I

.field private mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

.field private mStockImages:Lcom/sonymobile/generativeartwork/gl/LetterStock;

.field private mType:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

.field private mVertexShader:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const-class v0, Lcom/sonymobile/generativeartwork/gl/Letter;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    .line 42
    new-array v0, v0, [F

    aput v3, v0, v5

    aput v3, v0, v6

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBackgroundCoords:[F

    const/16 v0, 0x8

    .line 48
    new-array v0, v0, [F

    aput v4, v0, v5

    aput v4, v0, v6

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBackgroundUVCoords:[F

    .line 52
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBackgroundCoords:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sonymobile/generativeartwork/gl/Letter;->NUM_VERTICES:I

    .line 54
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBackgroundUVCoords:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sonymobile/generativeartwork/gl/Letter;->NUM_UVS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBuffers:[I

    .line 62
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexShader:I

    .line 64
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFragmentShader:I

    .line 67
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    .line 74
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersTextureID:I

    .line 76
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFirstStockImageId:I

    .line 78
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mSecondStockImageId:I

    .line 80
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mIsTextureAllocated:Z

    .line 82
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mPerInstanceGLObjGenerated:Z

    .line 85
    iput-object v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersBitmap:Landroid/graphics/Bitmap;

    .line 87
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->UNDEFINED:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mType:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    const/16 v0, 0x10

    .line 89
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainShapeTransform:[F

    .line 91
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v1, v3, [I

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainColor:[[F

    .line 206
    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    invoke-direct {v0, v4}, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;-><init>(Lcom/sonymobile/generativeartwork/gl/Letter$1;)V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    return-void
.end method

.method private generatePerInstanceTexture()V
    .locals 7

    .prologue
    const v6, 0x812f

    const/16 v5, 0x2600

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 406
    new-array v0, v4, [I

    const/4 v1, -0x1

    aput v1, v0, v3

    .line 410
    .local v0, "tmpBuf":[I
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 411
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 412
    aget v1, v0, v3

    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersTextureID:I

    const v1, 0x84c0

    .line 413
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 414
    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersTextureID:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    .line 418
    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 420
    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    .line 422
    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 424
    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 427
    iput-boolean v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mPerInstanceGLObjGenerated:Z

    .line 428
    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;)V
    .locals 10
    .param p1, "ctx"    # Ljava/lang/Object;

    .prologue
    const/4 v9, -0x1

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/16 v7, 0xde1

    const/4 v3, 0x0

    .line 309
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x8892

    .line 311
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBuffers:[I

    aget v2, v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 312
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aCoords:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 314
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aCoords:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x8892

    .line 316
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBuffers:[I

    aget v2, v2, v8

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 317
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aUVs:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 318
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aUVs:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 322
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mPerInstanceGLObjGenerated:Z

    if-eqz v0, :cond_1

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uGlobalTransform:I

    check-cast p1, [F

    .end local p1    # "ctx":Ljava/lang/Object;
    check-cast p1, [F

    invoke-static {v0, v8, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 327
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/4 v6, 0x0

    .line 330
    .local v6, "textureType":F
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter$1;->$SwitchMap$com$sonymobile$generativeartwork$gl$Letter$Type:[I

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mType:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    invoke-virtual {v2}, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    const v0, 0x84c1

    .line 388
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 389
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFBAcess:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;

    invoke-interface {v0}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;->getFBResult()I

    move-result v0

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 390
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uBackgroundTexture:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 394
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uMainShapeTransform:I

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainShapeTransform:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 397
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFirstClr:I

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainColor:[[F

    aget-object v1, v1, v3

    invoke-static {v0, v8, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 398
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uSecondClr:I

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainColor:[[F

    aget-object v1, v1, v8

    invoke-static {v0, v8, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 400
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uTextureType:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v0, 0x5

    .line 402
    sget v1, Lcom/sonymobile/generativeartwork/gl/Letter;->NUM_VERTICES:I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 403
    return-void

    .line 323
    .end local v6    # "textureType":F
    .restart local p1    # "ctx":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/gl/Letter;->generatePerInstanceTexture()V

    goto :goto_0

    .line 332
    .end local p1    # "ctx":Ljava/lang/Object;
    .restart local v6    # "textureType":F
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFirstStockImageId:I

    if-eq v0, v9, :cond_0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 335
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersTextureID:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 336
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mIsTextureAllocated:Z

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7, v3, v3, v3, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 342
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFillTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c2

    .line 344
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 345
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mStockImages:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    iget-object v0, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    iget v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFirstStockImageId:I

    aget v0, v0, v2

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 347
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uStockImgTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 338
    iput-boolean v8, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mIsTextureAllocated:Z

    goto :goto_2

    :pswitch_1
    const/4 v6, 0x0

    .line 352
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersTextureID:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 354
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 362
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFillTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c2

    .line 365
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 366
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mStockImages:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    iget-object v0, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 368
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uStockImgTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/16 :goto_1

    .line 355
    :cond_3
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mIsTextureAllocated:Z

    if-eqz v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7, v3, v3, v3, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 357
    iput-boolean v8, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mIsTextureAllocated:Z

    goto :goto_3

    .line 371
    :pswitch_2
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFirstStockImageId:I

    if-eq v0, v9, :cond_0

    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mSecondStockImageId:I

    if-eq v0, v9, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 373
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mStockImages:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    iget-object v0, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    iget v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFirstStockImageId:I

    aget v0, v0, v2

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 375
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFillTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c2

    .line 377
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 378
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mStockImages:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    iget-object v0, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    iget v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mSecondStockImageId:I

    aget v0, v0, v2

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 380
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uStockImgTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/16 :goto_1

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;Lcom/sonymobile/generativeartwork/gl/LetterStock;)V
    .locals 7
    .param p1, "fbAcess"    # Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;
    .param p2, "stockimages"    # Lcom/sonymobile/generativeartwork/gl/LetterStock;

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const v6, 0x8892

    const/4 v3, 0x0

    .line 214
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFBAcess:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;

    .line 215
    iput-object p2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mStockImages:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    .line 217
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 221
    :goto_0
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mUVsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    :goto_1
    const v0, 0x8b31

    const-string/jumbo v4, "#version 100\n#define SQRT_2 1.414213562\nattribute vec2 aCoords;\nattribute vec2 aUVs;\nuniform mat4 uGlobalTransform;\nuniform mat4 uMainShapeTransform;\nvarying vec2 vOutUVs;\nvarying vec2 vOutUVsMainShape;\nvarying vec2 vOutUVsStockShape;\nvoid main() {\n    vOutUVs = aUVs;\n    vec4 tUVs = vec4(aUVs.xy, 0.0, 1.0);\n    vec2 mainUVs = (uMainShapeTransform * tUVs).xy;\n    vOutUVsMainShape.x = mainUVs.x;\n    vOutUVsMainShape.y = 1.0 - mainUVs.y;\n    vOutUVsStockShape = vec2(aUVs.x, 1.0 - aUVs.y);    gl_Position = uGlobalTransform * vec4(aCoords, 0.0, 1.0);\n}\n"

    .line 226
    invoke-static {v0, v4}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexShader:I

    const v0, 0x8b30

    const-string/jumbo v4, "#version 100\nprecision highp float;\nuniform sampler2D uFillTexture;\nuniform sampler2D uBackgroundTexture;\nuniform sampler2D uStockImgTexture;\nuniform vec4 uFirstClr;\nuniform vec4 uSecondClr;\nuniform float uTextureType;\nvarying vec2 vOutUVs;\nvarying vec2 vOutUVsMainShape;\nvarying vec2 vOutUVsStockShape;\n\nvoid main() {\n    const vec4 AllOnes = vec4(1.0);\n    const vec4 AllZeros = vec4(0.0);\n    vec4 bclClr = texture2D(uBackgroundTexture, vOutUVs);\n    vec4 mainClr = texture2D(uFillTexture, vOutUVsMainShape);\n    float isFirstChrPresent = 0.0;\n    float isSecondChrPresent = 0.0;\n    if (uTextureType > 0.25) { \n         isSecondChrPresent = texture2D(uStockImgTexture, vOutUVsStockShape).a; \n         if (uTextureType > 0.75) { \n             isFirstChrPresent = mainClr.a; \n         } else { isFirstChrPresent = mainClr.g; } \n  } else { \n        isFirstChrPresent = sign(mainClr.g); \n        isSecondChrPresent = sign(mainClr.b); \n  } \n  vec4 resClr = (isFirstChrPresent * uFirstClr + isSecondChrPresent * uSecondClr);\n  resClr.rgb /= max(isFirstChrPresent + isSecondChrPresent, 1.);\n  resClr.a = min(resClr.a, 1.);\n  gl_FragColor = vec4(mix(bclClr, resClr, resClr.a).rgb, 1.);\n}\n"

    .line 227
    invoke-static {v0, v4}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFragmentShader:I

    .line 229
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexShader:I

    if-nez v0, :cond_3

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create shader objects for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/generativeartwork/gl/Letter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBackgroundCoords:[F

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 219
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 222
    :cond_2
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBackgroundUVCoords:[F

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mUVsBuffer:Ljava/nio/FloatBuffer;

    .line 223
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mUVsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 229
    :cond_3
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFragmentShader:I

    if-eqz v0, :cond_0

    .line 230
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexShader:I

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFragmentShader:I

    invoke-static {v0, v4}, Lcom/sonymobile/generativeartwork/utils/Utils;->prepareShaderProgram(II)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    .line 234
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    .line 239
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "aCoords"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aCoords:I

    .line 240
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "aUVs"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aUVs:I

    .line 242
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "uBackgroundTexture"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uBackgroundTexture:I

    .line 243
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "uFillTexture"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFillTexture:I

    .line 244
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "uStockImgTexture"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uStockImgTexture:I

    .line 245
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "uGlobalTransform"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uGlobalTransform:I

    .line 246
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "uMainShapeTransform"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uMainShapeTransform:I

    .line 249
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "uFirstClr"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uFirstClr:I

    .line 250
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "uSecondClr"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uSecondClr:I

    .line 251
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    const-string/jumbo v5, "uTextureType"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->uTextureType:I

    .line 253
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->checkIDs()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBuffers:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 261
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 264
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 265
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 266
    sget v0, Lcom/sonymobile/generativeartwork/gl/Letter;->NUM_VERTICES:I

    mul-int/lit8 v0, v0, 0x8

    sget-object v4, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v6, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 268
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 269
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aCoords:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 271
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aCoords:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBuffers:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 275
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 276
    sget v0, Lcom/sonymobile/generativeartwork/gl/Letter;->NUM_UVS:I

    mul-int/lit8 v0, v0, 0x8

    sget-object v4, Lcom/sonymobile/generativeartwork/gl/Letter;->mUVsBuffer:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v6, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 278
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 279
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aUVs:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 280
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;->aUVs:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 282
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 283
    return-void

    .line 235
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create shader program for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/generativeartwork/gl/Letter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t found one of the Shader params (attribute,uniform) for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/generativeartwork/gl/Letter;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter$ShaderSettings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 292
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 293
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFragmentShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 294
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 295
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 296
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFragmentShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x2

    .line 298
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 300
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 301
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter;->mUVsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 302
    return-void
.end method

.method public resetTexture()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mIsTextureAllocated:Z

    .line 432
    return-void
.end method

.method public setLetterColor([[F)V
    .locals 3
    .param p1, "colors"    # [[F

    .prologue
    const/4 v2, 0x0

    .line 455
    array-length v0, p1

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainColor:[[F

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainColor:[[F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainColor:[[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setLetterType(Lcom/sonymobile/generativeartwork/gl/Letter$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mType:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    .line 445
    return-void
.end method

.method public setMainShapeTransform([F)V
    .locals 3
    .param p1, "transform"    # [F

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainShapeTransform:[F

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainShapeTransform:[F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mMainShapeTransform:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setTextureBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mLettersBitmap:Landroid/graphics/Bitmap;

    .line 436
    return-void
.end method

.method public setTextureStockImageIds(II)V
    .locals 0
    .param p1, "id1"    # I
    .param p2, "id2"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mFirstStockImageId:I

    .line 440
    iput p2, p0, Lcom/sonymobile/generativeartwork/gl/Letter;->mSecondStockImageId:I

    .line 441
    return-void
.end method
