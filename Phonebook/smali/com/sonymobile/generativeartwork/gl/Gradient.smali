.class public Lcom/sonymobile/generativeartwork/gl/Gradient;
.super Ljava/lang/Object;
.source "Gradient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/gl/Gradient$1;,
        Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;
    }
.end annotation


# static fields
.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#version 100\nprecision highp float;\nuniform vec4 uColor1;\nuniform vec4 uColor2;\nuniform vec4 uColor3;\nuniform vec4 uColorDists;\nfloat rand(vec2 co){  return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);}varying float gradientDist;\nvarying vec2 vUV;\nvoid main() {\n    vec4 resClr = uColor1;\n    if (gradientDist >= uColorDists[0] && gradientDist < uColorDists[1]) {\n       float t = (gradientDist - uColorDists[0]) / (uColorDists[1] - uColorDists[0]);\n       resClr = mix(uColor1, uColor2, t);\n    } else if (gradientDist >= uColorDists[1]) {\n       float t = (gradientDist - uColorDists[1]) / (uColorDists[2] - uColorDists[1]);\n       resClr = mix(uColor2, uColor3, t);\n    }\n       resClr.rgb += rand(vUV) * 0.007;\n    gl_FragColor = resClr;\n}\n"

.field private static final NUM_ATTRIB_BUFFERS:I = 0x1

.field private static final NUM_VERTICES:I

.field private static final TAG:Ljava/lang/String;

.field private static final VERTEX_SHADER:Ljava/lang/String; = "#version 100\nattribute vec2 aCoords;\nuniform vec2 uGradientDirection;\nvarying float gradientDist;\nvarying vec2 vUV;\nvoid main() {\n    vec2 tmp = aCoords.xy * 0.5 + 0.5;\n    vUV = tmp;\n    tmp.y -= 1.0;\n    float gradientLength = length(uGradientDirection);\n    gradientDist = dot(tmp, uGradientDirection) / gradientLength;\n    gl_Position = vec4(aCoords, 0.0, 1.0);\n}\n"

