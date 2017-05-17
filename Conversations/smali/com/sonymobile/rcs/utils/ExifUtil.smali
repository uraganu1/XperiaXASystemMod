.class public Lcom/sonymobile/rcs/utils/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angleToExifOrientation(I)I
    .locals 1
    .param p0, "angle"    # I

    .prologue
    .line 235
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    .line 243
    return v0

    :sswitch_0
    const/4 v0, 0x6

    .line 237
    return v0

    :sswitch_1
    const/4 v0, 0x3

    .line 239
    return v0

    :sswitch_2
    const/16 v0, 0x8

    .line 241
    return v0

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getExifInDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 67
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    .line 75
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    .line 69
    return v0

    :pswitch_2
    const/16 v0, 0xb4

    .line 71
    return v0

    :pswitch_3
    const/16 v0, 0x10e

    .line 73
    return v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getExifOrientationFromDatabase(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/ExifUtil;->isMediaUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x0

    .line 209
    .local v9, "orientation":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    .line 231
    :cond_0
    :goto_0
    return v9

    .line 205
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "orientation":I
    :cond_1
    return v3

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "orientation":I
    :cond_2
    const/4 v7, 0x0

    .local v7, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    .line 214
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "orientation"

    aput-object v3, v2, v1

    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 218
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_4

    .line 226
    :cond_3
    :goto_1
    if-eqz v7, :cond_0

    .line 227
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 218
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 220
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 221
    .local v6, "angle":I
    invoke-static {v6}, Lcom/sonymobile/rcs/utils/ExifUtil;->angleToExifOrientation(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto :goto_1

    .line 227
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "angle":I
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 226
    .local v8, "ex":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 227
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 226
    if-nez v7, :cond_5

    .line 227
    :goto_2
    throw v1

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private static getExifOrientationFromInputStream(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 94
    .local v8, "orientation":I
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 95
    .local v6, "is":Ljava/io/InputStream;
    if-nez v6, :cond_1

    .line 200
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v8

    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_1
    const/16 v9, 0x64

    .line 96
    new-array v1, v9, [B

    .line 97
    .local v1, "data":[B
    const/4 v0, 0x0

    .local v0, "bigEndian":Z
    const/4 v9, 0x0

    const/16 v10, 0x64

    .line 99
    invoke-virtual {v6, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 100
    .local v7, "len":I
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x6

    .line 105
    .local v5, "i":I
    const/4 v4, 0x0

    .line 106
    .local v4, "found":Z
    :goto_1
    add-int/lit8 v9, v7, -0x4

    if-lt v5, v9, :cond_6

    .line 114
    :cond_2
    if-nez v4, :cond_9

    .line 131
    :cond_3
    if-nez v4, :cond_e

    .line 153
    :cond_4
    :goto_2
    if-eqz v4, :cond_0

    .line 162
    const/4 v4, 0x0

    .line 163
    :goto_3
    add-int/lit8 v9, v7, -0xa

    if-ge v5, v9, :cond_0

    if-nez v4, :cond_0

    .line 164
    if-nez v0, :cond_10

    .line 178
    aget-byte v9, v1, v5

    const/4 v10, 0x1

    if-eq v9, v10, :cond_11

    .line 191
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 106
    :cond_6
    if-nez v4, :cond_2

    .line 107
    aget-byte v9, v1, v5

    const/16 v10, 0x45

    if-eq v9, v10, :cond_8

    .line 111
    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 107
    :cond_8
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v1, v9

    const/16 v10, 0x78

    if-ne v9, v10, :cond_7

    add-int/lit8 v9, v5, 0x2

    aget-byte v9, v1, v9

    const/16 v10, 0x69

    if-ne v9, v10, :cond_7

    add-int/lit8 v9, v5, 0x3

    aget-byte v9, v1, v9

    const/16 v10, 0x66

    if-ne v9, v10, :cond_7

    .line 109
    const/4 v4, 0x1

    goto :goto_5

    .line 116
    :cond_9
    add-int/lit8 v5, v5, 0x5

    .line 118
    const/4 v4, 0x0

    .line 119
    :goto_6
    add-int/lit8 v9, v7, -0x2

    if-ge v5, v9, :cond_3

    if-nez v4, :cond_3

    .line 120
    aget-byte v9, v1, v5

    const/16 v10, 0x49

    if-eq v9, v10, :cond_c

    .line 123
    :cond_a
    aget-byte v9, v1, v5

    const/16 v10, 0x4d

    if-eq v9, v10, :cond_d

    .line 127
    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 120
    :cond_c
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v1, v9

    const/16 v10, 0x49

    if-ne v9, v10, :cond_a

    .line 121
    const/4 v0, 0x1

    .line 122
    const/4 v4, 0x1

    goto :goto_7

    .line 123
    :cond_d
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v1, v9

    const/16 v10, 0x4d

    if-ne v9, v10, :cond_b

    .line 124
    const/4 v0, 0x0

    .line 125
    const/4 v4, 0x1

    goto :goto_7

    .line 133
    :cond_e
    add-int/lit8 v5, v5, 0x3

    .line 136
    const/4 v4, 0x0

    .line 137
    if-nez v0, :cond_f

    .line 147
    add-int/lit8 v9, v5, 0x3

    aget-byte v9, v1, v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    .line 148
    const/4 v4, 0x1

    goto :goto_2

    .line 138
    :cond_f
    aget-byte v9, v1, v5

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    .line 144
    const/4 v4, 0x1

    goto :goto_2

    .line 165
    :cond_10
    aget-byte v9, v1, v5

    const/16 v10, 0x12

    if-ne v9, v10, :cond_5

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v1, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    add-int/lit8 v9, v5, 0x2

    aget-byte v9, v1, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    add-int/lit8 v9, v5, 0x3

    aget-byte v9, v1, v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v5, 0x4

    aget-byte v9, v1, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    add-int/lit8 v9, v5, 0x5

    aget-byte v9, v1, v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v5, 0x6

    aget-byte v9, v1, v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v5, 0x7

    aget-byte v9, v1, v9

    if-nez v9, :cond_5

    .line 174
    const/4 v4, 0x1

    .line 175
    add-int/lit8 v9, v5, 0x8

    aget-byte v8, v1, v9

    goto/16 :goto_4

    .line 178
    :cond_11
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v1, v9

    const/16 v10, 0x12

    if-ne v9, v10, :cond_5

    add-int/lit8 v9, v5, 0x2

    aget-byte v9, v1, v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v5, 0x3

    aget-byte v9, v1, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    add-int/lit8 v9, v5, 0x4

    aget-byte v9, v1, v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v5, 0x5

    aget-byte v9, v1, v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v5, 0x6

    aget-byte v9, v1, v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v5, 0x7

    aget-byte v9, v1, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 187
    const/4 v4, 0x1

    .line 188
    add-int/lit8 v9, v5, 0x9

    aget-byte v8, v1, v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 199
    .end local v0    # "bigEndian":Z
    .end local v1    # "data":[B
    .end local v4    # "found":Z
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "ExifUtil"

    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "File not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v9, "ExifUtil"

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to read file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 87
    :cond_0
    return v3

    .line 82
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/ExifUtil;->isJpeg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-static {p0, v0, p1}, Lcom/sonymobile/rcs/utils/ExifUtil;->getExifOrientationFromInputStream(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    return v2
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 39
    .local v4, "orientation":I
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v5, "file"

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 51
    invoke-static {p0, p1}, Lcom/sonymobile/rcs/utils/ExifUtil;->getExifOrientationFromDatabase(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    .line 52
    if-nez v4, :cond_0

    .line 54
    invoke-static {p0, p1}, Lcom/sonymobile/rcs/utils/ExifUtil;->getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    goto :goto_0

    .line 41
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "imageFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 44
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_1
    const-string/jumbo v5, "Orientation"

    const/4 v6, 0x1

    .line 45
    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move-object v1, v2

    .line 49
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v1, "exif":Landroid/media/ExifInterface;
    goto :goto_0

    .local v1, "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 48
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v1, "exif":Landroid/media/ExifInterface;
    goto :goto_1
.end method

.method public static getTransformationMatrix(I)Landroid/graphics/Matrix;
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    .line 266
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 267
    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch p0, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const/high16 v1, 0x42b40000    # 90.0f

    .line 271
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x43340000    # 180.0f

    .line 274
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    :pswitch_3
    const/high16 v1, 0x43870000    # 270.0f

    .line 277
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static isJpeg(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "image/jpeg"

    .line 249
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "image/jpg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const-string/jumbo v0, "media"

    .line 253
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
