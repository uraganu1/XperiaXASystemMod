.class public final Lcom/sonymobile/generativeartwork/gl/LetterStock;
.super Ljava/lang/Object;
.source "LetterStock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;
    }
.end annotation


# static fields
.field static final STOCK_IMAGES:[I

.field private static final TAG:Ljava/lang/String;

.field private static sTriangles:[[F


# instance fields
.field public sStockTextures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x8

    .line 24
    const-class v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;->TAG:Ljava/lang/String;

    .line 28
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;->STOCK_IMAGES:[I

    .line 68
    new-array v2, v6, [[F

    .line 76
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 82
    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 90
    new-array v3, v5, [F

    fill-array-data v3, :array_3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 96
    new-array v3, v6, [F

    fill-array-data v3, :array_4

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 103
    new-array v3, v5, [F

    fill-array-data v3, :array_5

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 109
    new-array v3, v6, [F

    fill-array-data v3, :array_6

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 116
    new-array v3, v5, [F

    fill-array-data v3, :array_7

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 122
    new-array v3, v6, [F

    fill-array-data v3, :array_8

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 129
    new-array v3, v5, [F

    fill-array-data v3, :array_9

    aput-object v3, v2, v5

    .line 135
    new-array v3, v5, [F

    fill-array-data v3, :array_a

    const/16 v4, 0x9

    aput-object v3, v2, v4

    .line 68
    sput-object v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 143
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 144
    sget-object v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v2, v2, v0

    sget-object v3, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v3, v3, v0

    aget v3, v3, v1

    const v4, 0x4486e000    # 1079.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    .end local v1    # "j":I
    :cond_1
    return-void

    .line 28
    :array_0
    .array-data 4
        0x7f020136
        0x7f020137
        0x7f020138
        0x7f020139
        0x7f02013a
        0x7f02013b
        0x7f02013c
        0x7f02013d
        0x7f02013e
        0x7f02013f
    .end array-data

    .line 76
    :array_1
    .array-data 4
        0x4486e000    # 1079.0f
        0x4486e000    # 1079.0f
        0x444f8000    # 830.0f
        0x4486e000    # 1079.0f
        0x43690000    # 233.0f
        0x0
        0x444e4000    # 825.0f
        0x0
    .end array-data

    .line 82
    :array_2
    .array-data 4
        0x4486e000    # 1079.0f
        0x4486e000    # 1079.0f
        0x44584000    # 865.0f
        0x4486e000    # 1079.0f
        0x44524000    # 841.0f
        0x442f4000    # 701.0f
        0x441b0000    # 620.0f
        0x0
        0x4474c000    # 979.0f
        0x0
        0x4486e000    # 1079.0f
        0x442b8000    # 686.0f
    .end array-data

    .line 90
    :array_3
    .array-data 4
        0x4486e000    # 1079.0f
        0x4486e000    # 1079.0f
        0x444f8000    # 830.0f
        0x4486e000    # 1079.0f
        0x44330000    # 716.0f
        0x0
        0x446c4000    # 945.0f
        0x0
    .end array-data

    .line 96
    :array_4
    .array-data 4
        0x4486e000    # 1079.0f
        0x4486e000    # 1079.0f
        0x44194000    # 613.0f
        0x4486e000    # 1079.0f
        0x4409c000    # 551.0f
        0x0
        0x44608000    # 898.0f
        0x0
        0x4486e000    # 1079.0f
        0x44238000    # 654.0f
    .end array-data

    .line 103
    :array_5
    .array-data 4
        0x43b90000    # 370.0f
        0x4486e000    # 1079.0f
        0x42f20000    # 121.0f
        0x4486e000    # 1079.0f
        0x43460000    # 198.0f
        0x0
        0x4416c000    # 603.0f
        0x0
    .end array-data

    .line 109
    :array_6
    .array-data 4
        0x44704000    # 961.0f
        0x4486e000    # 1079.0f
        0x44040000    # 528.0f
        0x4486e000    # 1079.0f
        0x441fc000    # 639.0f
        0x44314000    # 709.0f
        0x441f4000    # 637.0f
        0x0
        0x4485a000    # 1069.0f
        0x0
    .end array-data

    .line 116
    :array_7
    .array-data 4
        0x43d48000    # 425.0f
        0x4486e000    # 1079.0f
        0x43310000    # 177.0f
        0x4486e000    # 1079.0f
        0x441e4000    # 633.0f
        0x0
        0x445d0000    # 884.0f
        0x0
    .end array-data

    .line 122
    :array_8
    .array-data 4
        0x4486e000    # 1079.0f
        0x4486e000    # 1079.0f
        0x444f8000    # 830.0f
        0x4486e000    # 1079.0f
        0x43a68000    # 333.0f
        0x0
        0x4419c000    # 615.0f
        0x0
        0x4486e000    # 1079.0f
        0x43930000    # 294.0f
    .end array-data

    .line 129
    :array_9
    .array-data 4
        0x4486e000    # 1079.0f
        0x4486e000    # 1079.0f
        0x444f8000    # 830.0f
        0x4486e000    # 1079.0f
        0x442c8000    # 690.0f
        0x0
        0x44628000    # 906.0f
        0x0
    .end array-data

    .line 135
    :array_a
    .array-data 4
        0x44384000    # 737.0f
        0x4486e000    # 1079.0f
        0x43f40000    # 488.0f
        0x4486e000    # 1079.0f
        0x44370000    # 732.0f
        0x0
        0x446cc000    # 947.0f
        0x0
    .end array-data
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

    .line 154
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
    .locals 20
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 165
    new-instance v17, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;-><init>(Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;)V

    .line 167
    .local v17, "shdParams":Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;
    const-string/jumbo v2, "#version 100\nattribute vec2 aCoords;\nvoid main() {\n    gl_Position = vec4(aCoords, 0.0, 1.0);\n}\n"

    const v3, 0x8b31

    invoke-static {v3, v2}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v19

    .line 168
    .local v19, "vertexShader":I
    const-string/jumbo v2, "#version 100\nprecision highp float;\nvoid main() {\n    gl_FragColor = vec4(vec3(0.), 1.);\n}\n"

    const v3, 0x8b30

    invoke-static {v3, v2}, Lcom/sonymobile/generativeartwork/utils/Utils;->loadShader(ILjava/lang/String;)I

    move-result v13

    .line 170
    .local v13, "fragmentShader":I
    const/16 v16, -0x1

    .line 171
    .local v16, "program":I
    if-eqz v19, :cond_0

    if-eqz v13, :cond_0

    .line 172
    move/from16 v0, v19

    invoke-static {v0, v13}, Lcom/sonymobile/generativeartwork/utils/Utils;->prepareShaderProgram(II)I

    move-result v16

    .line 176
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_1

    .line 177
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

    .line 181
    :cond_1
    const-string/jumbo v2, "aCoords"

    move/from16 v0, v16

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->aCoords:I

    .line 183
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->checkIDs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    new-instance v2, Ljava/lang/RuntimeException;

    .line 185
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

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 191
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 193
    .local v11, "buffers":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 195
    invoke-static {}, Lcom/sonymobile/generativeartwork/gl/LetterStock;->getNumImages()I

    move-result v15

    .line 196
    .local v15, "numStockImages":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 198
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v15, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    aget v2, v2, v14

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 201
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    .line 202
    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    .line 201
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 203
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 204
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    .line 205
    const/16 v4, 0x2601

    .line 204
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 206
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 207
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    .line 208
    const/16 v4, 0x2601

    .line 207
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 209
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 210
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    .line 211
    const v4, 0x812f

    .line 210
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 212
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 213
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    .line 214
    const v4, 0x812f

    .line 213
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 215
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 198
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 218
    :cond_3
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 220
    .local v18, "tmpName":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 221
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 222
    const/4 v2, 0x0

    aget v12, v18, v2

    .line 224
    .local v12, "fbName":I
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 225
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_4

    .line 227
    const v2, 0x8d40

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 228
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sStockTextures:[I

    aget v2, v2, v14

    .line 230
    const v3, 0x8d40

    const v4, 0x8ce0

    .line 231
    const/16 v5, 0xde1

    const/4 v6, 0x0

    .line 230
    invoke-static {v3, v4, v5, v2, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 232
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 234
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 235
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 237
    const/4 v2, 0x0

    aget v2, v11, v2

    const v3, 0x8892

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 238
    sget-object v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v2, v2, v14

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    .line 239
    sget-object v3, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v3, v3, v14

    invoke-static {v3}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 238
    const v4, 0x8892

    .line 239
    const v5, 0x88e4

    .line 238
    invoke-static {v4, v2, v3, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 241
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->aCoords:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    .line 242
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 241
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 244
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sonymobile/generativeartwork/gl/LetterStock$ShaderSettings;->aCoords:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 246
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 248
    sget-object v2, Lcom/sonymobile/generativeartwork/gl/LetterStock;->sTriangles:[[F

    aget-object v2, v2, v14

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 225
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 251
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 254
    const v2, 0x8892

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 255
    const v2, 0x8d40

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 256
    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 258
    const/4 v2, 0x0

    aput v12, v18, v2

    .line 259
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 261
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 263
    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 264
    move/from16 v0, v16

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 265
    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 267
    invoke-static/range {v19 .. v19}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 268
    invoke-static {v13}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 161
    return-void
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

    .line 281
    return-void
.end method
