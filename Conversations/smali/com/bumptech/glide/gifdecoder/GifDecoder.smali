.class public Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final block:[B

.field private data:[B

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private mainPixels:[B

.field private mainScratch:[I

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    .line 104
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 114
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    .line 155
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 156
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 157
    return-void
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 24
    .param p1, "frame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    .prologue
    .line 525
    if-nez p1, :cond_1

    .line 530
    :goto_0
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    move/from16 v23, v0

    :goto_1
    mul-int v16, v22, v23

    .line 534
    .local v16, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 536
    :cond_0
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 538
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 541
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 544
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 549
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v10

    .local v10, "dataSize":I
    const/16 v22, 0x1

    .line 550
    shl-int v5, v22, v10

    .line 551
    .local v5, "clear":I
    add-int/lit8 v12, v5, 0x1

    .line 552
    .local v12, "endOfInformation":I
    add-int/lit8 v2, v5, 0x2

    .local v2, "available":I
    const/16 v17, -0x1

    .line 554
    .local v17, "oldCode":I
    add-int/lit8 v8, v10, 0x1

    .local v8, "codeSize":I
    const/16 v22, 0x1

    .line 555
    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .local v7, "codeMask":I
    const/4 v6, 0x0

    .line 556
    .local v6, "code":I
    :goto_6
    if-lt v6, v5, :cond_7

    const/4 v3, 0x0

    .local v3, "bi":I
    const/16 v18, 0x0

    .local v18, "pi":I
    const/16 v20, 0x0

    .local v20, "top":I
    const/4 v13, 0x0

    .local v13, "first":I
    const/4 v9, 0x0

    .local v9, "count":I
    const/4 v4, 0x0

    .local v4, "bits":I
    const/4 v11, 0x0

    .local v11, "datum":I
    const/4 v14, 0x0

    .line 564
    .local v14, "i":I
    :goto_7
    move/from16 v0, v16

    if-lt v14, v0, :cond_8

    .line 646
    :goto_8
    move/from16 v14, v18

    :goto_9
    move/from16 v0, v16

    if-lt v14, v0, :cond_15

    .line 649
    return-void

    .line 527
    .end local v2    # "available":I
    .end local v3    # "bi":I
    .end local v4    # "bits":I
    .end local v5    # "clear":I
    .end local v6    # "code":I
    .end local v7    # "codeMask":I
    .end local v8    # "codeSize":I
    .end local v9    # "count":I
    .end local v10    # "dataSize":I
    .end local v11    # "datum":I
    .end local v12    # "endOfInformation":I
    .end local v13    # "first":I
    .end local v14    # "i":I
    .end local v16    # "npix":I
    .end local v17    # "oldCode":I
    .end local v18    # "pi":I
    .end local v20    # "top":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 530
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    move/from16 v23, v0

    goto/16 :goto_1

    .line 534
    .restart local v16    # "npix":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_0

    goto/16 :goto_2

    :cond_4
    const/16 v22, 0x1000

    .line 539
    move/from16 v0, v22

    new-array v0, v0, [S

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    goto/16 :goto_3

    :cond_5
    const/16 v22, 0x1000

    .line 542
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    goto/16 :goto_4

    :cond_6
    const/16 v22, 0x1001

    .line 545
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    goto/16 :goto_5

    .line 558
    .restart local v2    # "available":I
    .restart local v5    # "clear":I
    .restart local v6    # "code":I
    .restart local v7    # "codeMask":I
    .restart local v8    # "codeSize":I
    .restart local v10    # "dataSize":I
    .restart local v12    # "endOfInformation":I
    .restart local v17    # "oldCode":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-short v23, v22, v6

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v6

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v6

    .line 556
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 566
    .restart local v3    # "bi":I
    .restart local v4    # "bits":I
    .restart local v9    # "count":I
    .restart local v11    # "datum":I
    .restart local v13    # "first":I
    .restart local v14    # "i":I
    .restart local v18    # "pi":I
    .restart local v20    # "top":I
    :cond_8
    if-eqz v9, :cond_9

    .line 576
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int v22, v22, v4

    add-int v11, v11, v22

    .line 577
    add-int/lit8 v4, v4, 0x8

    .line 578
    add-int/lit8 v3, v3, 0x1

    .line 579
    add-int/lit8 v9, v9, -0x1

    move/from16 v21, v20

    .line 581
    .end local v20    # "top":I
    .local v21, "top":I
    :goto_b
    if-ge v4, v8, :cond_b

    move/from16 v20, v21

    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto/16 :goto_7

    .line 568
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->readBlock()I

    move-result v9

    .line 569
    if-lez v9, :cond_a

    const/4 v3, 0x0

    .line 573
    goto :goto_a

    :cond_a
    const/16 v22, 0x3

    .line 570
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto/16 :goto_8

    .line 583
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_b
    and-int v6, v11, v7

    .line 584
    shr-int/2addr v11, v8

    .line 585
    sub-int/2addr v4, v8

    .line 588
    if-eq v6, v5, :cond_d

    .line 597
    if-gt v6, v2, :cond_e

    .line 602
    if-eq v6, v12, :cond_f

    const/16 v22, -0x1

    .line 606
    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 612
    move v15, v6

    .line 613
    .local v15, "inCode":I
    if-ge v6, v2, :cond_11

    .line 617
    :goto_c
    if-ge v6, v5, :cond_12

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v13, v0, 0xff

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v21

    const/16 v22, 0x1000

    .line 625
    move/from16 v0, v22

    if-lt v2, v0, :cond_13

    .line 634
    :cond_c
    :goto_d
    move/from16 v17, v15

    move/from16 v19, v18

    .line 636
    .end local v18    # "pi":I
    .local v19, "pi":I
    :goto_e
    if-gtz v20, :cond_14

    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    move/from16 v18, v19

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    goto :goto_b

    .line 590
    .end local v15    # "inCode":I
    :cond_d
    add-int/lit8 v8, v10, 0x1

    const/16 v22, 0x1

    .line 591
    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 592
    add-int/lit8 v2, v5, 0x2

    const/16 v17, -0x1

    .line 593
    goto :goto_b

    :cond_e
    const/16 v22, 0x3

    .line 598
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    move/from16 v20, v21

    .line 599
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto/16 :goto_7

    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_f
    move/from16 v20, v21

    .line 603
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto/16 :goto_7

    .line 607
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 608
    move/from16 v17, v6

    .line 609
    move v13, v6

    move/from16 v21, v20

    .line 610
    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_b

    .line 614
    .restart local v15    # "inCode":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 615
    move/from16 v6, v17

    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_c

    .line 618
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    aget-short v6, v22, v6

    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_c

    .line 626
    .end local v21    # "top":I
    .restart local v20    # "top":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v22, v2

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v2

    .line 628
    add-int/lit8 v2, v2, 0x1

    .line 629
    and-int v22, v2, v7

    if-nez v22, :cond_c

    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_c

    .line 630
    add-int/lit8 v8, v8, 0x1

    .line 631
    add-int/2addr v7, v2

    goto/16 :goto_d

    .line 638
    .end local v18    # "pi":I
    .restart local v19    # "pi":I
    :cond_14
    add-int/lit8 v20, v20, -0x1

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v20

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v19

    .line 640
    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v18

    .end local v18    # "pi":I
    .restart local v19    # "pi":I
    goto/16 :goto_e

    .line 647
    .end local v15    # "inCode":I
    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-byte v23, v22, v14

    .line 646
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 690
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2, v3, v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 691
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 694
    :goto_0
    invoke-static {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    .line 695
    return-object v0

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private read()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 657
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 661
    :goto_0
    return v0

    .line 660
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 659
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 6

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v0

    .local v0, "blockSize":I
    const/4 v3, 0x0

    .line 672
    .local v3, "n":I
    if-gtz v0, :cond_1

    .line 686
    :goto_0
    return v3

    .line 676
    :cond_0
    sub-int v1, v0, v3

    .line 677
    .local v1, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    invoke-virtual {v4, v5, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    add-int/2addr v3, v1

    .line 675
    .end local v1    # "count":I
    :cond_1
    if-lt v3, v0, :cond_0

    goto :goto_0

    .line 684
    .restart local v1    # "count":I
    :catch_0
    move-exception v2

    .line 682
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error Reading Block"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    .line 683
    iput v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_0
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 700
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto :goto_0
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "currentFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;
    .param p2, "previousFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    .prologue
    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 428
    .local v4, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v8, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 431
    .local v8, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 434
    .local v2, "dest":[I
    if-nez p2, :cond_1

    .line 451
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    const/16 v18, 0x1

    .local v18, "pass":I
    const/16 v14, 0x8

    .local v14, "inc":I
    const/4 v13, 0x0

    .local v13, "iline":I
    const/4 v12, 0x0

    .line 457
    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-lt v12, v3, :cond_4

    .line 507
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    if-nez v3, :cond_b

    .line 516
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    .line 517
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 518
    return-object v1

    .line 434
    .end local v1    # "result":Landroid/graphics/Bitmap;
    .end local v12    # "i":I
    .end local v13    # "iline":I
    .end local v14    # "inc":I
    .end local v18    # "pass":I
    :cond_1
    move-object/from16 v0, p2

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v3, :cond_0

    .line 437
    move-object/from16 v0, p2

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 444
    move-object/from16 v0, p2

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 440
    .local v9, "c":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v3, :cond_3

    .line 443
    :goto_3
    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 441
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v9, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    goto :goto_3

    .line 458
    .end local v9    # "c":I
    .restart local v12    # "i":I
    .restart local v13    # "iline":I
    .restart local v14    # "inc":I
    .restart local v18    # "pass":I
    :cond_4
    move/from16 v17, v12

    .line 459
    .local v17, "line":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-nez v3, :cond_6

    .line 481
    :goto_4
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    add-int v17, v17, v3

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    move/from16 v0, v17

    if-lt v0, v3, :cond_8

    .line 457
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 460
    :cond_6
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-ge v13, v3, :cond_7

    .line 478
    :goto_5
    move/from16 v17, v13

    .line 479
    add-int/2addr v13, v14

    goto :goto_4

    .line 461
    :cond_7
    add-int/lit8 v18, v18, 0x1

    .line 462
    packed-switch v18, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/4 v13, 0x4

    .line 464
    goto :goto_5

    :pswitch_1
    const/4 v13, 0x2

    const/4 v14, 0x4

    .line 468
    goto :goto_5

    :pswitch_2
    const/4 v13, 0x1

    const/4 v14, 0x2

    .line 472
    goto :goto_5

    .line 483
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    mul-int v16, v17, v3

    .line 485
    .local v16, "k":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int v11, v16, v3

    .line 487
    .local v11, "dx":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int v10, v11, v3

    .line 488
    .local v10, "dlim":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int v3, v3, v16

    if-lt v3, v10, :cond_9

    .line 493
    :goto_6
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    mul-int v19, v12, v3

    .local v19, "sx":I
    move/from16 v20, v19

    .line 494
    .end local v19    # "sx":I
    .local v20, "sx":I
    :goto_7
    if-ge v11, v10, :cond_5

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "sx":I
    .restart local v19    # "sx":I
    aget-byte v3, v3, v20

    and-int/lit16 v15, v3, 0xff

    .line 497
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    aget v9, v3, v15

    .line 498
    .restart local v9    # "c":I
    if-nez v9, :cond_a

    .line 501
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v19

    .line 502
    .end local v19    # "sx":I
    .restart local v20    # "sx":I
    goto :goto_7

    .line 490
    .end local v9    # "c":I
    .end local v15    # "index":I
    .end local v20    # "sx":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int v10, v16, v3

    goto :goto_6

    .line 499
    .restart local v9    # "c":I
    .restart local v15    # "index":I
    .restart local v19    # "sx":I
    :cond_a
    aput v9, v2, v11

    goto :goto_8

    .line 507
    .end local v9    # "c":I
    .end local v10    # "dlim":I
    .end local v11    # "dx":I
    .end local v15    # "index":I
    .end local v16    # "k":I
    .end local v17    # "line":I
    .end local v19    # "sx":I
    :cond_b
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-nez v3, :cond_d

    .line 509
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_e

    .line 512
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_2

    .line 507
    :cond_d
    move-object/from16 v0, p1

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_c

    goto/16 :goto_2

    .line 510
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    goto :goto_9

    .line 462
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public advance()V
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 188
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 348
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 349
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 350
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 351
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 354
    :goto_0
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 355
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 356
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v0, -0x1

    .line 198
    .local v0, "delay":I
    if-gez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 209
    return v0

    .line 208
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-ltz v0, :cond_0

    .line 212
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gtz v5, :cond_2

    .line 253
    :cond_0
    sget-object v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_0
    const/4 v5, 0x1

    .line 256
    iput v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 258
    :goto_1
    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    if-ne v5, v9, :cond_4

    .line 259
    :cond_1
    sget-object v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_5

    :goto_2
    monitor-exit p0

    .line 262
    return-object v8

    .line 252
    :cond_2
    :try_start_1
    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-ltz v5, :cond_0

    goto :goto_1

    .line 254
    :cond_3
    sget-object v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to decode frame, frameCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " framePointer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 258
    :cond_4
    :try_start_2
    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v5, 0x0

    .line 264
    iput v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 266
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .local v0, "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    const/4 v1, 0x0

    .line 268
    .local v1, "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v2, v5, -0x1

    .line 269
    .local v2, "previousIndex":I
    if-gez v2, :cond_6

    .line 274
    .end local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :goto_3
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v5, :cond_7

    .line 277
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    iput-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 278
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-eq v5, v6, :cond_8

    :goto_4
    const/4 v4, 0x0

    .line 284
    .local v4, "save":I
    iget-boolean v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez v5, :cond_9

    .line 289
    :goto_5
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    if-eqz v5, :cond_a

    .line 299
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 302
    .local v3, "result":Landroid/graphics/Bitmap;
    iget-boolean v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_c

    :goto_6
    monitor-exit p0

    .line 306
    return-object v3

    .line 260
    .end local v0    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v2    # "previousIndex":I
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .end local v4    # "save":I
    :cond_5
    :try_start_3
    sget-object v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to decode frame, status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 270
    .restart local v0    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .restart local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .restart local v2    # "previousIndex":I
    :cond_6
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .local v1, "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    goto :goto_3

    .line 275
    .end local v1    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_7
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    iput-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    goto :goto_4

    .line 279
    :cond_8
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v6, 0x0

    iput v6, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    goto :goto_4

    .line 285
    .restart local v4    # "save":I
    :cond_9
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aget v4, v5, v6

    .line 287
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    const/4 v7, 0x0

    aput v7, v5, v6

    goto :goto_5

    .line 290
    :cond_a
    sget-object v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_b

    :goto_7
    const/4 v5, 0x1

    .line 294
    iput v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 295
    return-object v8

    .line 291
    :cond_b
    :try_start_4
    sget-object v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "No Valid Color Table"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 303
    .restart local v3    # "result":Landroid/graphics/Bitmap;
    :cond_c
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aput v4, v5, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 5
    .param p1, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 359
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 360
    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 361
    iput v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v2, -0x1

    .line 362
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 364
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 365
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 366
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 370
    iput-boolean v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 371
    iget-object v2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    :goto_0
    iget v2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v3, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 380
    iget v2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v3, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 381
    return-void

    .line 371
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 372
    .local v0, "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 373
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    goto :goto_0
.end method
