.class public Lcom/sonymobile/generativeartwork/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/utils/ImageLoader;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/utils/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTextureFromAsset(Ljava/lang/String;Landroid/content/res/AssetManager;ILandroid/graphics/Rect;Z)I
    .locals 3

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x0

    .line 48
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    .line 52
    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 55
    const/4 v1, 0x0

    invoke-static {v0, p2, p4, v1}, Lcom/sonymobile/generativeartwork/utils/ImageLoader;->loadTextureFromBitmap(Landroid/graphics/Bitmap;IZZ)I

    move-result v1

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error during loading texture from Asset"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadTextureFromBitmap(Landroid/graphics/Bitmap;IZZ)I
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 99
    new-array v7, v0, [I

    const/4 v0, -0x1

    .line 100
    aput v0, v7, v8

    .line 107
    if-nez p3, :cond_0

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    :try_start_0
    invoke-static {v0, v7, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 115
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 116
    aget v1, v7, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 117
    invoke-static {v0, v1, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 118
    if-nez p2, :cond_1

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    .line 123
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    .line 124
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    :goto_1
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    .line 127
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    .line 128
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    aget v0, v7, v8

    return v0

    .line 108
    :cond_0
    :try_start_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 109
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 v0, 0xde1

    .line 119
    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2703

    .line 120
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2703

    .line 121
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/sonymobile/generativeartwork/utils/Utils;->checkGLErr()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error during loading texture from Resource"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadTextureFromResource(ILandroid/content/res/Resources;IZ)I
    .locals 2

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 79
    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Lcom/sonymobile/generativeartwork/utils/ImageLoader;->loadTextureFromBitmap(Landroid/graphics/Bitmap;IZZ)I

    move-result v1

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error during loading texture from Resource"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
