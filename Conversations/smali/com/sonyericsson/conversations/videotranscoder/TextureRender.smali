.class Lcom/sonyericsson/conversations/videotranscoder/TextureRender;
.super Ljava/lang/Object;
.source "TextureRender.java"


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTriangleVerticesData:[F

    .line 70
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mMVPMatrix:[F

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mSTMatrix:[F

    .line 76
    const/16 v0, -0x3039

    iput v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTextureID:I

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 87
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mSTMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 86
    return-void

    .line 49
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/GLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "program":I
    const/4 v4, 0x0

    .line 172
    .local v4, "vertexShader":I
    const/4 v1, 0x0

    .line 175
    .local v1, "fragmentShader":I
    :try_start_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 176
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 177
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 178
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 179
    const-string/jumbo v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 180
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 181
    const-string/jumbo v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 182
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 183
    const/4 v5, 0x1

    new-array v2, v5, [I

    .line 184
    .local v2, "linkStatus":[I
    const v5, 0x8b82

    const/4 v6, 0x0

    invoke-static {v3, v5, v2, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 185
    const/4 v5, 0x0

    aget v5, v2, v5

    if-eq v5, v7, :cond_3

    .line 186
    const-string/jumbo v5, "Could not link program: "

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 187
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 188
    new-instance v5, Lcom/sonyericsson/conversations/videotranscoder/GLException;

    const-string/jumbo v6, "Unable to link program"

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/videotranscoder/GLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/sonyericsson/conversations/videotranscoder/GLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v2    # "linkStatus":[I
    :catch_0
    move-exception v0

    .line 191
    .local v0, "exception":Lcom/sonyericsson/conversations/videotranscoder/GLException;
    if-eqz v1, :cond_0

    .line 192
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 194
    :cond_0
    if-eqz v4, :cond_1

    .line 195
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 197
    :cond_1
    if-eqz v3, :cond_2

    .line 198
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 200
    :cond_2
    new-instance v5, Lcom/sonyericsson/conversations/videotranscoder/GLException;

    invoke-direct {v5, v0}, Lcom/sonyericsson/conversations/videotranscoder/GLException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 203
    .end local v0    # "exception":Lcom/sonyericsson/conversations/videotranscoder/GLException;
    .restart local v2    # "linkStatus":[I
    :cond_3
    return v3
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/GLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 156
    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 157
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 158
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 159
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 160
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 163
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 164
    new-instance v2, Lcom/sonyericsson/conversations/videotranscoder/GLException;

    const-string/jumbo v3, "Failed to load shader"

    invoke-direct {v2, v3}, Lcom/sonyericsson/conversations/videotranscoder/GLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_0
    return v1
.end method


# virtual methods
.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/GLException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 208
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/sonyericsson/conversations/videotranscoder/GLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/videotranscoder/GLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;)V
    .locals 7
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 109
    invoke-static {v2, v4, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 110
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->maPositionHandle:I

    .line 114
    iget-object v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 113
    const/16 v2, 0x1406

    .line 114
    const/16 v4, 0x14

    .line 113
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 115
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->maTextureHandle:I

    .line 119
    iget-object v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 118
    const/4 v1, 0x2

    const/16 v2, 0x1406

    .line 119
    const/16 v4, 0x14

    .line 118
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 120
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mMVPMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 123
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mMVPMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 124
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->muSTMatrixHandle:I

    iget-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mSTMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 126
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 127
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 106
    return-void
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTextureID:I

    return v0
.end method

.method public prepareForDrawing(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 101
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 102
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 103
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTextureID:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    return-void
.end method

.method public surfaceCreated()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/GLException;
        }
    .end annotation

    .prologue
    const v6, 0x812f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x8d65

    .line 135
    const-string/jumbo v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mProgram:I

    .line 136
    iget v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mProgram:I

    const-string/jumbo v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->maPositionHandle:I

    .line 137
    iget v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mProgram:I

    const-string/jumbo v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->maTextureHandle:I

    .line 138
    iget v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mProgram:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->muMVPMatrixHandle:I

    .line 139
    iget v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mProgram:I

    const-string/jumbo v2, "uSTMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->muSTMatrixHandle:I

    .line 140
    new-array v0, v5, [I

    .line 141
    .local v0, "textures":[I
    invoke-static {v5, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 142
    aget v1, v0, v4

    iput v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTextureID:I

    .line 143
    iget v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TextureRender;->mTextureID:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 145
    const/high16 v1, 0x46180000    # 9728.0f

    .line 144
    const/16 v2, 0x2801

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 147
    const v1, 0x46180400    # 9729.0f

    .line 146
    const/16 v2, 0x2800

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 148
    const/16 v1, 0x2802

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 150
    const/16 v1, 0x2803

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 134
    return-void
.end method