.field private static final mBackgroundCoords:[F

.field private static mVertexBuffer:Ljava/nio/FloatBuffer;


# instance fields
.field private mBuffers:[I

.field private mColorDists:[F

.field private mFragmentShader:I

.field private mGradientDirection:[F

.field private final mMainColor:[[F

.field private mProgram:I

.field private mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

.field private mVertexShader:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const-class v0, Lcom/sonymobile/generativeartwork/gl/Gradient;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    .line 28
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mBackgroundCoords:[F

    .line 36
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mBackgroundCoords:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->NUM_VERTICES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;-><init>(Lcom/sonymobile/generativeartwork/gl/Gradient$1;)V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    .line 126
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mBuffers:[I

    .line 129
    iput v2, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexShader:I

    .line 131
    iput v2, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mFragmentShader:I

    .line 134
    iput v2, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    .line 136
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v1, v6, [I

    const/4 v2, 0x3

    aput v2, v1, v5

    const/4 v2, 0x4

    aput v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mMainColor:[[F

    const/4 v0, 0x4

    .line 138
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v5

    const/high16 v1, 0x3e800000    # 0.25f

    aput v1, v0, v3

    const/high16 v1, 0x3f400000    # 0.75f

    aput v1, v0, v6

    const/4 v1, 0x3

    aput v4, v0, v1

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mColorDists:[F

    .line 142
    new-array v0, v6, [F

    aput v4, v0, v5

    aput v4, v0, v3

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mGradientDirection:[F

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 227
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x8892

    .line 229
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mBuffers:[I

    aget v2, v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 230
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->aCoords:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 232
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->aCoords:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 235
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor1:I

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mMainColor:[[F

    aget-object v2, v2, v3

    invoke-static {v0, v6, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 236
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor2:I

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mMainColor:[[F

    aget-object v2, v2, v6

    invoke-static {v0, v6, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 237
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor3:I

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mMainColor:[[F

    aget-object v1, v2, v1

    invoke-static {v0, v6, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 238
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColorDists:I

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mColorDists:[F

    invoke-static {v0, v6, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 239
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uGradientDirection:I

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mGradientDirection:[F

    invoke-static {v0, v6, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    const/4 v0, 0x5

    .line 241
    sget v1, Lcom/sonymobile/generativeartwork/gl/Gradient;->NUM_VERTICES:I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 242
    return-void
.end method

.method public init(Lcom/sonymobile/generativeartwork/GenerativeArtWork;)V
    .locals 7

    .prologue
    const v6, 0x8892

    const/4 v3, 0x0

    .line 152
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    :goto_0
    const v0, 0x8b31

    const-string/jumbo v1, "#version 100\nattribute vec2 aCoords;\nuniform vec2 uGradientDirection;\nvarying float gradientDist;\nvarying vec2 vUV;\nvoid main() {\n    vec2 tmp = aCoords.xy * 0.5 + 0.5;\n    vUV = tmp;\n    tmp.y -= 1.0;\n    float gradientLength = length(uGradientDirection);\n    gradientDist = dot(tmp, uGradientDirection) / gradientLength;\n    gl_Position = vec4(aCoords, 0.0, 1.0);\n}\n"

    .line 158
    invoke-static {v0, v1}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexShader:I

    const v0, 0x8b30

    const-string/jumbo v1, "#version 100\nprecision highp float;\nuniform vec4 uColor1;\nuniform vec4 uColor2;\nuniform vec4 uColor3;\nuniform vec4 uColorDists;\nfloat rand(vec2 co){  return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);}varying float gradientDist;\nvarying vec2 vUV;\nvoid main() {\n    vec4 resClr = uColor1;\n    if (gradientDist >= uColorDists[0] && gradientDist < uColorDists[1]) {\n       float t = (gradientDist - uColorDists[0]) / (uColorDists[1] - uColorDists[0]);\n       resClr = mix(uColor1, uColor2, t);\n    } else if (gradientDist >= uColorDists[1]) {\n       float t = (gradientDist - uColorDists[1]) / (uColorDists[2] - uColorDists[1]);\n       resClr = mix(uColor2, uColor3, t);\n    }\n       resClr.rgb += rand(vUV) * 0.007;\n    gl_FragColor = resClr;\n}\n"

    .line 159
    invoke-static {v0, v1}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mFragmentShader:I

    .line 161
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexShader:I

    if-nez v0, :cond_2

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create shader objects for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/generativeartwork/gl/Gradient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mBackgroundCoords:[F

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 155
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 161
    :cond_2
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mFragmentShader:I

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexShader:I

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mFragmentShader:I

    invoke-static {v0, v1}, Lcom/sonymobile/generativeartwork/utils/Utils;->prepareShaderProgram(II)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    .line 166
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 171
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    const-string/jumbo v2, "aCoords"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->aCoords:I

    .line 172
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    const-string/jumbo v2, "uColor1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor1:I

    .line 173
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    const-string/jumbo v2, "uColor2"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor2:I

    .line 174
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    const-string/jumbo v2, "uColor3"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColor3:I

    .line 175
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    const-string/jumbo v2, "uColorDists"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uColorDists:I

    .line 177
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    const-string/jumbo v2, "uGradientDirection"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->uGradientDirection:I

    .line 179
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    invoke-virtual {v0}, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->checkIDs()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mBuffers:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 189
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 190
    sget v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->NUM_VERTICES:I

    mul-int/lit8 v0, v0, 0x8

    sget-object v1, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v2, 0x88e4

    invoke-static {v6, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 193
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->aCoords:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 196
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

    iget v0, v0, Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;->aCoords:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 198
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 200
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 201
    return-void

    .line 167
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create shader program for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/generativeartwork/gl/Gradient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t found one of the Shader params (attribute,uniform) for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/generativeartwork/gl/Gradient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mShdParams:Lcom/sonymobile/generativeartwork/gl/Gradient$ShaderSettings;

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

    .line 208
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 210
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 211
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    iget v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mFragmentShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 212
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 213
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 214
    iget v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mFragmentShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x1

    .line 216
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 218
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    return-void
.end method

.method public setGradientAngle(F)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 270
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42340000    # 45.0f

    .line 271
    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mGradientDirection:[F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float v0, v4, v0

    aput v0, v1, v5

    .line 274
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mGradientDirection:[F

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v6

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mGradientDirection:[F

    aput v4, v1, v5

    .line 278
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mGradientDirection:[F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    neg-float v0, v0

    aput v0, v1, v6

    goto :goto_0
.end method

.method public setGradientColor([[F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    array-length v0, p1

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mMainColor:[[F

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mMainColor:[[F

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mMainColor:[[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setGradientRanges([F)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mColorDists:[F

    aget v1, p1, v2

    aput v1, v0, v2

    .line 262
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mColorDists:[F

    aget v1, p1, v3

    aput v1, v0, v3

    .line 263
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mColorDists:[F

    aget v1, p1, v4

    aput v1, v0, v4

    .line 265
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/Gradient;->mColorDists:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 266
    return-void
.end method
