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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    goto :goto_0
.end method

.method public static generateRand(CCI)I
    .locals 6

    .prologue
    .line 125
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->mRndGen:Ljava/util/Random;

    int-to-long v2, p0

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 126
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->mRndGen:Ljava/util/Random;

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 127
    return v0
.end method

.method public static generateRand(JI)I
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->mRndGen:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    .line 134
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->mRndGen:Ljava/util/Random;

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 135
    return v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [I

    .line 30
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 33
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 34
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const v2, 0x8b81

    .line 35
    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 36
    aget v0, v0, v3

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 54
    return v1

    .line 37
    :cond_0
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not compile vertex shader:"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Chader src: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x64

    .line 41
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Shader compilation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 51
    :cond_1
    sget-object v1, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to load shader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Shader loading failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prepareShaderProgram(II)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-array v0, v4, [I

    .line 62
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 63
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    .line 64
    if-nez v2, :cond_0

    .line 68
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 69
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    .line 70
    if-nez v2, :cond_1

    .line 74
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 75
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 80
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v2, 0x8b82

    .line 81
    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 82
    aget v2, v0, v3

    if-ne v2, v4, :cond_3

    .line 88
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    .line 89
    if-nez v2, :cond_4

    .line 94
    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    const v2, 0x8b83

    .line 95
    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 96
    aget v0, v0, v3

    if-ne v0, v4, :cond_5

    .line 102
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 105
    if-nez v0, :cond_6

    .line 109
    return v1

    .line 65
    :cond_0
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create shader program: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Program creation has failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to attach vertex shader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Vertex attach has failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to attach fragment shader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Fragment attach has failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not link shader program: "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Program linking has failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_4
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to link program: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Errors after program linking"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_5
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Program validation has failed: "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Program linking has failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_6
    sget-object v1, Lcom/sonymobile/generativeartwork/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to validate program: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Errors after program linking"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
