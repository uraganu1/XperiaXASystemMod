.class public Lcom/sonymobile/generativeartwork/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mRndGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/utils/Utils;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->mRndGen:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGLErr()V
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 114
    .local v0, "err":I
    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v1, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenGL error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    goto :goto_0
.end method

.method public static generateRand(CCI)I
    .locals 6
    .param p0, "chr1"    # C
    .param p1, "chr2"    # C
    .param p2, "width"    # I

    .prologue
    .line 125
    sget-object v1, Lcom/sonymobile/generativeartwork/utils/Utils;->mRndGen:Ljava/util/Random;

    int-to-long v2, p0

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 126
    sget-object v1, Lcom/sonymobile/generativeartwork/utils/Utils;->mRndGen:Ljava/util/Random;

    invoke-virtual {v1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 127
    .local v0, "res":I
    return v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 7
    .param p0, "type"    # I
    .param p1, "shaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 26
    new-array v0, v4, [I

    .line 30
    .local v0, "compiled":[I
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    .local v3, "shader":I
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 33
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 34
    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const v4, 0x8b81

    .line 35
    invoke-static {v3, v4, v0, v5}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 36
    aget v4, v0, v5

    if-eqz v4, :cond_0

    .line 49
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    .line 50
    .local v2, "error":I
    if-nez v2, :cond_1

    .line 54
    return v3

    .line 37
    .end local v2    # "error":I
    :cond_0
    sget-object v4, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Could not compile vertex shader:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v4, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v4, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Chader src: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x64

    .line 41
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Shader compilation failed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "error":I
    :cond_1
    sget-object v4, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to load shader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Shader loading failed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static prepareShaderProgram(II)I
    .locals 6
    .param p0, "vertexShader"    # I
    .param p1, "fragmentShader"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 60
    .local v2, "program":I
    new-array v1, v5, [I

    .line 62
    .local v1, "linkStatus":[I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 63
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 64
    .local v0, "error":I
    if-nez v0, :cond_0

    .line 68
    invoke-static {v2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 69
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 74
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 75
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 80
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v3, 0x8b82

    .line 81
    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 82
    aget v3, v1, v4

    if-ne v3, v5, :cond_3

    .line 88
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 89
    if-nez v0, :cond_4

    .line 94
    invoke-static {v2}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    const v3, 0x8b83

    .line 95
    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 96
    aget v3, v1, v4

    if-ne v3, v5, :cond_5

    .line 102
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 105
    if-nez v0, :cond_6

    .line 109
    return v2

    .line 65
    :cond_0
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to create shader program: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Program creation has failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_1
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to attach vertex shader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Vertex attach has failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_2
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to attach fragment shader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Fragment attach has failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_3
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Could not link shader program: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 86
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Program linking has failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_4
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to link program: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Errors after program linking"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_5
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Program validation has failed: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 100
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Program linking has failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_6
    sget-object v3, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to validate program: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Errors after program linking"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
