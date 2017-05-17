.class public final Lcom/sonymobile/generativeartwork/gl/LetterStock;
.super Ljava/lang/Object;
.source "LetterStock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/gl/LetterStock$1;,
        Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;
    }
.end annotation


# static fields
.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#version 100\nprecision highp float;\nvoid main() {\n    gl_FragColor = vec4(vec3(0.), 1.);\n}\n"

.field private static final MAX_IMG_SIDE:F = 1079.0f

.field private static final NUM_ATTRIB_BUFFERS:I = 0x1

.field static final STOCK_IMAGES:[I

.field private static final TAG:Ljava/lang/String;

.field private static final USE_OLD_SOLUTION:Z = false

.field private static final VERTEX_SHADER:Ljava/lang/String; = "#version 100\nattribute vec2 aCoords;\nvoid main() {\n    gl_Position = vec4(aCoords, 0.0, 1.0);\n}\n"

.field private static sTriangles:[[F


# instance fields
.field public sStockTextures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    const v6, 0x4486e000    # 1079.0f

    const-class v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->TAG:Ljava/lang/String;

    const/16 v0, 0xa

    .line 28
    new-array v0, v0, [I

    sget v2, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage01:I

    aput v2, v0, v1

    sget v2, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage02:I

    aput v2, v0, v8

    sget v2, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage03:I

    aput v2, v0, v9

    const/4 v2, 0x3

    sget v3, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage04:I

    aput v3, v0, v2

    const/4 v2, 0x4

    sget v3, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage05:I

    aput v3, v0, v2

    const/4 v2, 0x5

    sget v3, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage06:I

    aput v3, v0, v2

    const/4 v2, 0x6

    sget v3, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage07:I

    aput v3, v0, v2

    const/4 v2, 0x7

    sget v3, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage08:I

    aput v3, v0, v2

    const/16 v2, 0x8

    sget v3, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage09:I

    aput v3, v0, v2

    const/16 v2, 0x9

    sget v3, Lcom/sonymobile/generativeartwork/R$drawable;->stockimage10:I

    aput v3, v0, v2

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->STOCK_IMAGES:[I

    const/16 v0, 0xa

    .line 68
    new-array v0, v0, [[F

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v6, v2, v1

    aput v6, v2, v8

    const v3, 0x444f8000    # 830.0f

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    const/high16 v4, 0x43690000    # 233.0f

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    const/4 v3, 0x6

    const v4, 0x444e4000    # 825.0f

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v2, 0xc

    new-array v2, v2, [F

    aput v6, v2, v1

    aput v6, v2, v8

    const v3, 0x44584000    # 865.0f

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    const v4, 0x44524000    # 841.0f

    aput v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x442f4000    # 701.0f

    aput v4, v2, v3

    const/4 v3, 0x6

    const/high16 v4, 0x441b0000    # 620.0f

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v7, v2, v3

    const/16 v3, 0x8

    const v4, 0x4474c000    # 979.0f

    aput v4, v2, v3

    const/16 v3, 0x9

    aput v7, v2, v3

    const/16 v3, 0xa

    aput v6, v2, v3

    const/16 v3, 0xb

    const v4, 0x442b8000    # 686.0f

    aput v4, v2, v3

    aput-object v2, v0, v8

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v6, v2, v1

    aput v6, v2, v8

    const v3, 0x444f8000    # 830.0f

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    const/high16 v4, 0x44330000    # 716.0f

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    const/4 v3, 0x6

    const v4, 0x446c4000    # 945.0f

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v7, v2, v3

    aput-object v2, v0, v9

    const/4 v2, 0x3

    const/16 v3, 0xa

    new-array v3, v3, [F

    aput v6, v3, v1

    aput v6, v3, v8

    const v4, 0x44194000    # 613.0f

    aput v4, v3, v9

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    const v5, 0x4409c000    # 551.0f

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    const v5, 0x44608000    # 898.0f

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v7, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    const/16 v4, 0x9

    const v5, 0x44238000    # 654.0f

    aput v5, v3, v4

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/high16 v4, 0x43b90000    # 370.0f

    aput v4, v3, v1

    aput v6, v3, v8

    const/high16 v4, 0x42f20000    # 121.0f

    aput v4, v3, v9

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    const/high16 v5, 0x43460000    # 198.0f

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    const v5, 0x4416c000    # 603.0f

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v7, v3, v4

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0xa

    new-array v3, v3, [F

    const v4, 0x44704000    # 961.0f

    aput v4, v3, v1

    aput v6, v3, v8

    const/high16 v4, 0x44040000    # 528.0f

    aput v4, v3, v9

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    const v5, 0x441fc000    # 639.0f

    aput v5, v3, v4

    const/4 v4, 0x5

    const v5, 0x44314000    # 709.0f

    aput v5, v3, v4

    const/4 v4, 0x6

    const v5, 0x441f4000    # 637.0f

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v7, v3, v4

    const/16 v4, 0x8

    const v5, 0x4485a000    # 1069.0f

    aput v5, v3, v4

    const/16 v4, 0x9

    aput v7, v3, v4

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x8

    new-array v3, v3, [F

    const v4, 0x43d48000    # 425.0f

    aput v4, v3, v1

    aput v6, v3, v8

    const/high16 v4, 0x43310000    # 177.0f

    aput v4, v3, v9

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    const v5, 0x441e4000    # 633.0f

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    const/high16 v5, 0x445d0000    # 884.0f

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v7, v3, v4

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0xa

    new-array v3, v3, [F

    aput v6, v3, v1

    aput v6, v3, v8

    const v4, 0x444f8000    # 830.0f

    aput v4, v3, v9

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    const v5, 0x43a68000    # 333.0f

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    const v5, 0x4419c000    # 615.0f

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v7, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    const/16 v4, 0x9

    const/high16 v5, 0x43930000    # 294.0f

    aput v5, v3, v4

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x8

    new-array v3, v3, [F

    aput v6, v3, v1

    aput v6, v3, v8

    const v4, 0x444f8000    # 830.0f

    aput v4, v3, v9

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    const v5, 0x442c8000    # 690.0f

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    const v5, 0x44628000    # 906.0f

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v7, v3, v4

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x8

    new-array v3, v3, [F

    const v4, 0x44384000    # 737.0f

    aput v4, v3, v1

    aput v6, v3, v8

    const/high16 v4, 0x43f40000    # 488.0f

    aput v4, v3, v9

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    const/high16 v5, 0x44370000    # 732.0f

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    const v5, 0x446cc000    # 947.0f

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v7, v3, v4

    aput-object v3, v0, v2

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    move v0, v1

    .line 142
    :goto_0
    sget-object v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 147
    return-void

    :cond_0
    move v2, v1

    .line 143
    :goto_1
    sget-object v3, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v3, v3, v0

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    sget-object v3, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v3, v3, v0

    sget-object v4, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v4, v4, v0

    aget v4, v4, v2

    div-float/2addr v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->STOCK_IMAGES:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    .line 155
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 156
    return-void
.end method

.method public static getNumImages()I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->STOCK_IMAGES:[I

    array-length v0, v0

    return v0
.end method


# virtual methods
.method public init(Landroid/content/Context;II)V
    .locals 18

    .prologue
    .line 165
    new-instance v12, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;-><init>(Lcom/sonymobile/generativeartwork/gl/LetterStock$1;)V

    const v2, 0x8b31

    const-string/jumbo v3, "#version 100\nattribute vec2 aCoords;\nvoid main() {\n    gl_Position = vec4(aCoords, 0.0, 1.0);\n}\n"

    .line 167
    invoke-static {v2, v3}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v13

    const v2, 0x8b30

    const-string/jumbo v3, "#version 100\nprecision highp float;\nvoid main() {\n    gl_FragColor = vec4(vec3(0.), 1.);\n}\n"

    .line 168
    invoke-static {v2, v3}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v14

    .line 171
    if-nez v13, :cond_1

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create shader objects for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/generativeartwork/gl/LetterStock;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_1
    if-eqz v14, :cond_0

    .line 172
    invoke-static {v13, v14}, Lcom/sonymobile/generativeartwork/utils/Utils;->prepareShaderProgram(II)I

    move-result v15

    const/4 v2, -0x1

    .line 176
    if-eq v15, v2, :cond_2

    const-string/jumbo v2, "aCoords"

    .line 181
    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v12, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->aCoords:I

    .line 183
    invoke-virtual {v12}, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->checkIDs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    invoke-static {v15}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v2, 0x1

    .line 191
    new-array v0, v2, [I

    move-object/from16 v16, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 195
    invoke-static {}, Lcom/sonymobile/generativeartwork/gl/LetterStock;->getNumImages()I

    move-result v17

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v2, 0x0

    move v11, v2

    .line 198
    :goto_0
    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    const/4 v2, 0x1

    .line 218
    new-array v9, v2, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 220
    invoke-static {v2, v9, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 221
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/4 v2, 0x0

    .line 222
    aget v10, v9, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 224
    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v2, 0x0

    move v8, v2

    .line 225
    :goto_1
    move/from16 v0, v17

    if-lt v8, v0, :cond_5

    const/4 v2, 0x0

    .line 251
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v2, 0x8892

    const/4 v3, 0x0

    .line 254
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v2, 0x8d40

    const/4 v3, 0x0

    .line 255
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 256
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/4 v2, 0x0

    .line 258
    aput v10, v9, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 259
    invoke-static {v2, v9, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 261
    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 263
    invoke-static {v15, v13}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 264
    invoke-static {v15, v14}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 265
    invoke-static {v15}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 267
    invoke-static {v13}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 268
    invoke-static {v14}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 276
    return-void

    .line 177
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create shader program for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/generativeartwork/gl/LetterStock;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t found one of the Shader params (attribute,uniform) for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/generativeartwork/gl/LetterStock;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/16 v2, 0xde1

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    aget v3, v3, v11

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    .line 201
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 203
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    .line 204
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 206
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    .line 207
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 209
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x812f

    .line 210
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 212
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x812f

    .line 213
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 215
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 198
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_0

    :cond_5
    const v2, 0x8d40

    .line 227
    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 228
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const v2, 0x8d40

    const v3, 0x8ce0

    const/16 v4, 0xde1

    .line 230
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    aget v5, v5, v8

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 232
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 234
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 235
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const v2, 0x8892

    const/4 v3, 0x0

    .line 237
    aget v3, v16, v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v2, 0x8892

    .line 238
    sget-object v3, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v3, v3, v8

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    sget-object v4, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const v5, 0x88e4

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 241
    iget v2, v12, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->aCoords:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 244
    iget v2, v12, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->aCoords:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v2, 0x4000

    .line 246
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 248
    sget-object v4, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v4, v4, v8

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 225
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_1
.end method

.method public release()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 283
    return-void
.end method
