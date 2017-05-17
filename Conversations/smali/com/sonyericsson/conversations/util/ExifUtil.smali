.class public Lcom/sonyericsson/conversations/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static angleToExifOrientation(I)I
    .locals 1
    .param p0, "angle"    # I

    .prologue
    .line 239
    sparse-switch p0, :sswitch_data_0

    .line 247
    const/4 v0, 0x1

    return v0

    .line 241
    :sswitch_0
    const/4 v0, 0x6

    return v0

    .line 243
    :sswitch_1
    const/4 v0, 0x3

    return v0

    .line 245
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method static getExifOrientationFromByteArray([B)I
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, "orientation":I
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromStream(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 99
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "Failed to get orientation from byte array"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getExifOrientationFromDatabase(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ExifUtil;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    return v2

    .line 212
    :cond_0
    const/4 v10, 0x0

    .line 213
    .local v10, "orientation":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 214
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_2

    .line 215
    const/4 v8, 0x0

    .line 218
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    .line 219
    const-string/jumbo v0, "orientation"

    const/4 v2, 0x0

    aput-object v0, v3, v2

    .line 221
    .local v3, "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 222
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 225
    .local v7, "angle":I
    invoke-static {v7}, Lcom/sonyericsson/conversations/util/ExifUtil;->angleToExifOrientation(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 230
    .end local v7    # "angle":I
    :cond_1
    if-eqz v8, :cond_2

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 235
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return v10

    .line 227
    :catch_0
    move-exception v9

    .line 230
    .local v9, "ex":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 229
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 230
    if-eqz v8, :cond_3

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_3
    throw v0
.end method

.method private static getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method static getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "skipTypeCheck"    # Z

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "orientation":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 76
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "type":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonyericsson/conversations/util/ExifUtil;->isJpeg(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_1

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 80
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromStream(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 88
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 83
    .restart local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to read file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "File not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getExifOrientationFromStream(Ljava/io/InputStream;)I
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x12

    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 103
    const/4 v5, 0x0

    .line 104
    .local v5, "orientation":I
    if-eqz p0, :cond_3

    .line 105
    const/16 v6, 0x64

    new-array v1, v6, [B

    .line 106
    .local v1, "data":[B
    const/4 v0, 0x0

    .line 108
    .local v0, "bigEndian":Z
    const/16 v6, 0x64

    invoke-virtual {p0, v1, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 109
    .local v4, "len":I
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 112
    const/4 v3, 0x6

    .line 114
    .local v3, "i":I
    const/4 v2, 0x0

    .line 115
    .local v2, "found":Z
    :goto_0
    add-int/lit8 v6, v4, -0x4

    if-ge v3, v6, :cond_0

    if-eqz v2, :cond_4

    .line 123
    :cond_0
    if-eqz v2, :cond_1

    .line 125
    add-int/lit8 v3, v3, 0x5

    .line 127
    const/4 v2, 0x0

    .line 128
    :goto_1
    add-int/lit8 v6, v4, -0x2

    if-ge v3, v6, :cond_1

    if-eqz v2, :cond_6

    .line 140
    :cond_1
    if-eqz v2, :cond_2

    .line 142
    add-int/lit8 v3, v3, 0x3

    .line 145
    const/4 v2, 0x0

    .line 146
    if-eqz v0, :cond_9

    .line 147
    aget-byte v6, v1, v3

    if-ne v6, v10, :cond_2

    .line 153
    const/4 v2, 0x1

    .line 162
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 171
    const/4 v2, 0x0

    .line 172
    :goto_3
    add-int/lit8 v6, v4, -0xa

    if-ge v3, v6, :cond_3

    if-eqz v2, :cond_a

    .line 204
    .end local v0    # "bigEndian":Z
    .end local v1    # "data":[B
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_3
    return v5

    .line 116
    .restart local v0    # "bigEndian":Z
    .restart local v1    # "data":[B
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    :cond_4
    aget-byte v6, v1, v3

    const/16 v7, 0x45

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v1, v6

    const/16 v7, 0x69

    if-ne v6, v7, :cond_5

    .line 117
    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    const/16 v7, 0x66

    if-ne v6, v7, :cond_5

    .line 118
    const/4 v2, 0x1

    .line 120
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_6
    aget-byte v6, v1, v3

    const/16 v7, 0x49

    if-ne v6, v7, :cond_8

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_8

    .line 130
    const/4 v0, 0x1

    .line 131
    const/4 v2, 0x1

    .line 136
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    :cond_8
    aget-byte v6, v1, v3

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_7

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_7

    .line 133
    const/4 v0, 0x0

    .line 134
    const/4 v2, 0x1

    goto :goto_4

    .line 156
    :cond_9
    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    if-ne v6, v10, :cond_2

    .line 157
    const/4 v2, 0x1

    goto :goto_2

    .line 173
    :cond_a
    if-eqz v0, :cond_c

    .line 174
    aget-byte v6, v1, v3

    if-ne v6, v11, :cond_b

    .line 175
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v8, :cond_b

    .line 176
    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v1, v6

    if-ne v6, v9, :cond_b

    .line 178
    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    if-nez v6, :cond_b

    .line 179
    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v1, v6

    if-ne v6, v8, :cond_b

    .line 180
    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v1, v6

    if-nez v6, :cond_b

    .line 181
    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v1, v6

    if-nez v6, :cond_b

    .line 182
    add-int/lit8 v6, v3, 0x7

    aget-byte v6, v1, v6

    if-nez v6, :cond_b

    .line 183
    const/4 v2, 0x1

    .line 184
    add-int/lit8 v6, v3, 0x8

    aget-byte v5, v1, v6

    .line 200
    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 187
    :cond_c
    aget-byte v6, v1, v3

    if-ne v6, v8, :cond_b

    .line 188
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v11, :cond_b

    .line 189
    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v1, v6

    if-nez v6, :cond_b

    .line 191
    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    if-ne v6, v9, :cond_b

    .line 192
    add-int/lit8 v6, v3, 0x4

    aget-byte v6, v1, v6

    if-nez v6, :cond_b

    .line 193
    add-int/lit8 v6, v3, 0x5

    aget-byte v6, v1, v6

    if-nez v6, :cond_b

    .line 194
    add-int/lit8 v6, v3, 0x6

    aget-byte v6, v1, v6

    if-nez v6, :cond_b

    .line 195
    add-int/lit8 v6, v3, 0x7

    aget-byte v6, v1, v6

    if-ne v6, v8, :cond_b

    .line 196
    const/4 v2, 0x1

    .line 197
    add-int/lit8 v6, v3, 0x9

    aget-byte v5, v1, v6

    goto :goto_5
.end method

.method public static getImageOrientation([B)I
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "orientation":I
    if-eqz p0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromByteArray([B)I

    move-result v0

    .line 40
    :cond_0
    return v0
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "orientation":I
    if-eqz p1, :cond_0

    .line 53
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromDatabase(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 56
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/ExifUtil;->getExifOrientationFromStream(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 59
    :cond_0
    return v0
.end method

.method public static getTransformationMatrix(I)Landroid/graphics/Matrix;
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    .line 270
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 271
    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch p0, :pswitch_data_0

    .line 294
    :goto_0
    :pswitch_0
    return-object v0

    .line 275
    :pswitch_1
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 278
    :pswitch_2
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 281
    :pswitch_3
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 271
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
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 253
    const-string/jumbo v0, "image/jpeg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "image/jpg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    const-string/jumbo v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
