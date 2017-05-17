.class public Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;
.super Ljava/lang/Object;
.source "ContactPhotoUtils.java"


# static fields
.field private static final DOCUMENT_ID_INDEX:I = 0x1

.field private static final DOWNLOAD_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.providers.downloads.documents"

.field private static final DOWNLOAD_PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://downloads/public_downloads"

.field private static final EXTERNAL_STORAGE_DOCUMENT_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final EXTERNAL_STORAGE_URI_TYPE:Ljava/lang/String; = "primary"

.field private static final FILE_NAME_INDEX:I = 0x1

.field public static final INTENT_ACTION_IMAGE_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final MEDIA_DOCUMENT_AUTHORITY:Ljava/lang/String; = "com.android.providers.media.documents"

.field private static final PHOTO_DATE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static final STORAGE_TYPE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactPhotoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGalleryIntentExtras(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 166
    const-string/jumbo v0, "crop"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v0, "scale"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const-string/jumbo v0, "scaleUpIfNeeded"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const-string/jumbo v0, "aspectX"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string/jumbo v0, "aspectY"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method public static addGalleryIntentExtras(Landroid/content/Intent;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "photoSize"    # I

    .prologue
    .line 180
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;)V

    .line 181
    const-string/jumbo v0, "outputX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string/jumbo v0, "outputY"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method public static addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 192
    const-string/jumbo v0, "output"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    const-string/jumbo v0, "output"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 191
    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqDimension"    # I

    .prologue
    .line 296
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 297
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 298
    .local v4, "width":I
    const/4 v3, 0x1

    .line 300
    .local v3, "inSampleSize":I
    if-gt v2, p1, :cond_0

    if-le v4, p1, :cond_1

    .line 302
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 303
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 306
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p1, :cond_1

    .line 307
    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 308
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 312
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 131
    .local v2, "size":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 133
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 134
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 135
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ContactPhotoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to serialize photo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v3, 0x0

    return-object v3
.end method

.method public static copyExifOrientation(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputUri"    # Landroid/net/Uri;
    .param p2, "outputUri"    # Landroid/net/Uri;

    .prologue
    .line 423
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getImagePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "imgPath":Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getTempImagePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, "tempImgPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 426
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v2, "img":Ljava/io/File;
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v7, "Orientation"

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "orientation":Ljava/lang/String;
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 431
    .local v4, "newExif":Landroid/media/ExifInterface;
    const-string/jumbo v7, "Orientation"

    invoke-virtual {v4, v7, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "img":Ljava/io/File;
    .end local v4    # "newExif":Landroid/media/ExifInterface;
    .end local v5    # "orientation":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 433
    .restart local v2    # "img":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ContactPhotoUtils"

    const-string/jumbo v8, "Error while copying EXIF data"

    invoke-static {v7, v8, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static decodeAndScaleBitmapFromStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 272
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getMaxScreenDimension()I

    move-result v4

    .line 273
    .local v4, "screenDim":I
    const/4 v2, 0x0

    .line 275
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 277
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 279
    .local v2, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 280
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 281
    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 282
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 284
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    return-object v0

    .line 287
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "ContactPhotoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to downscale and decode photo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " because: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-object v8
.end method

.method public static generateTempCroppedImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->generateTempPhotoFileName(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->pathForTempPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {p0, v0, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static generateTempImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->generateTempPhotoFileName(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->pathForTempPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {p0, v0, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static generateTempPhotoFileName(Z)Ljava/lang/String;
    .locals 6
    .param p0, "isForCroppedFile"    # Z

    .prologue
    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 115
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "\'IMG\'_yyyyMMdd_HHmmss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 116
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v2, "name":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "ContactPhoto-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    if-eqz p0, :cond_0

    .line 119
    const-string/jumbo v3, "-cropped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 150
    .local v2, "imageStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v0

    .line 154
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ContactPhotoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to serialize photo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 392
    const/4 v7, 0x0

    .line 393
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v6, "_data"

    .line 394
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 395
    const/4 v0, 0x0

    aput-object v6, v2, v0

    .line 398
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 399
    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 398
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 400
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 402
    .local v9, "index":I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 407
    if-eqz v7, :cond_0

    .line 408
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_0
    return-object v0

    .line 407
    .end local v9    # "index":I
    :cond_1
    if-eqz v7, :cond_2

    .line 408
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 411
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v10

    .line 404
    :catch_0
    move-exception v8

    .line 405
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v0, "ContactPhotoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to lookup data column for uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    if-eqz v7, :cond_2

    .line 408
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 406
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    .line 407
    if-eqz v7, :cond_3

    .line 408
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_3
    throw v0
.end method

.method private static getImagePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 341
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 342
    const-string/jumbo v7, "com.android.externalstorage.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 343
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "docId":Ljava/lang/String;
    const-string/jumbo v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "split":[Ljava/lang/String;
    const-string/jumbo v7, "primary"

    aget-object v8, v6, v11

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 351
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 352
    aget-object v8, v6, v9

    .line 351
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 354
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "com.android.providers.downloads.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 355
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v7, "content://downloads/public_downloads"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 356
    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 359
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v10, v10}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 360
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "com.android.providers.media.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 361
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .restart local v1    # "docId":Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 363
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string/jumbo v4, "_id=?"

    .line 364
    .local v4, "selection":Ljava/lang/String;
    const-string/jumbo v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v2, v7, v9

    .line 365
    .local v2, "documentId":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    .line 366
    aput-object v2, v5, v11

    .line 369
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-static {p0, v0, v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 371
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v2    # "documentId":Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 372
    invoke-static {p0, p1, v10, v10}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 373
    :cond_4
    const-string/jumbo v7, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 374
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 377
    :cond_5
    return-object v10
.end method

.method private static getMaxScreenDimension()I
    .locals 3

    .prologue
    .line 316
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 317
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private static getTempImagePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 329
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static pathForTempPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 104
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    sget-boolean v2, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 106
    const-string/jumbo v2, "ContactPhotoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static saveBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "outputUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 248
    const/4 v2, 0x0

    .line 250
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 251
    const-string/jumbo v4, "w"

    .line 250
    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 252
    .local v0, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 253
    const-string/jumbo v3, "ContactPhotoUtils"

    const-string/jumbo v4, "Unable to create output stream due to null asset file descriptor!"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return v6

    .line 256
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 257
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_1

    .line 258
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 259
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v3, 0x1

    return v3

    .line 263
    :cond_1
    return v6

    .line 265
    .end local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ContactPhotoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to write Bitmap:  because: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return v6
.end method

.method public static savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputUri"    # Landroid/net/Uri;
    .param p2, "outputUri"    # Landroid/net/Uri;
    .param p3, "deleteAfterSave"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 208
    const/4 v3, 0x0

    .line 210
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 211
    const-string/jumbo v6, "rw"

    .line 210
    invoke-virtual {v5, p2, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 212
    .local v0, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_1

    .line 213
    const-string/jumbo v5, "ContactPhotoUtils"

    const-string/jumbo v6, "Unable to create output stream due to null asset file descriptor!"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    if-eqz p3, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    :cond_0
    return v4

    .line 216
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 217
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->decodeAndScaleBitmapFromStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 219
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_6

    .line 220
    const-string/jumbo v5, "ContactPhotoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t decode stream. Bitmap is null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 225
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 226
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_3
    if-eqz v1, :cond_4

    const/4 v4, 0x1

    .line 233
    :cond_4
    if-eqz p3, :cond_5

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    :cond_5
    return v4

    .line 221
    :cond_6
    if-eqz v3, :cond_2

    .line 222
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 230
    .end local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v5, "ContactPhotoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to write photo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " because: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    if-eqz p3, :cond_7

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    :cond_7
    return v4

    .line 232
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 233
    if-eqz p3, :cond_8

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    :cond_8
    throw v4
.end method
