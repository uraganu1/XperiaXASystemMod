.class public Lcom/sonymobile/generativeartwork/gl/Letter2;
.super Ljava/lang/Object;
.source "Letter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/gl/Letter2$1;,
        Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;,
        Lcom/sonymobile/generativeartwork/gl/Letter2$Type;
    }
.end annotation


# static fields
.field private static final COORDS_PER_UV:I = 0x2

.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#version 100\nprecision highp float;\n#define SQRT_TWO    1.414213562\nuniform sampler2D uFillTexture;\nuniform sampler2D uBackgroundTexture;\nvarying vec2 vOutUVs;\nvarying vec2 vOutUVsMainShape;\n\nfloat rand(vec2 co){ \n   return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);\n}\nfloat interFunc1(float t) {\n    return 3.0*t*t - 2.0 * t*t*t;\n}\nfloat interFunc2(float t) {\n    return 6.0*pow(t, 5.0) - 15.0 * pow(t, 4.0) + 10.0 * pow(t, 3.0);\n}\nfloat perlinNoiseSimple(vec2 vl, float cellSz) {\n    float minStep = 1.0 / cellSz;\n    float maxLength = minStep * SQRT_TWO;\n    vec2 grid = floor(vl * cellSz) / cellSz;\n    vec2 gridPnt1 = grid;\n    vec2 gridPnt2 = vec2(grid.x, floor((vl.y + minStep) * cellSz) / cellSz);\n    vec2 gridPnt3 = vec2(floor((vl.x + minStep) * cellSz) / cellSz, grid.y);\n    vec2 gridPnt4 = vec2(gridPnt3.x, gridPnt2.y);\n    vec2 gradient1 = normalize(vec2(rand(gridPnt1), rand(gridPnt1.yx)) - 0.5);\n    vec2 gradient2 = normalize(vec2(rand(gridPnt2), rand(gridPnt2.yx)) - 0.5);\n    vec2 gradient3 = normalize(vec2(rand(gridPnt3), rand(gridPnt3.yx)) - 0.5);\n    vec2 gradient4 = normalize(vec2(rand(gridPnt4), rand(gridPnt4.yx)) - 0.5);\n    float s = dot(gradient1, (vl - gridPnt1) / maxLength);\n    float t = dot(gradient3, (vl - gridPnt3) / maxLength);\n    float u = dot(gradient2, (vl - gridPnt2) / maxLength);\n    float v = dot(gradient4, (vl - gridPnt4) / maxLength);\n    float x1 = interFunc2((vl.x - grid.x) * cellSz);\n    float interp1 = mix(s, t, x1);\n    float interp2 = mix(u, v, x1);\n    float y =interFunc2 ((vl.y - grid.y) * cellSz);\n    float interp3 = abs(mix(interp1, interp2, y));\n    float interp4 = clamp(mix(interp1, interp2, y), -1.0, 1.0);\n    return interp4;\n}\n\nvoid main() {\n    const vec4 AllOnes = vec4(1.0);\n    const vec4 AllZeros = vec4(0.0);\n    float threshold = 1.00;\n    vec4 bclClr = texture2D(uBackgroundTexture, vOutUVs);\n    vec4 mainClr = texture2D(uFillTexture, vOutUVsMainShape);\n    float presenceFill = sign(mainClr.g);\n    threshold += presenceFill * 1.0;\n    float offsetx = threshold * perlinNoiseSimple(vOutUVs, 1.5);\n    float offsety = threshold * perlinNoiseSimple(vOutUVsMainShape, 1.5);\n    vec2 offset = vec2(offsetx, offsety);\n    offsetx = threshold * perlinNoiseSimple(vOutUVs, 1.01);\n    offsety = -threshold * perlinNoiseSimple(vOutUVsMainShape, 1.01);\n    vec2 offset1 = vec2(offsetx, offsety);\n    offsetx = -threshold * perlinNoiseSimple(vOutUVs, 1.3);\n    offsety = threshold * perlinNoiseSimple(vOutUVsMainShape, 1.3);\n    vec2 offset2 = vec2(offsetx, offsety);\n    vec4 resClr = AllZeros;\n    float width = 0.35;\n    float thinness = 0.001;\n    float dist = width - thinness;\n    for (float i = width; i > thinness; i -= 0.02) {\n        mainClr = texture2D(uFillTexture, vOutUVsMainShape + i * offset);\n        resClr.a += 0.25 * 1.5 * (width - i) * floor(mainClr.r);\n    }\n    for (float i = width; i > thinness; i -= 0.02) {\n        mainClr = texture2D(uFillTexture, vOutUVsMainShape + i * offset1);\n        resClr.a += 0.25 * 1.5 * (width - i) * floor(mainClr.r);\n    }\n    for (float i = width; i > thinness; i -= 0.02) {\n        mainClr = texture2D(uFillTexture, vOutUVsMainShape + i * offset2);\n        resClr.a += 0.25 * 1.5 * (width - i) * floor(mainClr.r);\n    }\n    resClr = clamp(resClr, 0.0, 1.0);\n    gl_FragColor = vec4(mix(bclClr, AllOnes, resClr.a).rgb, 1.0);\n}\n"

