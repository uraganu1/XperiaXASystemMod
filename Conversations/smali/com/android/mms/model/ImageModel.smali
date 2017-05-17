.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBrief:Z

.field private mHeight:I

.field private volatile mIsLocation:Z

.field private mIsSticker:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    sput-boolean v0, Lcom/android/mms/model/ImageModel;->DEBUG:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "region"    # Lcom/android/mms/model/RegionModel;
    .param p4, "contentRestrictionType"    # Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    const-string/jumbo v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 67
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mIsSticker:Z

    .line 75
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 76
    sget-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    if-ne p4, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkMmsImageContentRestriction()V

    .line 73
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;ZZLcom/android/mms/model/MediaModel$ContentRestrictionType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "region"    # Lcom/android/mms/model/RegionModel;
    .param p4, "isLocation"    # Z
    .param p5, "isSticker"    # Z
    .param p6, "contentRestrictionType"    # Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    const-string/jumbo v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 67
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mIsSticker:Z

    .line 85
    iput-boolean p4, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 86
    iput-boolean p5, p0, Lcom/android/mms/model/ImageModel;->mIsSticker:Z

    .line 87
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 88
    sget-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    if-ne p6, v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkMmsImageContentRestriction()V

    .line 83
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "size"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 118
    const-string/jumbo v2, "img"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V

    .line 67
    iput-boolean v8, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 68
    iput-boolean v8, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 70
    iput-boolean v8, p0, Lcom/android/mms/model/ImageModel;->mIsSticker:Z

    .line 119
    iput-object p2, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/android/mms/model/ImageModel;->mSrc:Ljava/lang/String;

    .line 121
    iput v9, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 122
    iput v9, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 123
    iput-boolean v8, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "region"    # Lcom/android/mms/model/RegionModel;
    .param p6, "isSticker"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 95
    const-string/jumbo v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 67
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 68
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 70
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mIsSticker:Z

    .line 96
    iget-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds(Z)V

    .line 97
    iput-boolean p6, p0, Lcom/android/mms/model/ImageModel;->mIsSticker:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;[BZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "region"    # Lcom/android/mms/model/RegionModel;
    .param p6, "data"    # [B
    .param p7, "isSticker"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 102
    const-string/jumbo v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V

    .line 67
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 68
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    .line 70
    iput-boolean v7, p0, Lcom/android/mms/model/ImageModel;->mIsSticker:Z

    .line 104
    invoke-virtual {p0, p4}, Lcom/android/mms/model/ImageModel;->setUri(Landroid/net/Uri;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    .line 106
    iget-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds(Z)V

    .line 107
    iput-boolean p7, p0, Lcom/android/mms/model/ImageModel;->mIsSticker:Z

    .line 101
    return-void
.end method

.method private createThumbnailBitmap(IILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 318
    const-string/jumbo v6, "image/gif"

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 319
    sget-boolean v6, Lcom/android/mms/model/ImageModel;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 320
    const-string/jumbo v6, "GIF image. Returning null."

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 322
    :cond_0
    const/4 v6, 0x0

    return-object v6

    .line 324
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mWidth:I

    move/from16 v19, v0

    .line 325
    .local v19, "outWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mHeight:I

    move/from16 v18, v0

    .line 327
    .local v18, "outHeight":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/ImageModel;->getSampleSize(IIII)I

    move-result v21

    .line 329
    .local v21, "s":I
    sget-boolean v6, Lcom/android/mms/model/ImageModel;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "outWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int v7, v19, v21

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 331
    const-string/jumbo v7, " outHeight="

    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 331
    div-int v7, v18, v21

    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 333
    :cond_2
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 334
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 336
    const/4 v15, 0x0

    .line 338
    .local v15, "input":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    .line 339
    .local v15, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    move-object/from16 v0, v16

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 340
    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v15, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 341
    .local v5, "bmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/sonyericsson/conversations/util/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v17

    .line 343
    .local v17, "orientation":I
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v10

    .line 344
    .local v10, "m":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_3

    .line 345
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 346
    const/4 v11, 0x0

    .line 345
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 347
    .local v20, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    if-eq v0, v5, :cond_3

    .line 348
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    move-object/from16 v5, v20

    .line 361
    .end local v10    # "m":Landroid/graphics/Matrix;
    .end local v17    # "orientation":I
    .end local v20    # "rotatedBmp":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v15, :cond_4

    .line 363
    :try_start_1
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 353
    :cond_4
    :goto_0
    return-object v5

    .line 364
    :catch_0
    move-exception v13

    .line 365
    .local v13, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_0

    .line 357
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v15    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v14

    .line 358
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v14, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Error;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    const/4 v6, 0x0

    .line 361
    if-eqz v15, :cond_5

    .line 363
    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 359
    :cond_5
    :goto_1
    return-object v6

    .line 364
    :catch_2
    move-exception v13

    .line 365
    .restart local v13    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_1

    .line 354
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v12

    .line 355
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    const/4 v6, 0x0

    .line 361
    if-eqz v15, :cond_6

    .line 363
    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 356
    :cond_6
    :goto_2
    return-object v6

    .line 364
    :catch_4
    move-exception v13

    .line 365
    .restart local v13    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_2

    .line 360
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 361
    if-eqz v15, :cond_7

    .line 363
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 360
    :cond_7
    :goto_3
    throw v6

    .line 364
    :catch_5
    move-exception v13

    .line 365
    .restart local v13    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_3
.end method

.method private createThumbnailBitmapForBriefView(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "thumbnailBoundsLimit"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/ImageModel;->getData()[B

    move-result-object v9

    .line 264
    .local v9, "bytes":[B
    if-eqz v9, :cond_7

    array-length v3, v9

    if-lez v3, :cond_7

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mWidth:I

    move/from16 v17, v0

    .line 266
    .local v17, "outWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mHeight:I

    move/from16 v16, v0

    .line 268
    .local v16, "outHeight":I
    const/16 v19, 0x1

    .line 269
    .local v19, "s":I
    :goto_0
    div-int v3, v17, v19

    move/from16 v0, p1

    if-gt v3, v0, :cond_0

    div-int v3, v16, v19

    move/from16 v0, p1

    if-le v3, v0, :cond_1

    .line 270
    :cond_0
    mul-int/lit8 v19, v19, 0x2

    goto :goto_0

    .line 272
    :cond_1
    sget-boolean v3, Lcom/android/mms/model/ImageModel;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "outWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int v4, v17, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " outHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int v4, v16, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 275
    :cond_2
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 276
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v19

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 278
    const/4 v12, 0x0

    .line 280
    .local v12, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v12    # "input":Ljava/io/InputStream;
    .local v13, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 282
    const/4 v3, 0x0

    invoke-static {v13, v3, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 283
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/ImageModel;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ExifUtil;->getImageOrientation([B)I

    move-result v15

    .line 285
    .local v15, "orientation":I
    if-eqz v15, :cond_3

    .line 286
    invoke-static {v15}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v7

    .line 287
    .local v7, "m":Landroid/graphics/Matrix;
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_3

    .line 288
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 289
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 288
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 289
    const/4 v8, 0x0

    .line 288
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 290
    .local v18, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_3

    .line 291
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    move-object/from16 v2, v18

    .line 302
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v15    # "orientation":I
    .end local v18    # "rotatedBmp":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v13, :cond_4

    .line 304
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    :cond_4
    :goto_1
    return-object v2

    .line 305
    :catch_0
    move-exception v10

    .line 306
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_1

    .line 298
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v11

    .line 299
    .end local v12    # "input":Ljava/io/InputStream;
    .local v11, "e":Ljava/lang/OutOfMemoryError;
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Error;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    const/4 v3, 0x0

    .line 302
    if-eqz v12, :cond_5

    .line 304
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 300
    :cond_5
    :goto_3
    return-object v3

    .line 305
    :catch_2
    move-exception v10

    .line 306
    .restart local v10    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_3

    .line 301
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    .line 302
    :goto_4
    if-eqz v12, :cond_6

    .line 304
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 301
    :cond_6
    :goto_5
    throw v3

    .line 305
    :catch_3
    move-exception v10

    .line 306
    .restart local v10    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/mms/model/ImageModel;->logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V

    goto :goto_5

    .line 311
    .end local v10    # "e":Ljava/io/IOException;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "outHeight":I
    .end local v17    # "outWidth":I
    .end local v19    # "s":I
    :cond_7
    const/4 v3, 0x0

    return-object v3

    .line 301
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "outHeight":I
    .restart local v17    # "outWidth":I
    .restart local v19    # "s":I
    :catchall_1
    move-exception v3

    move-object v12, v13

    .end local v13    # "input":Ljava/io/InputStream;
    .local v12, "input":Ljava/io/InputStream;
    goto :goto_4

    .line 298
    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v13    # "input":Ljava/io/InputStream;
    :catch_4
    move-exception v11

    .restart local v11    # "e":Ljava/lang/OutOfMemoryError;
    move-object v12, v13

    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private decodeImageBounds(Z)V
    .locals 3
    .param p1, "isBrief"    # Z

    .prologue
    .line 175
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 176
    .local v0, "uriImage":Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 177
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 179
    sget-boolean v1, Lcom/android/mms/model/ImageModel;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Image bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method private getSampleSize(IIII)I
    .locals 4
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 382
    const/4 v2, 0x1

    .line 383
    .local v2, "s":I
    sub-int v0, p4, p2

    .line 384
    .local v0, "diffHeight":I
    sub-int v1, p3, p1

    .line 386
    .local v1, "diffWidth":I
    if-gez v1, :cond_0

    if-gez v0, :cond_0

    .line 387
    const/4 v2, 0x1

    .line 393
    :goto_0
    return v2

    .line 388
    :cond_0
    if-le v1, v0, :cond_1

    .line 389
    mul-int/lit8 v3, p3, 0x2

    div-int/2addr v3, p1

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    .line 391
    :cond_1
    mul-int/lit8 v3, p4, 0x2

    div-int/2addr v3, p2

    add-int/lit8 v2, v3, -0x1

    goto :goto_0
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    const-string/jumbo v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    new-instance v1, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v4, v3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Void;Z)V

    .line 134
    .local v1, "uriImage":Lcom/android/mms/ui/UriImage;
    :goto_0
    invoke-virtual {v1}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Type of media is unknown."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "uriImage":Lcom/android/mms/ui/UriImage;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Image loading problem!"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v1    # "uriImage":Lcom/android/mms/ui/UriImage;
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/model/ImageModel;->mSrc:Ljava/lang/String;

    .line 140
    invoke-virtual {v1}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 141
    invoke-virtual {v1}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 142
    iget v2, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    if-gez v2, :cond_3

    .line 143
    :cond_2
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Illegal Size."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_3
    sget-boolean v2, Lcom/android/mms/model/ImageModel;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New ImageModel created: mSrc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    iget-object v3, p0, Lcom/android/mms/model/ImageModel;->mSrc:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    const-string/jumbo v3, " mContentType="

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    iget-object v3, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    const-string/jumbo v3, " mUri="

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :cond_4
    return-void
.end method

.method private logImageModelException(Ljava/lang/Error;Landroid/net/Uri;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Error;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " URI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [W,H]=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    const-string/jumbo v1, ","

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    const-string/jumbo v1, "]"

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    return-void
.end method

.method private logImageModelException(Ljava/lang/Exception;Landroid/net/Uri;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " URI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [W,H]=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    const-string/jumbo v1, ","

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    const-string/jumbo v1, "]"

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    return-void
.end method


# virtual methods
.method protected checkMmsImageContentRestriction()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 233
    .local v0, "cr":Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 234
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkResolution(II)V

    .line 231
    return-void
.end method

.method public createThumbnail()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/MediaUtil;->dp2px(Landroid/content/Context;F)F

    move-result v1

    float-to-int v0, v1

    .line 254
    .local v0, "matchLimit":I
    iget-boolean v1, p0, Lcom/android/mms/model/ImageModel;->mBrief:Z

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmapForBriefView(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 257
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/mms/model/ImageModel;->createThumbnail(II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public createThumbnail(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    iput-boolean v4, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    .line 192
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    const-string/jumbo v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 194
    .local v0, "action":Lcom/android/mms/model/MediaModel$MediaAction;
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 201
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/mms/model/ImageModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 204
    .end local v0    # "action":Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/mms/model/ImageModel;->notifyModelChanged(Z)V

    .line 185
    return-void

    .line 188
    :cond_3
    iget-short v1, p0, Lcom/android/mms/model/ImageModel;->mFill:S

    if-eq v1, v4, :cond_0

    .line 189
    iput-boolean v3, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    goto :goto_0

    .line 196
    .restart local v0    # "action":Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 197
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_1

    .line 198
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_1
.end method

.method public declared-synchronized isLocation()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mIsLocation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mSrc:Ljava/lang/String;

    const-string/jumbo v1, "location_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isResizeable()Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isGifImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSticker()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mIsSticker:Z

    return v0
.end method
