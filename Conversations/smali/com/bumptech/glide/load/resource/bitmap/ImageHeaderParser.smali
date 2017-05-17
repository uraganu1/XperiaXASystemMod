.class public Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B


# instance fields
.field private final streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v1, 0xd

    .line 62
    new-array v1, v1, [I

    aput v6, v1, v6

    aput v3, v1, v3

    aput v3, v1, v7

    const/4 v2, 0x3

    aput v7, v1, v2

    aput v4, v1, v4

    const/4 v2, 0x5

    aput v5, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    aput v7, v1, v5

    const/16 v2, 0x9

    aput v4, v1, v2

    const/16 v2, 0xa

    aput v5, v1, v2

    const/16 v2, 0xb

    aput v4, v1, v2

    const/16 v2, 0xc

    aput v5, v1, v2

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    .line 67
    new-array v0, v6, [B

    .local v0, "bytes":[B
    :try_start_0
    const-string/jumbo v1, "Exif\u0000\u0000"

    const-string/jumbo v2, "UTF-8"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 74
    return-void

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    .line 78
    return-void
.end method

.method private static calcTagOffset(II)I
    .locals 2
    .param p0, "ifdOffset"    # I
    .param p1, "tagIndex"    # I

    .prologue
    .line 291
    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method private getExifSegment()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 150
    :cond_0
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v5

    int-to-short v2, v5

    .local v2, "segmentId":S
    const/16 v5, 0xff

    .line 152
    if-ne v2, v5, :cond_1

    .line 159
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v5

    int-to-short v4, v5

    .local v4, "segmentType":S
    const/16 v5, 0xda

    .line 161
    if-eq v4, v5, :cond_3

    const/16 v5, 0xd9

    .line 163
    if-eq v4, v5, :cond_4

    .line 171
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v5

    add-int/lit8 v3, v5, -0x2

    .local v3, "segmentLength":I
    const/16 v5, 0xe1

    .line 173
    if-ne v4, v5, :cond_6

    .line 185
    new-array v1, v3, [B

    .line 186
    .local v1, "segmentData":[B
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->read([B)I

    move-result v0

    .line 187
    .local v0, "read":I
    if-ne v0, v3, :cond_8

    .line 196
    return-object v1

    .end local v0    # "read":I
    .end local v1    # "segmentData":[B
    .end local v3    # "segmentLength":I
    .end local v4    # "segmentType":S
    :cond_1
    const-string/jumbo v5, "ImageHeaderParser"

    .line 153
    invoke-static {v5, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 156
    :goto_0
    return-object v10

    :cond_2
    const-string/jumbo v5, "ImageHeaderParser"

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown segmentId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .restart local v4    # "segmentType":S
    :cond_3
    return-object v10

    :cond_4
    const-string/jumbo v5, "ImageHeaderParser"

    .line 164
    invoke-static {v5, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 167
    :goto_1
    return-object v10

    :cond_5
    const-string/jumbo v5, "ImageHeaderParser"

    const-string/jumbo v8, "Found MARKER_EOI in exif segment"

    .line 165
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    .restart local v3    # "segmentLength":I
    :cond_6
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    int-to-long v8, v3

    invoke-virtual {v5, v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    move-result-wide v6

    .line 175
    .local v6, "skipped":J
    int-to-long v8, v3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ImageHeaderParser"

    .line 176
    invoke-static {v5, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 182
    :goto_2
    return-object v10

    :cond_7
    const-string/jumbo v5, "ImageHeaderParser"

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to skip enough data, type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", wanted to skip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", but actually skipped: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v6    # "skipped":J
    .restart local v0    # "read":I
    .restart local v1    # "segmentData":[B
    :cond_8
    const-string/jumbo v5, "ImageHeaderParser"

    .line 188
    invoke-static {v5, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 194
    :goto_3
    return-object v10

    :cond_9
    const-string/jumbo v5, "ImageHeaderParser"

    .line 189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to read segment data, type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", actually read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static handles(I)Z
    .locals 2
    .param p0, "imageMagicNumber"    # I

    .prologue
    const v1, 0xffd8

    .line 295
    and-int v0, p0, v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4949

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    .locals 15
    .param p0, "segmentData"    # Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    .prologue
    const-string/jumbo v12, "Exif\u0000\u0000"

    .line 203
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    .line 205
    .local v6, "headerOffsetSize":I
    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v12

    int-to-short v2, v12

    .local v2, "byteOrderIdentifier":S
    const/16 v12, 0x4d4d

    .line 207
    if-eq v2, v12, :cond_0

    const/16 v12, 0x4949

    .line 209
    if-eq v2, v12, :cond_1

    const-string/jumbo v12, "ImageHeaderParser"

    const/4 v13, 0x3

    .line 212
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 215
    :goto_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 218
    .local v1, "byteOrder":Ljava/nio/ByteOrder;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    .line 220
    add-int/lit8 v12, v6, 0x4

    invoke-virtual {p0, v12}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v12

    add-int v4, v12, v6

    .line 221
    .local v4, "firstIfdOffset":I
    invoke-virtual {p0, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v8

    .local v8, "tagCount":I
    const/4 v7, 0x0

    .line 224
    .local v7, "i":I
    :goto_2
    if-lt v7, v8, :cond_3

    const/4 v12, -0x1

    .line 287
    return v12

    .line 208
    .end local v1    # "byteOrder":Ljava/nio/ByteOrder;
    .end local v4    # "firstIfdOffset":I
    .end local v7    # "i":I
    .end local v8    # "tagCount":I
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .restart local v1    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_1

    .line 210
    .end local v1    # "byteOrder":Ljava/nio/ByteOrder;
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .restart local v1    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_1

    .end local v1    # "byteOrder":Ljava/nio/ByteOrder;
    :cond_2
    const-string/jumbo v12, "ImageHeaderParser"

    .line 213
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown endianness = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    .restart local v1    # "byteOrder":Ljava/nio/ByteOrder;
    .restart local v4    # "firstIfdOffset":I
    .restart local v7    # "i":I
    .restart local v8    # "tagCount":I
    :cond_3
    invoke-static {v4, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->calcTagOffset(II)I

    move-result v9

    .line 227
    .local v9, "tagOffset":I
    invoke-virtual {p0, v9}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v10

    .local v10, "tagType":I
    const/16 v12, 0x112

    .line 230
    if-ne v10, v12, :cond_5

    .line 234
    add-int/lit8 v12, v9, 0x2

    invoke-virtual {p0, v12}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v5

    .local v5, "formatCode":I
    const/4 v12, 0x1

    .line 237
    if-ge v5, v12, :cond_6

    :cond_4
    const-string/jumbo v12, "ImageHeaderParser"

    const/4 v13, 0x3

    .line 238
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_8

    .line 224
    .end local v5    # "formatCode":I
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .restart local v5    # "formatCode":I
    :cond_6
    const/16 v12, 0xc

    .line 237
    if-gt v5, v12, :cond_4

    .line 244
    add-int/lit8 v12, v9, 0x4

    invoke-virtual {p0, v12}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v3

    .line 246
    .local v3, "componentCount":I
    if-ltz v3, :cond_9

    const-string/jumbo v12, "ImageHeaderParser"

    const/4 v13, 0x3

    .line 253
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_a

    .line 258
    :goto_4
    sget-object v12, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v12, v12, v5

    add-int v0, v3, v12

    .local v0, "byteCount":I
    const/4 v12, 0x4

    .line 260
    if-gt v0, v12, :cond_b

    .line 267
    add-int/lit8 v11, v9, 0x8

    .line 269
    .local v11, "tagValueOffset":I
    if-gez v11, :cond_c

    :cond_7
    const-string/jumbo v12, "ImageHeaderParser"

    const/4 v13, 0x3

    .line 270
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "ImageHeaderParser"

    .line 271
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Illegal tagValueOffset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "byteCount":I
    .end local v3    # "componentCount":I
    .end local v11    # "tagValueOffset":I
    :cond_8
    const-string/jumbo v12, "ImageHeaderParser"

    .line 239
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Got invalid format code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .restart local v3    # "componentCount":I
    :cond_9
    const-string/jumbo v12, "ImageHeaderParser"

    const/4 v13, 0x3

    .line 247
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "ImageHeaderParser"

    const-string/jumbo v13, "Negative tiff component count"

    .line 248
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v12, "ImageHeaderParser"

    .line 254
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Got tagIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " formatCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " componentCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .restart local v0    # "byteCount":I
    :cond_b
    const-string/jumbo v12, "ImageHeaderParser"

    const/4 v13, 0x3

    .line 261
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "ImageHeaderParser"

    .line 262
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 269
    .restart local v11    # "tagValueOffset":I
    :cond_c
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v12

    if-gt v11, v12, :cond_7

    .line 276
    if-gez v0, :cond_e

    :cond_d
    const-string/jumbo v12, "ImageHeaderParser"

    const/4 v13, 0x3

    .line 277
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "ImageHeaderParser"

    .line 278
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 276
    :cond_e
    add-int v12, v11, v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v13

    if-gt v12, v13, :cond_d

    .line 284
    invoke-virtual {p0, v11}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v12

    return v12
.end method


# virtual methods
.method public getOrientation()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 120
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v3

    .line 122
    .local v3, "magicNumber":I
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->handles(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getExifSegment()[B

    move-result-object v0

    .line 126
    .local v0, "exifData":[B
    if-nez v0, :cond_3

    .line 129
    .local v1, "hasJpegExifPreamble":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 138
    .end local v1    # "hasJpegExifPreamble":Z
    :cond_1
    :goto_1
    if-nez v1, :cond_6

    .line 141
    return v6

    .line 123
    .end local v0    # "exifData":[B
    :cond_2
    return v6

    .line 126
    .restart local v0    # "exifData":[B
    :cond_3
    array-length v4, v0

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v5, v5

    if-le v4, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .restart local v1    # "hasJpegExifPreamble":Z
    :cond_4
    const/4 v2, 0x0

    .line 130
    .local v2, "i":I
    :goto_2
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 131
    aget-byte v4, v0, v2

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    aget-byte v5, v5, v2

    if-ne v4, v5, :cond_5

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 132
    :cond_5
    const/4 v1, 0x0

    .local v1, "hasJpegExifPreamble":Z
    goto :goto_1

    .line 139
    .end local v1    # "hasJpegExifPreamble":Z
    .end local v2    # "i":I
    :cond_6
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    invoke-direct {v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;-><init>([B)V

    invoke-static {v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I

    move-result v4

    return v4
.end method

.method public getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v2

    .local v2, "firstTwoBytes":I
    const v3, 0xffd8

    .line 90
    if-eq v2, v3, :cond_0

    .line 94
    shl-int/lit8 v3, v2, 0x10

    const/high16 v4, -0x10000

    and-int/2addr v3, v4

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int v1, v3, v4

    .local v1, "firstFourBytes":I
    const v3, -0x76afb1b9

    .line 96
    if-eq v1, v3, :cond_1

    .line 105
    shr-int/lit8 v3, v1, 0x8

    const v4, 0x474946

    if-eq v3, v4, :cond_3

    .line 109
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v3

    .line 91
    .end local v1    # "firstFourBytes":I
    :cond_0
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v3

    .line 98
    .restart local v1    # "firstFourBytes":I
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    const-wide/16 v4, 0x15

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    .line 99
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getByte()I

    move-result v0

    .local v0, "alpha":I
    const/4 v3, 0x3

    .line 101
    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    :goto_0
    return-object v3

    :cond_2
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 106
    .end local v0    # "alpha":I
    :cond_3
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v3
.end method

.method public hasAlpha()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0

    return v0
.end method