.field private static final NUM_ATTRIB_BUFFERS:I = 0x2

.field private static final NUM_UVS:I

.field private static final NUM_VERTICES:I

.field static final TAG:Ljava/lang/String;

.field private static final TEXTURE_TYPE_FONT_IMAGE:F = 0.0f

.field private static final TEXTURE_TYPE_STOCK_IMAGE:F = 1.0f

.field private static final VERTEX_SHADER:Ljava/lang/String; = "#version 100\n#define SQRT_2 1.414213562\nattribute vec2 aCoords;\nattribute vec2 aUVs;\nuniform mat4 uGlobalTransform;\nuniform mat4 uMainShapeTransform;\nvarying vec2 vOutUVs;\nvarying vec2 vOutUVsMainShape;\nvoid main() {\n    vOutUVs = aUVs;\n    vec4 tUVs = vec4(aUVs.xy, 0.0, 1.0);\n    vec2 mainUVs = (uMainShapeTransform * tUVs).xy;\n    vOutUVsMainShape.x = mainUVs.x;\n    vOutUVsMainShape.y = 1.0 - mainUVs.y;\n    gl_Position = uGlobalTransform * vec4(aCoords, 0.0, 1.0);\n}\n"

.field private static final mBackgroundCoords:[F

.field private static final mBackgroundUVCoords:[F

.field private static mUVsBuffer:Ljava/nio/FloatBuffer;

.field private static mVertexBuffer:Ljava/nio/FloatBuffer;


# instance fields
.field private mBuffers:[I

.field mFBAcess:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;

.field private mFragmentShader:I

.field private mIsTextureAllocated:Z

.field private mLettersBitmap:Landroid/graphics/Bitmap;

.field private mLettersTextureID:I

.field private final mMainColor:[[F

.field private final mMainShapeTransform:[F

.field private mPerInstanceGLObjGenerated:Z

.field private mProgram:I

.field private mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

.field private mStockImageId:I

.field private mStockImages:Lcom/sonymobile/generativeartwork/gl/LetterStock;

.field private mType:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

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

    const-class v0, Lcom/sonymobile/generativeartwork/gl/Letter2;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    .line 29
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

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBackgroundCoords:[F

    const/16 v0, 0x8

    .line 35
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

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBackgroundUVCoords:[F

    .line 39
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBackgroundCoords:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->NUM_VERTICES:I

    .line 41
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBackgroundUVCoords:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->NUM_UVS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBuffers:[I

    .line 49
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexShader:I

    .line 51
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mFragmentShader:I

    .line 54
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    .line 61
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersTextureID:I

    .line 63
    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mStockImageId:I

    .line 65
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mIsTextureAllocated:Z

    .line 67
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mPerInstanceGLObjGenerated:Z

    .line 70
    iput-object v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersBitmap:Landroid/graphics/Bitmap;

    .line 72
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->UNDEFINED:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mType:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    const/16 v0, 0x10

    .line 74
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mMainShapeTransform:[F

    .line 76
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v1, v3, [I

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mMainColor:[[F

    .line 232
    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    invoke-direct {v0, v4}, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;-><init>(Lcom/sonymobile/generativeartwork/gl/Letter2$1;)V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

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

    .line 390
    new-array v0, v4, [I

    const/4 v1, -0x1

    aput v1, v0, v3

    .line 394
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 395
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 396
    aget v1, v0, v3

    iput v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersTextureID:I

    const v1, 0x84c0

    .line 397
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 398
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 399
    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersTextureID:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 400
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v1, 0x2801

    .line 406
    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 408
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v1, 0x2800

    .line 409
    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 411
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v1, 0x2802

    .line 413
    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 415
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v1, 0x2803

    .line 416
    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 418
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 420
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 421
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 423
    iput-boolean v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mPerInstanceGLObjGenerated:Z

    .line 424
    return-void
.end method

.method private setLetterType(Lcom/sonymobile/generativeartwork/gl/Letter2$Type;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mType:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    .line 444
    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/16 v7, 0xde1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 329
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x8892

    .line 331
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBuffers:[I

    aget v2, v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 332
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aCoords:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 334
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aCoords:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x8892

    .line 336
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBuffers:[I

    aget v2, v2, v6

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 337
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aUVs:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 338
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aUVs:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 341
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mPerInstanceGLObjGenerated:Z

    if-eqz v0, :cond_1

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uGlobalTransform:I

    check-cast p1, [F

    check-cast p1, [F

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 347
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 350
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2$1;->$SwitchMap$com$sonymobile$generativeartwork$gl$Letter2$Type:[I

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mType:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 375
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uFillTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c1

    .line 377
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 378
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mFBAcess:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;

    invoke-interface {v0}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;->getFBResult()I

    move-result v0

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 379
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uBackgroundTexture:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uMainShapeTransform:I

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mMainShapeTransform:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    .line 386
    sget v1, Lcom/sonymobile/generativeartwork/gl/Letter2;->NUM_VERTICES:I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 387
    return-void

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/gl/Letter2;->generatePerInstanceTexture()V

    goto :goto_0

    .line 352
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 354
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersTextureID:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 356
    iget-boolean v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mIsTextureAllocated:Z

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7, v3, v3, v3, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 358
    iput-boolean v6, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mIsTextureAllocated:Z

    goto :goto_1

    .line 365
    :pswitch_1
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mStockImageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mStockImages:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    iget-object v0, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mStockImageId:I

    aget v0, v0, v1

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;Lcom/sonymobile/generativeartwork/gl/LetterStock;)V
    .locals 7

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const v6, 0x8892

    const/4 v3, 0x0

    .line 239
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mFBAcess:Lcom/sonymobile/generativeartwork/layers/GenerativeLayer$FBResultAccess;

    .line 240
    iput-object p2, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mStockImages:Lcom/sonymobile/generativeartwork/gl/LetterStock;

    .line 242
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 246
    :goto_0
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mUVsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    :goto_1
    const v0, 0x8b31

    const-string/jumbo v4, "#version 100\n#define SQRT_2 1.414213562\nattribute vec2 aCoords;\nattribute vec2 aUVs;\nuniform mat4 uGlobalTransform;\nuniform mat4 uMainShapeTransform;\nvarying vec2 vOutUVs;\nvarying vec2 vOutUVsMainShape;\nvoid main() {\n    vOutUVs = aUVs;\n    vec4 tUVs = vec4(aUVs.xy, 0.0, 1.0);\n    vec2 mainUVs = (uMainShapeTransform * tUVs).xy;\n    vOutUVsMainShape.x = mainUVs.x;\n    vOutUVsMainShape.y = 1.0 - mainUVs.y;\n    gl_Position = uGlobalTransform * vec4(aCoords, 0.0, 1.0);\n}\n"

    .line 251
    invoke-static {v0, v4}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexShader:I

    const v0, 0x8b30

    const-string/jumbo v4, "#version 100\nprecision highp float;\n#define SQRT_TWO    1.414213562\nuniform sampler2D uFillTexture;\nuniform sampler2D uBackgroundTexture;\nvarying vec2 vOutUVs;\nvarying vec2 vOutUVsMainShape;\n\nfloat rand(vec2 co){ \n   return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);\n}\nfloat interFunc1(float t) {\n    return 3.0*t*t - 2.0 * t*t*t;\n}\nfloat interFunc2(float t) {\n    return 6.0*pow(t, 5.0) - 15.0 * pow(t, 4.0) + 10.0 * pow(t, 3.0);\n}\nfloat perlinNoiseSimple(vec2 vl, float cellSz) {\n    float minStep = 1.0 / cellSz;\n    float maxLength = minStep * SQRT_TWO;\n    vec2 grid = floor(vl * cellSz) / cellSz;\n    vec2 gridPnt1 = grid;\n    vec2 gridPnt2 = vec2(grid.x, floor((vl.y + minStep) * cellSz) / cellSz);\n    vec2 gridPnt3 = vec2(floor((vl.x + minStep) * cellSz) / cellSz, grid.y);\n    vec2 gridPnt4 = vec2(gridPnt3.x, gridPnt2.y);\n    vec2 gradient1 = normalize(vec2(rand(gridPnt1), rand(gridPnt1.yx)) - 0.5);\n    vec2 gradient2 = normalize(vec2(rand(gridPnt2), rand(gridPnt2.yx)) - 0.5);\n    vec2 gradient3 = normalize(vec2(rand(gridPnt3), rand(gridPnt3.yx)) - 0.5);\n    vec2 gradient4 = normalize(vec2(rand(gridPnt4), rand(gridPnt4.yx)) - 0.5);\n    float s = dot(gradient1, (vl - gridPnt1) / maxLength);\n    float t = dot(gradient3, (vl - gridPnt3) / maxLength);\n    float u = dot(gradient2, (vl - gridPnt2) / maxLength);\n    float v = dot(gradient4, (vl - gridPnt4) / maxLength);\n    float x1 = interFunc2((vl.x - grid.x) * cellSz);\n    float interp1 = mix(s, t, x1);\n    float interp2 = mix(u, v, x1);\n    float y =interFunc2 ((vl.y - grid.y) * cellSz);\n    float interp3 = abs(mix(interp1, interp2, y));\n    float interp4 = clamp(mix(interp1, interp2, y), -1.0, 1.0);\n    return interp4;\n}\n\nvoid main() {\n    const vec4 AllOnes = vec4(1.0);\n    const vec4 AllZeros = vec4(0.0);\n    float threshold = 1.00;\n    vec4 bclClr = texture2D(uBackgroundTexture, vOutUVs);\n    vec4 mainClr = texture2D(uFillTexture, vOutUVsMainShape);\n    float presenceFill = sign(mainClr.g);\n    threshold += presenceFill * 1.0;\n    float offsetx = threshold * perlinNoiseSimple(vOutUVs, 1.5);\n    float offsety = threshold * perlinNoiseSimple(vOutUVsMainShape, 1.5);\n    vec2 offset = vec2(offsetx, offsety);\n    offsetx = threshold * perlinNoiseSimple(vOutUVs, 1.01);\n    offsety = -threshold * perlinNoiseSimple(vOutUVsMainShape, 1.01);\n    vec2 offset1 = vec2(offsetx, offsety);\n    offsetx = -threshold * perlinNoiseSimple(vOutUVs, 1.3);\n    offsety = threshold * perlinNoiseSimple(vOutUVsMainShape, 1.3);\n    vec2 offset2 = vec2(offsetx, offsety);\n    vec4 resClr = AllZeros;\n    float width = 0.35;\n    float thinness = 0.001;\n    float dist = width - thinness;\n    for (float i = width; i > thinness; i -= 0.02) {\n        mainClr = texture2D(uFillTexture, vOutUVsMainShape + i * offset);\n        resClr.a += 0.25 * 1.5 * (width - i) * floor(mainClr.r);\n    }\n    for (float i = width; i > thinness; i -= 0.02) {\n        mainClr = texture2D(uFillTexture, vOutUVsMainShape + i * offset1);\n        resClr.a += 0.25 * 1.5 * (width - i) * floor(mainClr.r);\n    }\n    for (float i = width; i > thinness; i -= 0.02) {\n        mainClr = texture2D(uFillTexture, vOutUVsMainShape + i * offset2);\n        resClr.a += 0.25 * 1.5 * (width - i) * floor(mainClr.r);\n    }\n    resClr = clamp(resClr, 0.0, 1.0);\n    gl_FragColor = vec4(mix(bclClr, AllOnes, resClr.a).rgb, 1.0);\n}\n"

    .line 252
    invoke-static {v0, v4}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mFragmentShader:I

    .line 254
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexShader:I

    if-nez v0, :cond_3

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create shader objects for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/generativeartwork/gl/Letter2;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBackgroundCoords:[F

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 244
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 247
    :cond_2
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBackgroundUVCoords:[F

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mUVsBuffer:Ljava/nio/FloatBuffer;

    .line 248
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mUVsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 254
    :cond_3
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mFragmentShader:I

    if-eqz v0, :cond_0

    .line 255
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexShader:I

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mFragmentShader:I

    invoke-static {v0, v4}, Lcom/sonymobile/generativeartwork/utils/Utils;->prepareShaderProgram(II)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    .line 259
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    .line 264
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    const-string/jumbo v5, "aCoords"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aCoords:I

    .line 265
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    const-string/jumbo v5, "aUVs"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aUVs:I

    .line 267
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    const-string/jumbo v5, "uBackgroundTexture"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uBackgroundTexture:I

    .line 268
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    const-string/jumbo v5, "uFillTexture"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uFillTexture:I

    .line 269
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    const-string/jumbo v5, "uGlobalTransform"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uGlobalTransform:I

    .line 270
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v4, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    const-string/jumbo v5, "uMainShapeTransform"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->uMainShapeTransform:I

    .line 273
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->checkIDs()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBuffers:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 281
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 284
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 285
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 286
    sget v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->NUM_VERTICES:I

    mul-int/lit8 v0, v0, 0x8

    sget-object v4, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v6, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 288
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 289
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aCoords:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 291
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aCoords:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 294
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBuffers:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 295
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 296
    sget v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->NUM_UVS:I

    mul-int/lit8 v0, v0, 0x8

    sget-object v4, Lcom/sonymobile/generativeartwork/gl/Letter2;->mUVsBuffer:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v6, v0, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 298
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 299
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aUVs:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 300
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;->aUVs:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 302
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 303
    return-void

    .line 260
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create shader program for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/generativeartwork/gl/Letter2;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t found one of the Shader params (attribute,uniform) for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/generativeartwork/gl/Letter2;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Letter2$ShaderSettings;

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

    .line 310
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 312
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 313
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mFragmentShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 314
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 315
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 316
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mFragmentShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x2

    .line 318
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 320
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 321
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mUVsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 322
    return-void
.end method

.method public resetTexture()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mIsTextureAllocated:Z

    .line 428
    return-void
.end method

.method public setLetterColor([[F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    array-length v0, p1

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mMainColor:[[F

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mMainColor:[[F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mMainColor:[[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setMainShapeTransform([F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mMainShapeTransform:[F

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mMainShapeTransform:[F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mMainShapeTransform:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setTextureBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 431
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mStockImageId:I

    .line 433
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->FONT_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/gl/Letter2;->setLetterType(Lcom/sonymobile/generativeartwork/gl/Letter2$Type;)V

    .line 434
    return-void
.end method

.method public setTextureStockImageId(I)V
    .locals 1

    .prologue
    .line 437
    iput p1, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mStockImageId:I

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Letter2;->mLettersBitmap:Landroid/graphics/Bitmap;

    .line 439
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->STOCK_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    invoke-direct {p0, v0}, Lcom/sonymobile/generativeartwork/gl/Letter2;->setLetterType(Lcom/sonymobile/generativeartwork/gl/Letter2$Type;)V

    .line 440
    return-void
.end method
