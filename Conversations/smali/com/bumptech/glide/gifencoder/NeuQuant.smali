.class Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 6
    .param p1, "thepic"    # [B
    .param p2, "len"    # I
    .param p3, "sample"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x100

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    .line 127
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    .line 130
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    const/16 v2, 0x20

    .line 132
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    .line 145
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    .line 146
    iput p2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 147
    iput p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 149
    new-array v2, v4, [[I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 v0, 0x0

    .line 150
    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 157
    return-void

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    .line 152
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v2, v0

    .line 153
    .local v1, "p":[I
    shl-int/lit8 v2, v0, 0xc

    div-int/lit16 v2, v2, 0x100

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    aput v2, v1, v5

    .line 154
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aput v4, v2, v0

    .line 155
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aput v5, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .locals 15
    .param p1, "rad"    # I
    .param p2, "i"    # I
    .param p3, "b"    # I
    .param p4, "g"    # I
    .param p5, "r"    # I

    .prologue
    .line 411
    sub-int v7, p2, p1

    .local v7, "lo":I
    const/4 v11, -0x1

    .line 412
    if-lt v7, v11, :cond_1

    .line 414
    :goto_0
    add-int v2, p2, p1

    .local v2, "hi":I
    const/16 v11, 0x100

    .line 415
    if-gt v2, v11, :cond_2

    .line 418
    :goto_1
    add-int/lit8 v3, p2, 0x1

    .line 419
    .local v3, "j":I
    add-int/lit8 v5, p2, -0x1

    .local v5, "k":I
    const/4 v8, 0x1

    .local v8, "m":I
    move v9, v8

    .end local v8    # "m":I
    .local v9, "m":I
    move v6, v5

    .end local v5    # "k":I
    .local v6, "k":I
    move v4, v3

    .line 421
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 422
    :cond_0
    iget-object v11, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "m":I
    .restart local v8    # "m":I
    aget v0, v11, v9

    .line 423
    .local v0, "a":I
    if-lt v4, v2, :cond_4

    move v3, v4

    .line 432
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :goto_3
    if-gt v6, v7, :cond_5

    move v9, v8

    .end local v8    # "m":I
    .restart local v9    # "m":I
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_2

    .end local v0    # "a":I
    .end local v2    # "hi":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v9    # "m":I
    :cond_1
    const/4 v7, -0x1

    .line 413
    goto :goto_0

    .restart local v2    # "hi":I
    :cond_2
    const/16 v2, 0x100

    .line 416
    goto :goto_1

    .line 421
    .restart local v4    # "j":I
    .restart local v6    # "k":I
    .restart local v9    # "m":I
    :cond_3
    if-gt v6, v7, :cond_0

    .line 442
    return-void

    .line 424
    .end local v9    # "m":I
    .restart local v0    # "a":I
    .restart local v8    # "m":I
    :cond_4
    iget-object v11, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-object v10, v11, v4

    .local v10, "p":[I
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 426
    :try_start_0
    aget v12, v10, v12

    const/4 v13, 0x0

    aget v13, v10, v13

    sub-int v13, v13, p3

    mul-int/2addr v13, v0

    const/high16 v14, 0x40000

    div-int/2addr v13, v14

    sub-int/2addr v12, v13

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 427
    aget v12, v10, v12

    const/4 v13, 0x1

    aget v13, v10, v13

    sub-int v13, v13, p4

    mul-int/2addr v13, v0

    const/high16 v14, 0x40000

    div-int/2addr v13, v14

    sub-int/2addr v12, v13

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    .line 428
    aget v12, v10, v12

    const/4 v13, 0x2

    aget v13, v10, v13

    sub-int v13, v13, p5

    mul-int/2addr v13, v0

    const/high16 v14, 0x40000

    div-int/2addr v13, v14

    sub-int/2addr v12, v13

    aput v12, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 430
    :catch_0
    move-exception v11

    goto :goto_3

    .line 433
    .end local v10    # "p":[I
    :cond_5
    iget-object v11, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v5, v6, -0x1

    .end local v6    # "k":I
    .restart local v5    # "k":I
    aget-object v10, v11, v6

    .restart local v10    # "p":[I
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 435
    :try_start_1
    aget v12, v10, v12

    const/4 v13, 0x0

    aget v13, v10, v13

    sub-int v13, v13, p3

    mul-int/2addr v13, v0

    const/high16 v14, 0x40000

    div-int/2addr v13, v14

    sub-int/2addr v12, v13

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 436
    aget v12, v10, v12

    const/4 v13, 0x1

    aget v13, v10, v13

    sub-int v13, v13, p4

    mul-int/2addr v13, v0

    const/high16 v14, 0x40000

    div-int/2addr v13, v14

    sub-int/2addr v12, v13

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    .line 437
    aget v12, v10, v12

    const/4 v13, 0x2

    aget v13, v10, v13

    sub-int v13, v13, p5

    mul-int/2addr v13, v0

    const/high16 v14, 0x40000

    div-int/2addr v13, v14

    sub-int/2addr v12, v13

    aput v12, v10, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move v9, v8

    .end local v8    # "m":I
    .restart local v9    # "m":I
    move v6, v5

    .end local v5    # "k":I
    .restart local v6    # "k":I
    move v4, v3

    .line 439
    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_2

    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v9    # "m":I
    .restart local v3    # "j":I
    .restart local v5    # "k":I
    .restart local v8    # "m":I
    :catch_1
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method protected altersingle(IIIII)V
    .locals 6
    .param p1, "alpha"    # I
    .param p2, "i"    # I
    .param p3, "b"    # I
    .param p4, "g"    # I
    .param p5, "r"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 451
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v0, v1, p2

    .line 452
    .local v0, "n":[I
    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 453
    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 454
    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 455
    return-void
.end method

.method public colorMap()[B
    .locals 9

    .prologue
    const/16 v8, 0x100

    const/16 v6, 0x300

    .line 160
    new-array v5, v6, [B

    .line 161
    .local v5, "map":[B
    new-array v1, v8, [I

    .local v1, "index":[I
    const/4 v0, 0x0

    .line 162
    .local v0, "i":I
    :goto_0
    if-lt v0, v8, :cond_0

    const/4 v3, 0x0

    .local v3, "k":I
    const/4 v0, 0x0

    move v4, v3

    .line 165
    .end local v3    # "k":I
    .local v4, "k":I
    :goto_1
    if-lt v0, v8, :cond_1

    .line 171
    return-object v5

    .line 163
    .end local v4    # "k":I
    :cond_0
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    aput v0, v1, v6

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .restart local v4    # "k":I
    :cond_1
    aget v2, v1, v0

    .line 167
    .local v2, "j":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 168
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 169
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 165
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "k":I
    .restart local v4    # "k":I
    goto :goto_1
.end method

.method protected contest(III)I
    .locals 13
    .param p1, "b"    # I
    .param p2, "g"    # I
    .param p3, "r"    # I

    .prologue
    const v3, 0x7fffffff

    .local v3, "bestd":I
    const v1, 0x7fffffff

    .local v1, "bestbiasd":I
    const/4 v4, -0x1

    .local v4, "bestpos":I
    const/4 v2, -0x1

    .local v2, "bestbiaspos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v10, 0x100

    .line 476
    if-lt v8, v10, :cond_0

    .line 502
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v11, v10, v4

    add-int/lit8 v11, v11, 0x40

    aput v11, v10, v4

    .line 503
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v11, v10, v4

    const/high16 v12, 0x10000

    sub-int/2addr v11, v12

    aput v11, v10, v4

    .line 504
    return v2

    .line 477
    :cond_0
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v9, v10, v8

    .local v9, "n":[I
    const/4 v10, 0x0

    .line 478
    aget v10, v9, v10

    sub-int v7, v10, p1

    .line 479
    .local v7, "dist":I
    if-ltz v7, :cond_1

    :goto_1
    const/4 v10, 0x1

    .line 481
    aget v10, v9, v10

    sub-int v0, v10, p2

    .line 482
    .local v0, "a":I
    if-ltz v0, :cond_2

    .line 484
    :goto_2
    add-int/2addr v7, v0

    const/4 v10, 0x2

    .line 485
    aget v10, v9, v10

    sub-int v0, v10, p3

    .line 486
    if-ltz v0, :cond_3

    .line 488
    :goto_3
    add-int/2addr v7, v0

    .line 489
    if-lt v7, v3, :cond_4

    .line 493
    :goto_4
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v10, v10, v8

    shr-int/lit8 v10, v10, 0xc

    sub-int v6, v7, v10

    .line 494
    .local v6, "biasdist":I
    if-lt v6, v1, :cond_5

    .line 498
    :goto_5
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v10, v10, v8

    shr-int/lit8 v5, v10, 0xa

    .line 499
    .local v5, "betafreq":I
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v11, v10, v8

    sub-int/2addr v11, v5

    aput v11, v10, v8

    .line 500
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v11, v10, v8

    shl-int/lit8 v12, v5, 0xa

    add-int/2addr v11, v12

    aput v11, v10, v8

    .line 476
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "a":I
    .end local v5    # "betafreq":I
    .end local v6    # "biasdist":I
    :cond_1
    neg-int v7, v7

    goto :goto_1

    .line 483
    .restart local v0    # "a":I
    :cond_2
    neg-int v0, v0

    goto :goto_2

    .line 487
    :cond_3
    neg-int v0, v0

    goto :goto_3

    .line 490
    :cond_4
    move v3, v7

    .line 491
    move v4, v8

    goto :goto_4

    .line 495
    .restart local v6    # "biasdist":I
    :cond_5
    move v1, v6

    .line 496
    move v2, v8

    goto :goto_5
.end method

.method public inxbuild()V
    .locals 15

    .prologue
    const/16 v14, 0x100

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .local v3, "previouscol":I
    const/4 v7, 0x0

    .local v7, "startpos":I
    const/4 v0, 0x0

    .line 188
    .local v0, "i":I
    :goto_0
    if-lt v0, v14, :cond_0

    .line 225
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int/lit16 v9, v7, 0xff

    shr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 226
    add-int/lit8 v1, v3, 0x1

    .local v1, "j":I
    :goto_1
    if-lt v1, v14, :cond_6

    .line 228
    return-void

    .line 189
    .end local v1    # "j":I
    :cond_0
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v8, v0

    .line 190
    .local v2, "p":[I
    move v5, v0

    .line 191
    .local v5, "smallpos":I
    aget v6, v2, v10

    .line 193
    .local v6, "smallval":I
    add-int/lit8 v1, v0, 0x1

    .restart local v1    # "j":I
    :goto_2
    if-lt v1, v14, :cond_1

    .line 200
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v8, v5

    .line 202
    .local v4, "q":[I
    if-ne v0, v5, :cond_3

    .line 217
    :goto_3
    if-ne v6, v3, :cond_4

    .line 188
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v4    # "q":[I
    :cond_1
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v8, v1

    .line 195
    .restart local v4    # "q":[I
    aget v8, v4, v10

    if-lt v8, v6, :cond_2

    .line 193
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 196
    :cond_2
    move v5, v1

    .line 197
    aget v6, v4, v10

    goto :goto_5

    .line 203
    :cond_3
    aget v1, v4, v11

    .line 204
    aget v8, v2, v11

    aput v8, v4, v11

    .line 205
    aput v1, v2, v11

    .line 206
    aget v1, v4, v10

    .line 207
    aget v8, v2, v10

    aput v8, v4, v10

    .line 208
    aput v1, v2, v10

    .line 209
    aget v1, v4, v12

    .line 210
    aget v8, v2, v12

    aput v8, v4, v12

    .line 211
    aput v1, v2, v12

    .line 212
    aget v1, v4, v13

    .line 213
    aget v8, v2, v13

    aput v8, v4, v13

    .line 214
    aput v1, v2, v13

    goto :goto_3

    .line 218
    :cond_4
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int v9, v7, v0

    shr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 219
    add-int/lit8 v1, v3, 0x1

    :goto_6
    if-lt v1, v6, :cond_5

    .line 221
    move v3, v6

    .line 222
    move v7, v0

    goto :goto_4

    .line 220
    :cond_5
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v0, v8, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 227
    .end local v2    # "p":[I
    .end local v4    # "q":[I
    .end local v5    # "smallpos":I
    .end local v6    # "smallval":I
    :cond_6
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    const/16 v9, 0xff

    aput v9, v8, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public learn()V
    .locals 21

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v7, 0x5e5

    if-lt v1, v7, :cond_1

    .line 242
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    move-object/from16 v16, v0

    .local v16, "p":[B
    const/16 v17, 0x0

    .line 245
    .local v17, "pix":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 246
    .local v15, "lim":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    mul-int/lit8 v7, v7, 0x3

    div-int v19, v1, v7

    .line 247
    .local v19, "samplepixels":I
    div-int/lit8 v13, v19, 0x64

    .local v13, "delta":I
    const/16 v2, 0x400

    .local v2, "alpha":I
    const/16 v18, 0x800

    .line 251
    .local v18, "radius":I
    const/16 v8, 0x20

    .local v8, "rad":I
    const/4 v1, 0x1

    .line 252
    if-le v8, v1, :cond_2

    :goto_1
    const/4 v14, 0x0

    .line 254
    .local v14, "i":I
    :goto_2
    if-lt v14, v8, :cond_3

    .line 259
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v7, 0x5e5

    if-lt v1, v7, :cond_4

    .line 261
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1f3

    if-nez v1, :cond_5

    .line 264
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1eb

    if-nez v1, :cond_6

    .line 267
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1e7

    if-nez v1, :cond_7

    const/16 v20, 0x5e5

    .local v20, "step":I
    :goto_3
    const/4 v14, 0x0

    .line 275
    :cond_0
    move/from16 v0, v19

    if-lt v14, v0, :cond_8

    .line 304
    return-void

    .end local v2    # "alpha":I
    .end local v8    # "rad":I
    .end local v13    # "delta":I
    .end local v14    # "i":I
    .end local v15    # "lim":I
    .end local v16    # "p":[B
    .end local v17    # "pix":I
    .end local v18    # "radius":I
    .end local v19    # "samplepixels":I
    .end local v20    # "step":I
    :cond_1
    const/4 v1, 0x1

    .line 241
    move-object/from16 v0, p0

    iput v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    goto :goto_0

    .restart local v2    # "alpha":I
    .restart local v8    # "rad":I
    .restart local v13    # "delta":I
    .restart local v15    # "lim":I
    .restart local v16    # "p":[B
    .restart local v17    # "pix":I
    .restart local v18    # "radius":I
    .restart local v19    # "samplepixels":I
    :cond_2
    const/4 v8, 0x0

    .line 253
    goto :goto_1

    .line 255
    .restart local v14    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v7, v8, v8

    mul-int v9, v14, v14

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x100

    mul-int v9, v8, v8

    div-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x400

    aput v7, v1, v14

    .line 254
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    const/16 v20, 0x3

    .line 260
    .restart local v20    # "step":I
    goto :goto_3

    .end local v20    # "step":I
    :cond_5
    const/16 v20, 0x5d9

    .line 262
    .restart local v20    # "step":I
    goto :goto_3

    .end local v20    # "step":I
    :cond_6
    const/16 v20, 0x5c1

    .line 265
    .restart local v20    # "step":I
    goto :goto_3

    .end local v20    # "step":I
    :cond_7
    const/16 v20, 0x5b5

    .line 268
    .restart local v20    # "step":I
    goto :goto_3

    .line 276
    :cond_8
    add-int/lit8 v1, v17, 0x0

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    .line 277
    .local v4, "b":I
    add-int/lit8 v1, v17, 0x1

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v1, 0x4

    .line 278
    .local v5, "g":I
    add-int/lit8 v1, v17, 0x2

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v6, v1, 0x4

    .line 279
    .local v6, "r":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/bumptech/glide/gifencoder/NeuQuant;->contest(III)I

    move-result v3

    .local v3, "j":I
    move-object/from16 v1, p0

    .line 281
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/gifencoder/NeuQuant;->altersingle(IIIII)V

    .line 282
    if-nez v8, :cond_9

    .line 285
    :goto_4
    add-int v17, v17, v20

    .line 286
    move/from16 v0, v17

    if-ge v0, v15, :cond_a

    .line 289
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 290
    if-eqz v13, :cond_b

    .line 292
    :goto_6
    rem-int v1, v14, v13

    if-nez v1, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    div-int v1, v2, v1

    sub-int/2addr v2, v1

    .line 294
    div-int/lit8 v1, v18, 0x1e

    sub-int v18, v18, v1

    .line 295
    shr-int/lit8 v8, v18, 0x6

    const/4 v1, 0x1

    .line 296
    if-le v8, v1, :cond_c

    :goto_7
    const/4 v3, 0x0

    .line 298
    :goto_8
    if-ge v3, v8, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v7, v8, v8

    mul-int v9, v3, v3

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x100

    mul-int v9, v8, v8

    div-int/2addr v7, v9

    mul-int/2addr v7, v2

    aput v7, v1, v3

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    move-object/from16 v7, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 283
    invoke-virtual/range {v7 .. v12}, Lcom/bumptech/glide/gifencoder/NeuQuant;->alterneigh(IIIII)V

    goto :goto_4

    .line 287
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    sub-int v17, v17, v1

    goto :goto_5

    :cond_b
    const/4 v13, 0x1

    .line 291
    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    .line 297
    goto :goto_7
.end method

.method public map(III)I
    .locals 8
    .param p1, "b"    # I
    .param p2, "g"    # I
    .param p3, "r"    # I

    .prologue
    const/16 v2, 0x3e8

    .local v2, "bestd":I
    const/4 v1, -0x1

    .line 319
    .local v1, "best":I
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aget v4, v7, p2

    .line 320
    .local v4, "i":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "j":I
    :cond_0
    :goto_0
    const/16 v7, 0x100

    .line 322
    if-ge v4, v7, :cond_3

    :cond_1
    const/16 v7, 0x100

    .line 323
    if-lt v4, v7, :cond_4

    .line 348
    :cond_2
    :goto_1
    if-ltz v5, :cond_0

    .line 349
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v7, v5

    .local v6, "p":[I
    const/4 v7, 0x1

    .line 350
    aget v7, v6, v7

    sub-int v3, p2, v7

    .line 351
    .local v3, "dist":I
    if-ge v3, v2, :cond_9

    .line 354
    add-int/lit8 v5, v5, -0x1

    .line 355
    if-ltz v3, :cond_a

    :goto_2
    const/4 v7, 0x0

    .line 357
    aget v7, v6, v7

    sub-int v0, v7, p1

    .line 358
    .local v0, "a":I
    if-ltz v0, :cond_b

    .line 360
    :goto_3
    add-int/2addr v3, v0

    .line 361
    if-ge v3, v2, :cond_0

    const/4 v7, 0x2

    .line 362
    aget v7, v6, v7

    sub-int v0, v7, p3

    .line 363
    if-ltz v0, :cond_c

    .line 365
    :goto_4
    add-int/2addr v3, v0

    .line 366
    if-ge v3, v2, :cond_0

    .line 367
    move v2, v3

    const/4 v7, 0x3

    .line 368
    aget v1, v6, v7

    goto :goto_0

    .line 322
    .end local v0    # "a":I
    .end local v3    # "dist":I
    .end local v6    # "p":[I
    :cond_3
    if-gez v5, :cond_1

    .line 374
    return v1

    .line 324
    :cond_4
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v7, v4

    .restart local v6    # "p":[I
    const/4 v7, 0x1

    .line 325
    aget v7, v6, v7

    sub-int v3, v7, p2

    .line 326
    .restart local v3    # "dist":I
    if-ge v3, v2, :cond_5

    .line 329
    add-int/lit8 v4, v4, 0x1

    .line 330
    if-ltz v3, :cond_6

    :goto_5
    const/4 v7, 0x0

    .line 332
    aget v7, v6, v7

    sub-int v0, v7, p1

    .line 333
    .restart local v0    # "a":I
    if-ltz v0, :cond_7

    .line 335
    :goto_6
    add-int/2addr v3, v0

    .line 336
    if-ge v3, v2, :cond_2

    const/4 v7, 0x2

    .line 337
    aget v7, v6, v7

    sub-int v0, v7, p3

    .line 338
    if-ltz v0, :cond_8

    .line 340
    :goto_7
    add-int/2addr v3, v0

    .line 341
    if-ge v3, v2, :cond_2

    .line 342
    move v2, v3

    const/4 v7, 0x3

    .line 343
    aget v1, v6, v7

    goto :goto_1

    .end local v0    # "a":I
    :cond_5
    const/16 v4, 0x100

    .line 327
    goto :goto_1

    .line 331
    :cond_6
    neg-int v3, v3

    goto :goto_5

    .line 334
    .restart local v0    # "a":I
    :cond_7
    neg-int v0, v0

    goto :goto_6

    .line 339
    :cond_8
    neg-int v0, v0

    goto :goto_7

    .end local v0    # "a":I
    :cond_9
    const/4 v5, -0x1

    .line 352
    goto :goto_0

    .line 356
    :cond_a
    neg-int v3, v3

    goto :goto_2

    .line 359
    .restart local v0    # "a":I
    :cond_b
    neg-int v0, v0

    goto :goto_3

    .line 364
    :cond_c
    neg-int v0, v0

    goto :goto_4
.end method

.method public process()[B
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->learn()V

    .line 379
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->unbiasnet()V

    .line 380
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->inxbuild()V

    .line 381
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->colorMap()[B

    move-result-object v0

    return-object v0
.end method

.method public unbiasnet()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    .line 393
    if-lt v0, v1, :cond_0

    .line 399
    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    aget v2, v1, v3

    shr-int/lit8 v2, v2, 0x4

    aput v2, v1, v3

    .line 395
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    aget v2, v1, v4

    shr-int/lit8 v2, v2, 0x4

    aput v2, v1, v4

    .line 396
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    aget v2, v1, v5

    shr-int/lit8 v2, v2, 0x4

    aput v2, v1, v5

    .line 397
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aput v0, v1, v2

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
