.class public Lcom/sonymobile/rcs/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final CHUNK_SEPARATOR:[B

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x30

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    const-string/jumbo v2, "\r\n"

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    const/16 v2, 0xff

    .line 99
    new-array v2, v2, [B

    sput-object v2, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    const/16 v2, 0x40

    .line 101
    new-array v2, v2, [B

    sput-object v2, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xff

    .line 105
    if-lt v0, v2, :cond_0

    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    .line 108
    if-ge v0, v2, :cond_1

    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    .line 111
    if-ge v0, v2, :cond_2

    const/16 v0, 0x39

    .line 114
    :goto_3
    if-ge v0, v6, :cond_3

    .line 118
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v4

    .line 119
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    aput-byte v8, v2, v5

    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    .line 121
    if-le v0, v2, :cond_4

    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    .line 125
    if-le v0, v2, :cond_5

    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    .line 129
    if-le v0, v2, :cond_6

    .line 133
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    aput-byte v4, v2, v7

    .line 134
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v2, v8

    .line 135
    return-void

    .line 106
    .end local v1    # "j":I
    :cond_0
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 112
    :cond_2
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 115
    :cond_3
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 122
    :cond_4
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 126
    .restart local v1    # "j":I
    :cond_5
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 130
    :cond_6
    sget-object v2, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 15
    .param p0, "base64Data"    # [B

    .prologue
    .line 291
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 294
    array-length v12, p0

    if-eqz v12, :cond_1

    .line 298
    array-length v12, p0

    div-int/lit8 v11, v12, 0x4

    .local v11, "numberQuadruple":I
    const/4 v5, 0x0

    .line 300
    .local v5, "decodedData":[B
    const/4 v0, 0x0

    .local v0, "b1":B
    const/4 v1, 0x0

    .local v1, "b2":B
    const/4 v2, 0x0

    .local v2, "b3":B
    const/4 v3, 0x0

    .local v3, "b4":B
    const/4 v9, 0x0

    .local v9, "marker0":B
    const/4 v10, 0x0

    .local v10, "marker1":B
    const/4 v6, 0x0

    .local v6, "encodedIndex":I
    const/4 v4, 0x0

    .line 308
    .local v4, "dataIndex":I
    array-length v8, p0

    .line 310
    .local v8, "lastData":I
    :cond_0
    add-int/lit8 v12, v8, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_2

    .line 315
    sub-int v12, v8, v11

    new-array v5, v12, [B

    .local v5, "decodedData":[B
    const/4 v7, 0x0

    .line 318
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    .end local v9    # "marker0":B
    .end local v10    # "marker1":B
    .local v7, "i":I
    :goto_0
    if-lt v7, v11, :cond_3

    .line 346
    return-object v5

    .end local v4    # "dataIndex":I
    .end local v5    # "decodedData":[B
    .end local v6    # "encodedIndex":I
    .end local v7    # "i":I
    .end local v8    # "lastData":I
    .end local v11    # "numberQuadruple":I
    :cond_1
    const/4 v12, 0x0

    .line 295
    new-array v12, v12, [B

    return-object v12

    .line 311
    .restart local v0    # "b1":B
    .restart local v1    # "b2":B
    .restart local v2    # "b3":B
    .restart local v3    # "b4":B
    .restart local v4    # "dataIndex":I
    .local v5, "decodedData":[B
    .restart local v6    # "encodedIndex":I
    .restart local v8    # "lastData":I
    .restart local v9    # "marker0":B
    .restart local v10    # "marker1":B
    .restart local v11    # "numberQuadruple":I
    :cond_2
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_0

    const/4 v12, 0x0

    .line 312
    new-array v12, v12, [B

    return-object v12

    .line 319
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    .end local v9    # "marker0":B
    .end local v10    # "marker1":B
    .local v5, "decodedData":[B
    .restart local v7    # "i":I
    :cond_3
    mul-int/lit8 v4, v7, 0x4

    .line 320
    add-int/lit8 v12, v4, 0x2

    aget-byte v12, p0, v12

    int-to-byte v9, v12

    .line 321
    .local v9, "marker0":B
    add-int/lit8 v12, v4, 0x3

    aget-byte v12, p0, v12

    int-to-byte v10, v12

    .line 323
    .local v10, "marker1":B
    sget-object v12, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    aget-byte v13, p0, v4

    aget-byte v12, v12, v13

    int-to-byte v0, v12

    .line 324
    .local v0, "b1":B
    sget-object v12, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v13, p0, v13

    aget-byte v12, v12, v13

    int-to-byte v1, v12

    .local v1, "b2":B
    const/16 v12, 0x3d

    .line 326
    if-ne v9, v12, :cond_5

    :cond_4
    const/16 v12, 0x3d

    .line 334
    if-eq v9, v12, :cond_6

    const/16 v12, 0x3d

    .line 337
    if-eq v10, v12, :cond_7

    .line 344
    :goto_1
    add-int/lit8 v6, v6, 0x3

    .line 318
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    const/16 v12, 0x3d

    .line 326
    if-eq v10, v12, :cond_4

    .line 328
    sget-object v12, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    aget-byte v12, v12, v9

    int-to-byte v2, v12

    .line 329
    .local v2, "b3":B
    sget-object v12, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    aget-byte v12, v12, v10

    int-to-byte v3, v12

    .line 331
    .local v3, "b4":B
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 332
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 333
    add-int/lit8 v12, v6, 0x2

    shl-int/lit8 v13, v2, 0x6

    or-int/2addr v13, v3

    int-to-byte v13, v13

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    goto :goto_1

    .line 336
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    :cond_6
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    goto :goto_1

    .line 339
    :cond_7
    sget-object v12, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    aget-byte v12, v12, v9

    int-to-byte v2, v12

    .line 341
    .restart local v2    # "b3":B
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 342
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    goto :goto_1
.end method

.method private static discardNonBase64([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 358
    array-length v5, p0

    new-array v2, v5, [B

    .local v2, "groomedData":[B
    const/4 v0, 0x0

    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    .line 361
    .local v3, "i":I
    :goto_0
    array-length v5, p0

    if-lt v3, v5, :cond_0

    .line 367
    new-array v4, v0, [B

    .line 369
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    return-object v4

    .line 362
    .end local v4    # "packedData":[B
    :cond_0
    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/Base64;->isBase64(B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 361
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    move v0, v1

    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    goto :goto_1
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonymobile/rcs/utils/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private static encodeBase64([BZ)[B
    .locals 27
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 168
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    mul-int/lit8 v16, v23, 0x8

    .line 169
    .local v16, "lengthDataBits":I
    rem-int/lit8 v12, v16, 0x18

    .line 170
    .local v12, "fewerThan24bits":I
    div-int/lit8 v19, v16, 0x18

    .local v19, "numberTriplets":I
    const/4 v9, 0x0

    .local v9, "encodedData":[B
    const/4 v10, 0x0

    .local v10, "encodedDataLength":I
    const/16 v17, 0x0

    .line 175
    .local v17, "nbrChunks":I
    if-nez v12, :cond_1

    .line 180
    mul-int/lit8 v10, v19, 0x4

    .line 186
    :goto_0
    if-nez p1, :cond_2

    .line 193
    :goto_1
    new-array v9, v10, [B

    .line 195
    .local v9, "encodedData":[B
    const/4 v14, 0x0

    .local v14, "k":B
    const/4 v15, 0x0

    .local v15, "l":B
    const/4 v4, 0x0

    .local v4, "b1":B
    const/4 v5, 0x0

    .local v5, "b2":B
    const/4 v6, 0x0

    .local v6, "b3":B
    const/4 v11, 0x0

    .local v11, "encodedIndex":I
    const/4 v8, 0x0

    .local v8, "dataIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    const/16 v18, 0x4c

    .local v18, "nextSeparatorIndex":I
    const/4 v7, 0x0

    .local v7, "chunksSoFar":I
    const/4 v13, 0x0

    .line 204
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v14    # "k":B
    .end local v15    # "l":B
    :goto_2
    move/from16 v0, v19

    if-lt v13, v0, :cond_4

    .line 244
    mul-int/lit8 v8, v13, 0x3

    const/16 v23, 0x8

    .line 246
    move/from16 v0, v23

    if-eq v12, v0, :cond_a

    const/16 v23, 0x10

    .line 256
    move/from16 v0, v23

    if-eq v12, v0, :cond_c

    .line 272
    :goto_3
    if-nez p1, :cond_f

    .line 280
    :cond_0
    :goto_4
    return-object v9

    .line 177
    .end local v7    # "chunksSoFar":I
    .end local v8    # "dataIndex":I
    .end local v11    # "encodedIndex":I
    .end local v13    # "i":I
    .end local v18    # "nextSeparatorIndex":I
    .local v9, "encodedData":[B
    :cond_1
    add-int/lit8 v23, v19, 0x1

    mul-int/lit8 v10, v23, 0x4

    goto :goto_0

    .line 188
    :cond_2
    sget-object v23, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_3

    int-to-float v0, v10

    move/from16 v23, v0

    const/high16 v24, 0x42980000    # 76.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v17, v0

    .line 190
    :goto_5
    sget-object v23, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    mul-int v23, v23, v17

    add-int v10, v10, v23

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    .line 188
    goto :goto_5

    .line 205
    .restart local v7    # "chunksSoFar":I
    .restart local v8    # "dataIndex":I
    .local v9, "encodedData":[B
    .restart local v11    # "encodedIndex":I
    .restart local v13    # "i":I
    .restart local v18    # "nextSeparatorIndex":I
    :cond_4
    mul-int/lit8 v8, v13, 0x3

    .line 206
    aget-byte v23, p0, v8

    move/from16 v0, v23

    int-to-byte v4, v0

    .line 207
    .local v4, "b1":B
    add-int/lit8 v23, v8, 0x1

    aget-byte v23, p0, v23

    move/from16 v0, v23

    int-to-byte v5, v0

    .line 208
    .local v5, "b2":B
    add-int/lit8 v23, v8, 0x2

    aget-byte v23, p0, v23

    move/from16 v0, v23

    int-to-byte v6, v0

    .line 212
    .local v6, "b3":B
    and-int/lit8 v23, v5, 0xf

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 213
    .local v15, "l":B
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 215
    .local v14, "k":B
    and-int/lit8 v23, v4, -0x80

    if-eqz v23, :cond_6

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    :goto_6
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 216
    .local v20, "val1":B
    and-int/lit8 v23, v5, -0x80

    if-eqz v23, :cond_7

    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    :goto_7
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 217
    .local v21, "val2":B
    and-int/lit8 v23, v6, -0x80

    if-eqz v23, :cond_8

    shr-int/lit8 v23, v6, 0x6

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    :goto_8
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    .line 219
    .local v22, "val3":B
    sget-object v23, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v9, v11

    .line 223
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    or-int v25, v25, v21

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v9, v23

    .line 224
    add-int/lit8 v23, v11, 0x2

    sget-object v24, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v15, 0x2

    or-int v25, v25, v22

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v9, v23

    .line 225
    add-int/lit8 v23, v11, 0x3

    sget-object v24, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    and-int/lit8 v25, v6, 0x3f

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v9, v23

    .line 227
    add-int/lit8 v11, v11, 0x4

    .line 230
    if-nez p1, :cond_9

    .line 204
    :cond_5
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 215
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    .end local v22    # "val3":B
    :cond_6
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    goto :goto_6

    .line 216
    .restart local v20    # "val1":B
    :cond_7
    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    goto :goto_7

    .line 217
    .restart local v21    # "val2":B
    :cond_8
    shr-int/lit8 v23, v6, 0x6

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    goto :goto_8

    .line 232
    .restart local v22    # "val3":B
    :cond_9
    move/from16 v0, v18

    if-ne v11, v0, :cond_5

    .line 233
    sget-object v23, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    const/16 v24, 0x0

    sget-object v25, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v9, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int/lit8 v7, v7, 0x1

    .line 236
    add-int/lit8 v23, v7, 0x1

    mul-int/lit8 v23, v23, 0x4c

    sget-object v24, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    mul-int v24, v24, v7

    add-int v18, v23, v24

    .line 238
    sget-object v23, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int v11, v11, v23

    goto :goto_9

    .line 247
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v14    # "k":B
    .end local v15    # "l":B
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    .end local v22    # "val3":B
    :cond_a
    aget-byte v23, p0, v8

    move/from16 v0, v23

    int-to-byte v4, v0

    .line 248
    .restart local v4    # "b1":B
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 251
    .restart local v14    # "k":B
    and-int/lit8 v23, v4, -0x80

    if-eqz v23, :cond_b

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    :goto_a
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 252
    .restart local v20    # "val1":B
    sget-object v23, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v9, v11

    .line 253
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v9, v23

    .line 254
    add-int/lit8 v23, v11, 0x2

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    .line 255
    add-int/lit8 v23, v11, 0x3

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    goto/16 :goto_3

    .line 251
    .end local v20    # "val1":B
    :cond_b
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    goto :goto_a

    .line 258
    .end local v4    # "b1":B
    .end local v14    # "k":B
    :cond_c
    aget-byte v23, p0, v8

    move/from16 v0, v23

    int-to-byte v4, v0

    .line 259
    .restart local v4    # "b1":B
    add-int/lit8 v23, v8, 0x1

    aget-byte v23, p0, v23

    move/from16 v0, v23

    int-to-byte v5, v0

    .line 260
    .restart local v5    # "b2":B
    and-int/lit8 v23, v5, 0xf

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 261
    .restart local v15    # "l":B
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 263
    .restart local v14    # "k":B
    and-int/lit8 v23, v4, -0x80

    if-eqz v23, :cond_d

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    :goto_b
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 264
    .restart local v20    # "val1":B
    and-int/lit8 v23, v5, -0x80

    if-eqz v23, :cond_e

    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    :goto_c
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 266
    .restart local v21    # "val2":B
    sget-object v23, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v9, v11

    .line 267
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    or-int v25, v25, v21

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v9, v23

    .line 268
    add-int/lit8 v23, v11, 0x2

    sget-object v24, Lcom/sonymobile/rcs/utils/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v15, 0x2

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v9, v23

    .line 269
    add-int/lit8 v23, v11, 0x3

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    goto/16 :goto_3

    .line 263
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    :cond_d
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    goto :goto_b

    .line 264
    .restart local v20    # "val1":B
    :cond_e
    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    goto :goto_c

    .line 274
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v14    # "k":B
    .end local v15    # "l":B
    .end local v20    # "val1":B
    :cond_f
    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 275
    sget-object v23, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    const/16 v24, 0x0

    sget-object v25, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sub-int v25, v10, v25

    sget-object v26, Lcom/sonymobile/rcs/utils/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4
.end method

.method public static encodeBase64ToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 380
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 381
    .local v0, "encoded":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "encodedBuff":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 382
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 383
    :cond_0
    aget-byte v3, v0, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static isBase64(B)Z
    .locals 3
    .param p0, "octect"    # B

    .prologue
    const/4 v2, 0x1

    const/16 v0, 0x3d

    .line 138
    if-eq p0, v0, :cond_0

    .line 140
    sget-object v0, Lcom/sonymobile/rcs/utils/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 143
    return v2

    .line 139
    :cond_0
    return v2

    .line 141
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
