.class public Lcom/sonyericsson/conversations/util/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# static fields
.field private static final sRedundantCharacterPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "[\\s\\.\\-/\\\\\\(\\)]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/util/TextUtil;->sRedundantCharacterPattern:Ljava/util/regex/Pattern;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsText(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static convertForCostSaving(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "sourceText"    # Ljava/lang/String;
    .param p1, "alwaysConvert"    # Z
    .param p2, "allowUcs2"    # Z

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/util/TextUtil;->convertForCostSaving(Ljava/lang/String;ZZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertForCostSaving(Ljava/lang/String;ZZI)Ljava/lang/String;
    .locals 7
    .param p0, "sourceText"    # Ljava/lang/String;
    .param p1, "alwaysConvert"    # Z
    .param p2, "allowUcs2"    # Z
    .param p3, "featureFlag"    # I

    .prologue
    const/4 v6, 0x0

    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 125
    .local v1, "length":I
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/16 v5, 0x46

    if-gt v1, v5, :cond_0

    .line 128
    return-object p0

    .line 131
    :cond_0
    const/4 v2, 0x0

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_b

    .line 132
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 135
    .local v4, "sourceChar":C
    const/16 v5, 0x60

    if-ne v4, v5, :cond_4

    .line 138
    const/16 v0, 0x27

    .line 161
    :goto_1
    if-nez p2, :cond_1

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/TextUtil;->isInGsmAlphabet(C)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 166
    :cond_1
    :goto_2
    if-eq v4, v0, :cond_2

    if-nez v3, :cond_2

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_4
    const/16 v5, 0x7f

    if-gt v4, v5, :cond_5

    .line 143
    move v0, v4

    .local v0, "convertedChar":C
    goto :goto_1

    .line 144
    .end local v0    # "convertedChar":C
    :cond_5
    const/16 v5, 0xff

    if-gt v4, v5, :cond_6

    .line 146
    invoke-static {v4, p3}, Lcom/sonyericsson/conversations/util/TextUtil;->convertLatin1Supplement(CI)C

    move-result v0

    .restart local v0    # "convertedChar":C
    goto :goto_1

    .line 147
    .end local v0    # "convertedChar":C
    :cond_6
    const/16 v5, 0x36f

    if-gt v4, v5, :cond_7

    .line 149
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/TextUtil;->convertLatinExtendedEtc(C)C

    move-result v0

    .restart local v0    # "convertedChar":C
    goto :goto_1

    .line 150
    .end local v0    # "convertedChar":C
    :cond_7
    const/16 v5, 0x3ff

    if-gt v4, v5, :cond_8

    .line 152
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/TextUtil;->convertGreek(C)C

    move-result v0

    .restart local v0    # "convertedChar":C
    goto :goto_1

    .line 153
    .end local v0    # "convertedChar":C
    :cond_8
    const/16 v5, 0x1e00

    if-lt v4, v5, :cond_9

    const/16 v5, 0x1eff

    if-gt v4, v5, :cond_9

    .line 155
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/TextUtil;->convertLatinExtendedAdditional(C)C

    move-result v0

    .restart local v0    # "convertedChar":C
    goto :goto_1

    .line 158
    .end local v0    # "convertedChar":C
    :cond_9
    move v0, v4

    .restart local v0    # "convertedChar":C
    goto :goto_1

    .line 163
    .end local v0    # "convertedChar":C
    :cond_a
    const/16 v0, 0x3f

    .local v0, "convertedChar":C
    goto :goto_2

    .line 180
    .end local v0    # "convertedChar":C
    .end local v4    # "sourceChar":C
    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "sourceText":Ljava/lang/String;
    :cond_c
    return-object p0
.end method

.method private static convertGreek(C)C
    .locals 0
    .param p0, "ch"    # C

    .prologue
    .line 333
    packed-switch p0, :pswitch_data_0

    .line 527
    .local p0, "ch":C
    :goto_0
    :pswitch_0
    return p0

    .line 335
    .local p0, "ch":C
    :pswitch_1
    const/16 p0, 0x3b

    .line 336
    .local p0, "ch":C
    goto :goto_0

    .line 338
    .local p0, "ch":C
    :pswitch_2
    const/4 p0, 0x0

    .line 339
    .local p0, "ch":C
    goto :goto_0

    .line 341
    .local p0, "ch":C
    :pswitch_3
    const/4 p0, 0x0

    .line 342
    .local p0, "ch":C
    goto :goto_0

    .line 344
    .local p0, "ch":C
    :pswitch_4
    const/16 p0, 0x41

    .line 345
    .local p0, "ch":C
    goto :goto_0

    .line 347
    .local p0, "ch":C
    :pswitch_5
    const/16 p0, 0x2e

    .line 348
    .local p0, "ch":C
    goto :goto_0

    .line 350
    .local p0, "ch":C
    :pswitch_6
    const/16 p0, 0x45

    .line 351
    .local p0, "ch":C
    goto :goto_0

    .line 353
    .local p0, "ch":C
    :pswitch_7
    const/16 p0, 0x48

    .line 354
    .local p0, "ch":C
    goto :goto_0

    .line 356
    .local p0, "ch":C
    :pswitch_8
    const/16 p0, 0x49

    .line 357
    .local p0, "ch":C
    goto :goto_0

    .line 359
    .local p0, "ch":C
    :pswitch_9
    const/16 p0, 0x4f

    .line 360
    .local p0, "ch":C
    goto :goto_0

    .line 362
    .local p0, "ch":C
    :pswitch_a
    const/16 p0, 0x59

    .line 363
    .local p0, "ch":C
    goto :goto_0

    .line 365
    .local p0, "ch":C
    :pswitch_b
    const/16 p0, 0x3a9

    .line 366
    .local p0, "ch":C
    goto :goto_0

    .line 368
    .local p0, "ch":C
    :pswitch_c
    const/16 p0, 0x49

    .line 369
    .local p0, "ch":C
    goto :goto_0

    .line 371
    .local p0, "ch":C
    :pswitch_d
    const/16 p0, 0x41

    .line 372
    .local p0, "ch":C
    goto :goto_0

    .line 374
    .local p0, "ch":C
    :pswitch_e
    const/16 p0, 0x42

    .line 375
    .local p0, "ch":C
    goto :goto_0

    .line 377
    .local p0, "ch":C
    :pswitch_f
    const/16 p0, 0x45

    .line 378
    .local p0, "ch":C
    goto :goto_0

    .line 380
    .local p0, "ch":C
    :pswitch_10
    const/16 p0, 0x5a

    .line 381
    .local p0, "ch":C
    goto :goto_0

    .line 383
    .local p0, "ch":C
    :pswitch_11
    const/16 p0, 0x48

    .line 384
    .local p0, "ch":C
    goto :goto_0

    .line 386
    .local p0, "ch":C
    :pswitch_12
    const/16 p0, 0x49

    .line 387
    .local p0, "ch":C
    goto :goto_0

    .line 389
    .local p0, "ch":C
    :pswitch_13
    const/16 p0, 0x4b

    .line 390
    .local p0, "ch":C
    goto :goto_0

    .line 392
    .local p0, "ch":C
    :pswitch_14
    const/16 p0, 0x4d

    .line 393
    .local p0, "ch":C
    goto :goto_0

    .line 395
    .local p0, "ch":C
    :pswitch_15
    const/16 p0, 0x4e

    .line 396
    .local p0, "ch":C
    goto :goto_0

    .line 398
    .local p0, "ch":C
    :pswitch_16
    const/16 p0, 0x4f

    .line 399
    .local p0, "ch":C
    goto :goto_0

    .line 401
    .local p0, "ch":C
    :pswitch_17
    const/16 p0, 0x50

    .line 402
    .local p0, "ch":C
    goto :goto_0

    .line 404
    .local p0, "ch":C
    :pswitch_18
    const/16 p0, 0x54

    .line 405
    .local p0, "ch":C
    goto :goto_0

    .line 407
    .local p0, "ch":C
    :pswitch_19
    const/16 p0, 0x59

    .line 408
    .local p0, "ch":C
    goto :goto_0

    .line 410
    .local p0, "ch":C
    :pswitch_1a
    const/16 p0, 0x58

    .line 411
    .local p0, "ch":C
    goto :goto_0

    .line 413
    .local p0, "ch":C
    :pswitch_1b
    const/16 p0, 0x49

    .line 414
    .local p0, "ch":C
    goto :goto_0

    .line 416
    .local p0, "ch":C
    :pswitch_1c
    const/16 p0, 0x59

    .line 417
    .local p0, "ch":C
    goto :goto_0

    .line 419
    .local p0, "ch":C
    :pswitch_1d
    const/16 p0, 0x41

    .line 420
    .local p0, "ch":C
    goto :goto_0

    .line 422
    .local p0, "ch":C
    :pswitch_1e
    const/16 p0, 0x45

    .line 423
    .local p0, "ch":C
    goto :goto_0

    .line 425
    .local p0, "ch":C
    :pswitch_1f
    const/16 p0, 0x48

    .line 426
    .local p0, "ch":C
    goto :goto_0

    .line 428
    .local p0, "ch":C
    :pswitch_20
    const/16 p0, 0x49

    .line 429
    .local p0, "ch":C
    goto :goto_0

    .line 431
    .local p0, "ch":C
    :pswitch_21
    const/16 p0, 0x59

    .line 432
    .local p0, "ch":C
    goto :goto_0

    .line 434
    .local p0, "ch":C
    :pswitch_22
    const/16 p0, 0x41

    .line 435
    .local p0, "ch":C
    goto :goto_0

    .line 437
    .local p0, "ch":C
    :pswitch_23
    const/16 p0, 0x42

    .line 438
    .local p0, "ch":C
    goto :goto_0

    .line 440
    .local p0, "ch":C
    :pswitch_24
    const/16 p0, 0x393

    .line 441
    .local p0, "ch":C
    goto :goto_0

    .line 443
    .local p0, "ch":C
    :pswitch_25
    const/16 p0, 0x394

    .line 444
    .local p0, "ch":C
    goto :goto_0

    .line 446
    .local p0, "ch":C
    :pswitch_26
    const/16 p0, 0x45

    .line 447
    .local p0, "ch":C
    goto :goto_0

    .line 449
    .local p0, "ch":C
    :pswitch_27
    const/16 p0, 0x5a

    .line 450
    .local p0, "ch":C
    goto :goto_0

    .line 452
    .local p0, "ch":C
    :pswitch_28
    const/16 p0, 0x48

    .line 453
    .local p0, "ch":C
    goto :goto_0

    .line 455
    .local p0, "ch":C
    :pswitch_29
    const/16 p0, 0x398

    .line 456
    .local p0, "ch":C
    goto :goto_0

    .line 458
    .local p0, "ch":C
    :pswitch_2a
    const/16 p0, 0x49

    .line 459
    .local p0, "ch":C
    goto :goto_0

    .line 461
    .local p0, "ch":C
    :pswitch_2b
    const/16 p0, 0x4b

    .line 462
    .local p0, "ch":C
    goto :goto_0

    .line 464
    .local p0, "ch":C
    :pswitch_2c
    const/16 p0, 0x39b

    .line 465
    .local p0, "ch":C
    goto/16 :goto_0

    .line 467
    .local p0, "ch":C
    :pswitch_2d
    const/16 p0, 0x4d

    .line 468
    .local p0, "ch":C
    goto/16 :goto_0

    .line 470
    .local p0, "ch":C
    :pswitch_2e
    const/16 p0, 0x4e

    .line 471
    .local p0, "ch":C
    goto/16 :goto_0

    .line 473
    .local p0, "ch":C
    :pswitch_2f
    const/16 p0, 0x39e

    .line 474
    .local p0, "ch":C
    goto/16 :goto_0

    .line 476
    .local p0, "ch":C
    :pswitch_30
    const/16 p0, 0x4f

    .line 477
    .local p0, "ch":C
    goto/16 :goto_0

    .line 479
    .local p0, "ch":C
    :pswitch_31
    const/16 p0, 0x3a0

    .line 480
    .local p0, "ch":C
    goto/16 :goto_0

    .line 482
    .local p0, "ch":C
    :pswitch_32
    const/16 p0, 0x50

    .line 483
    .local p0, "ch":C
    goto/16 :goto_0

    .line 485
    .local p0, "ch":C
    :pswitch_33
    const/16 p0, 0x3a3

    .line 486
    .local p0, "ch":C
    goto/16 :goto_0

    .line 488
    .local p0, "ch":C
    :pswitch_34
    const/16 p0, 0x3a3

    .line 489
    .local p0, "ch":C
    goto/16 :goto_0

    .line 491
    .local p0, "ch":C
    :pswitch_35
    const/16 p0, 0x54

    .line 492
    .local p0, "ch":C
    goto/16 :goto_0

    .line 494
    .local p0, "ch":C
    :pswitch_36
    const/16 p0, 0x59

    .line 495
    .local p0, "ch":C
    goto/16 :goto_0

    .line 497
    .local p0, "ch":C
    :pswitch_37
    const/16 p0, 0x3a6

    .line 498
    .local p0, "ch":C
    goto/16 :goto_0

    .line 500
    .local p0, "ch":C
    :pswitch_38
    const/16 p0, 0x58

    .line 501
    .local p0, "ch":C
    goto/16 :goto_0

    .line 503
    .local p0, "ch":C
    :pswitch_39
    const/16 p0, 0x3a8

    .line 504
    .local p0, "ch":C
    goto/16 :goto_0

    .line 506
    .local p0, "ch":C
    :pswitch_3a
    const/16 p0, 0x3a9

    .line 507
    .local p0, "ch":C
    goto/16 :goto_0

    .line 509
    .local p0, "ch":C
    :pswitch_3b
    const/16 p0, 0x49

    .line 510
    .local p0, "ch":C
    goto/16 :goto_0

    .line 512
    .local p0, "ch":C
    :pswitch_3c
    const/16 p0, 0x59

    .line 513
    .local p0, "ch":C
    goto/16 :goto_0

    .line 515
    .local p0, "ch":C
    :pswitch_3d
    const/16 p0, 0x4f

    .line 516
    .local p0, "ch":C
    goto/16 :goto_0

    .line 518
    .local p0, "ch":C
    :pswitch_3e
    const/16 p0, 0x59

    .line 519
    .local p0, "ch":C
    goto/16 :goto_0

    .line 521
    .local p0, "ch":C
    :pswitch_3f
    const/16 p0, 0x3a9

    .line 522
    .local p0, "ch":C
    goto/16 :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x37e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
    .end packed-switch
.end method

.method private static convertLatin1Supplement(CI)C
    .locals 1
    .param p0, "ch"    # C
    .param p1, "featureFlag"    # I

    .prologue
    .line 1006
    packed-switch p0, :pswitch_data_0

    .line 1171
    .end local p0    # "ch":C
    :goto_0
    :pswitch_0
    return p0

    .line 1008
    .restart local p0    # "ch":C
    :pswitch_1
    const/16 p0, 0x63

    .line 1009
    .local p0, "ch":C
    goto :goto_0

    .line 1011
    .local p0, "ch":C
    :pswitch_2
    const/16 p0, 0x7c

    .line 1012
    .local p0, "ch":C
    goto :goto_0

    .line 1014
    .local p0, "ch":C
    :pswitch_3
    const/16 p0, 0x22

    .line 1015
    .local p0, "ch":C
    goto :goto_0

    .line 1017
    .local p0, "ch":C
    :pswitch_4
    const/16 p0, 0x3c

    .line 1018
    .local p0, "ch":C
    goto :goto_0

    .line 1020
    .local p0, "ch":C
    :pswitch_5
    const/16 p0, 0x2d

    .line 1021
    .local p0, "ch":C
    goto :goto_0

    .line 1023
    .local p0, "ch":C
    :pswitch_6
    const/16 p0, 0x2d

    .line 1024
    .local p0, "ch":C
    goto :goto_0

    .line 1026
    .local p0, "ch":C
    :pswitch_7
    const/16 p0, 0x2d

    .line 1027
    .local p0, "ch":C
    goto :goto_0

    .line 1029
    .local p0, "ch":C
    :pswitch_8
    const/16 p0, 0x27

    .line 1030
    .local p0, "ch":C
    goto :goto_0

    .line 1032
    .local p0, "ch":C
    :pswitch_9
    const/16 p0, 0x2e

    .line 1033
    .local p0, "ch":C
    goto :goto_0

    .line 1035
    .local p0, "ch":C
    :pswitch_a
    const/16 p0, 0x2c

    .line 1036
    .local p0, "ch":C
    goto :goto_0

    .line 1038
    .local p0, "ch":C
    :pswitch_b
    const/16 p0, 0x3e

    .line 1039
    .local p0, "ch":C
    goto :goto_0

    .line 1041
    .local p0, "ch":C
    :pswitch_c
    const/16 p0, 0x41

    .line 1042
    .local p0, "ch":C
    goto :goto_0

    .line 1044
    .local p0, "ch":C
    :pswitch_d
    const/16 p0, 0x41

    .line 1045
    .local p0, "ch":C
    goto :goto_0

    .line 1047
    .local p0, "ch":C
    :pswitch_e
    const/16 p0, 0x41

    .line 1048
    .local p0, "ch":C
    goto :goto_0

    .line 1050
    .local p0, "ch":C
    :pswitch_f
    const/16 p0, 0x41

    .line 1051
    .local p0, "ch":C
    goto :goto_0

    .line 1053
    .local p0, "ch":C
    :pswitch_10
    const/16 p0, 0x45

    .line 1054
    .local p0, "ch":C
    goto :goto_0

    .line 1056
    .local p0, "ch":C
    :pswitch_11
    const/16 p0, 0x45

    .line 1057
    .local p0, "ch":C
    goto :goto_0

    .line 1059
    .local p0, "ch":C
    :pswitch_12
    const/16 p0, 0x45

    .line 1060
    .local p0, "ch":C
    goto :goto_0

    .line 1062
    .local p0, "ch":C
    :pswitch_13
    const/16 p0, 0x49

    .line 1063
    .local p0, "ch":C
    goto :goto_0

    .line 1065
    .local p0, "ch":C
    :pswitch_14
    const/16 p0, 0x49

    .line 1066
    .local p0, "ch":C
    goto :goto_0

    .line 1068
    .local p0, "ch":C
    :pswitch_15
    const/16 p0, 0x49

    .line 1069
    .local p0, "ch":C
    goto :goto_0

    .line 1071
    .local p0, "ch":C
    :pswitch_16
    const/16 p0, 0x49

    .line 1072
    .local p0, "ch":C
    goto :goto_0

    .line 1074
    .local p0, "ch":C
    :pswitch_17
    const/16 p0, 0x44

    .line 1075
    .local p0, "ch":C
    goto :goto_0

    .line 1077
    .local p0, "ch":C
    :pswitch_18
    const/16 p0, 0x4f

    .line 1078
    .local p0, "ch":C
    goto :goto_0

    .line 1080
    .local p0, "ch":C
    :pswitch_19
    const/16 p0, 0x4f

    .line 1081
    .local p0, "ch":C
    goto :goto_0

    .line 1083
    .local p0, "ch":C
    :pswitch_1a
    const/16 p0, 0x4f

    .line 1084
    .local p0, "ch":C
    goto :goto_0

    .line 1086
    .local p0, "ch":C
    :pswitch_1b
    const/16 p0, 0x4f

    .line 1087
    .local p0, "ch":C
    goto :goto_0

    .line 1089
    .local p0, "ch":C
    :pswitch_1c
    const/16 p0, 0x78

    .line 1090
    .local p0, "ch":C
    goto :goto_0

    .line 1092
    .local p0, "ch":C
    :pswitch_1d
    const/16 p0, 0x55

    .line 1093
    .local p0, "ch":C
    goto :goto_0

    .line 1095
    .local p0, "ch":C
    :pswitch_1e
    const/16 p0, 0x55

    .line 1096
    .local p0, "ch":C
    goto :goto_0

    .line 1098
    .local p0, "ch":C
    :pswitch_1f
    const/16 p0, 0x55

    .line 1099
    .local p0, "ch":C
    goto :goto_0

    .line 1101
    .local p0, "ch":C
    :pswitch_20
    const/16 p0, 0x59

    .line 1102
    .local p0, "ch":C
    goto :goto_0

    .line 1104
    .local p0, "ch":C
    :pswitch_21
    const/16 p0, 0x54

    .line 1105
    .local p0, "ch":C
    goto :goto_0

    .line 1107
    .local p0, "ch":C
    :pswitch_22
    const/16 p0, 0x61

    .line 1108
    .local p0, "ch":C
    goto :goto_0

    .line 1110
    .local p0, "ch":C
    :pswitch_23
    const/16 p0, 0x61

    .line 1111
    .local p0, "ch":C
    goto :goto_0

    .line 1113
    .local p0, "ch":C
    :pswitch_24
    const/16 p0, 0x61

    .line 1114
    .local p0, "ch":C
    goto :goto_0

    .line 1116
    .local p0, "ch":C
    :pswitch_25
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1117
    const/16 p0, 0xc7

    .local p0, "ch":C
    goto :goto_0

    .line 1119
    .local p0, "ch":C
    :cond_0
    const/16 p0, 0x63

    .local p0, "ch":C
    goto :goto_0

    .line 1123
    .local p0, "ch":C
    :pswitch_26
    const/16 p0, 0x65

    .line 1124
    .local p0, "ch":C
    goto :goto_0

    .line 1126
    .local p0, "ch":C
    :pswitch_27
    const/16 p0, 0x65

    .line 1127
    .local p0, "ch":C
    goto :goto_0

    .line 1129
    .local p0, "ch":C
    :pswitch_28
    const/16 p0, 0x69

    .line 1130
    .local p0, "ch":C
    goto :goto_0

    .line 1132
    .local p0, "ch":C
    :pswitch_29
    const/16 p0, 0x69

    .line 1133
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1135
    .local p0, "ch":C
    :pswitch_2a
    const/16 p0, 0x69

    .line 1136
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1138
    .local p0, "ch":C
    :pswitch_2b
    const/16 p0, 0x64

    .line 1139
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1141
    .local p0, "ch":C
    :pswitch_2c
    const/16 p0, 0x6f

    .line 1142
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1144
    .local p0, "ch":C
    :pswitch_2d
    const/16 p0, 0x6f

    .line 1145
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1147
    .local p0, "ch":C
    :pswitch_2e
    const/16 p0, 0x6f

    .line 1148
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1150
    .local p0, "ch":C
    :pswitch_2f
    const/16 p0, 0x2f

    .line 1151
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1153
    .local p0, "ch":C
    :pswitch_30
    const/16 p0, 0x75

    .line 1154
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1156
    .local p0, "ch":C
    :pswitch_31
    const/16 p0, 0x75

    .line 1157
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1159
    .local p0, "ch":C
    :pswitch_32
    const/16 p0, 0x79

    .line 1160
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1162
    .local p0, "ch":C
    :pswitch_33
    const/16 p0, 0x74

    .line 1163
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1165
    .local p0, "ch":C
    :pswitch_34
    const/16 p0, 0x79

    .line 1166
    .local p0, "ch":C
    goto/16 :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_31
        :pswitch_0
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method

.method private static convertLatinExtendedAdditional(C)C
    .locals 0
    .param p0, "ch"    # C

    .prologue
    .line 286
    sparse-switch p0, :sswitch_data_0

    .line 318
    .local p0, "ch":C
    :goto_0
    return p0

    .line 288
    .local p0, "ch":C
    :sswitch_0
    const/16 p0, 0x45

    .line 289
    .local p0, "ch":C
    goto :goto_0

    .line 291
    .local p0, "ch":C
    :sswitch_1
    const/16 p0, 0x4f

    .line 292
    .local p0, "ch":C
    goto :goto_0

    .line 294
    .local p0, "ch":C
    :sswitch_2
    const/16 p0, 0x53

    .line 295
    .local p0, "ch":C
    goto :goto_0

    .line 297
    .local p0, "ch":C
    :sswitch_3
    const/16 p0, 0x65

    .line 298
    .local p0, "ch":C
    goto :goto_0

    .line 300
    .local p0, "ch":C
    :sswitch_4
    const/16 p0, 0x6f

    .line 301
    .local p0, "ch":C
    goto :goto_0

    .line 303
    .local p0, "ch":C
    :sswitch_5
    const/16 p0, 0x73

    .line 304
    .local p0, "ch":C
    goto :goto_0

    .line 306
    .local p0, "ch":C
    :sswitch_6
    const/16 p0, 0x49

    .line 307
    .local p0, "ch":C
    goto :goto_0

    .line 309
    .local p0, "ch":C
    :sswitch_7
    const/16 p0, 0x69

    .line 310
    .local p0, "ch":C
    goto :goto_0

    .line 312
    .local p0, "ch":C
    :sswitch_8
    const/16 p0, 0x55

    .line 313
    .local p0, "ch":C
    goto :goto_0

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e62 -> :sswitch_2
        0x1e63 -> :sswitch_5
        0x1eb8 -> :sswitch_0
        0x1eb9 -> :sswitch_3
        0x1eca -> :sswitch_6
        0x1ecb -> :sswitch_7
        0x1ecc -> :sswitch_1
        0x1ecd -> :sswitch_4
        0x1ee4 -> :sswitch_8
    .end sparse-switch
.end method

.method private static convertLatinExtendedEtc(C)C
    .locals 0
    .param p0, "ch"    # C

    .prologue
    .line 539
    sparse-switch p0, :sswitch_data_0

    .line 995
    .local p0, "ch":C
    :goto_0
    return p0

    .line 541
    .local p0, "ch":C
    :sswitch_0
    const/16 p0, 0x41

    .line 542
    .local p0, "ch":C
    goto :goto_0

    .line 544
    .local p0, "ch":C
    :sswitch_1
    const/16 p0, 0x61

    .line 545
    .local p0, "ch":C
    goto :goto_0

    .line 547
    .local p0, "ch":C
    :sswitch_2
    const/16 p0, 0x41

    .line 548
    .local p0, "ch":C
    goto :goto_0

    .line 550
    .local p0, "ch":C
    :sswitch_3
    const/16 p0, 0x61

    .line 551
    .local p0, "ch":C
    goto :goto_0

    .line 553
    .local p0, "ch":C
    :sswitch_4
    const/16 p0, 0x41

    .line 554
    .local p0, "ch":C
    goto :goto_0

    .line 556
    .local p0, "ch":C
    :sswitch_5
    const/16 p0, 0x61

    .line 557
    .local p0, "ch":C
    goto :goto_0

    .line 559
    .local p0, "ch":C
    :sswitch_6
    const/16 p0, 0x43

    .line 560
    .local p0, "ch":C
    goto :goto_0

    .line 562
    .local p0, "ch":C
    :sswitch_7
    const/16 p0, 0x63

    .line 563
    .local p0, "ch":C
    goto :goto_0

    .line 565
    .local p0, "ch":C
    :sswitch_8
    const/16 p0, 0x43

    .line 566
    .local p0, "ch":C
    goto :goto_0

    .line 568
    .local p0, "ch":C
    :sswitch_9
    const/16 p0, 0x63

    .line 569
    .local p0, "ch":C
    goto :goto_0

    .line 571
    .local p0, "ch":C
    :sswitch_a
    const/16 p0, 0x43

    .line 572
    .local p0, "ch":C
    goto :goto_0

    .line 574
    .local p0, "ch":C
    :sswitch_b
    const/16 p0, 0x63

    .line 575
    .local p0, "ch":C
    goto :goto_0

    .line 577
    .local p0, "ch":C
    :sswitch_c
    const/16 p0, 0x43

    .line 578
    .local p0, "ch":C
    goto :goto_0

    .line 580
    .local p0, "ch":C
    :sswitch_d
    const/16 p0, 0x63

    .line 581
    .local p0, "ch":C
    goto :goto_0

    .line 583
    .local p0, "ch":C
    :sswitch_e
    const/16 p0, 0x44

    .line 584
    .local p0, "ch":C
    goto :goto_0

    .line 586
    .local p0, "ch":C
    :sswitch_f
    const/16 p0, 0x64

    .line 587
    .local p0, "ch":C
    goto :goto_0

    .line 589
    .local p0, "ch":C
    :sswitch_10
    const/16 p0, 0x44

    .line 590
    .local p0, "ch":C
    goto :goto_0

    .line 592
    .local p0, "ch":C
    :sswitch_11
    const/16 p0, 0x64

    .line 593
    .local p0, "ch":C
    goto :goto_0

    .line 595
    .local p0, "ch":C
    :sswitch_12
    const/16 p0, 0x45

    .line 596
    .local p0, "ch":C
    goto :goto_0

    .line 598
    .local p0, "ch":C
    :sswitch_13
    const/16 p0, 0x65

    .line 599
    .local p0, "ch":C
    goto :goto_0

    .line 601
    .local p0, "ch":C
    :sswitch_14
    const/16 p0, 0x45

    .line 602
    .local p0, "ch":C
    goto :goto_0

    .line 604
    .local p0, "ch":C
    :sswitch_15
    const/16 p0, 0x65

    .line 605
    .local p0, "ch":C
    goto :goto_0

    .line 607
    .local p0, "ch":C
    :sswitch_16
    const/16 p0, 0x45

    .line 608
    .local p0, "ch":C
    goto :goto_0

    .line 610
    .local p0, "ch":C
    :sswitch_17
    const/16 p0, 0x65

    .line 611
    .local p0, "ch":C
    goto :goto_0

    .line 613
    .local p0, "ch":C
    :sswitch_18
    const/16 p0, 0x45

    .line 614
    .local p0, "ch":C
    goto :goto_0

    .line 616
    .local p0, "ch":C
    :sswitch_19
    const/16 p0, 0x65

    .line 617
    .local p0, "ch":C
    goto :goto_0

    .line 619
    .local p0, "ch":C
    :sswitch_1a
    const/16 p0, 0x45

    .line 620
    .local p0, "ch":C
    goto :goto_0

    .line 622
    .local p0, "ch":C
    :sswitch_1b
    const/16 p0, 0x65

    .line 623
    .local p0, "ch":C
    goto :goto_0

    .line 625
    .local p0, "ch":C
    :sswitch_1c
    const/16 p0, 0x47

    .line 626
    .local p0, "ch":C
    goto :goto_0

    .line 628
    .local p0, "ch":C
    :sswitch_1d
    const/16 p0, 0x67

    .line 629
    .local p0, "ch":C
    goto :goto_0

    .line 631
    .local p0, "ch":C
    :sswitch_1e
    const/16 p0, 0x47

    .line 632
    .local p0, "ch":C
    goto :goto_0

    .line 634
    .local p0, "ch":C
    :sswitch_1f
    const/16 p0, 0x67

    .line 635
    .local p0, "ch":C
    goto :goto_0

    .line 637
    .local p0, "ch":C
    :sswitch_20
    const/16 p0, 0x47

    .line 638
    .local p0, "ch":C
    goto :goto_0

    .line 640
    .local p0, "ch":C
    :sswitch_21
    const/16 p0, 0x67

    .line 641
    .local p0, "ch":C
    goto :goto_0

    .line 643
    .local p0, "ch":C
    :sswitch_22
    const/16 p0, 0x47

    .line 644
    .local p0, "ch":C
    goto :goto_0

    .line 646
    .local p0, "ch":C
    :sswitch_23
    const/16 p0, 0x67

    .line 647
    .local p0, "ch":C
    goto :goto_0

    .line 649
    .local p0, "ch":C
    :sswitch_24
    const/16 p0, 0x48

    .line 650
    .local p0, "ch":C
    goto :goto_0

    .line 652
    .local p0, "ch":C
    :sswitch_25
    const/16 p0, 0x68

    .line 653
    .local p0, "ch":C
    goto :goto_0

    .line 655
    .local p0, "ch":C
    :sswitch_26
    const/16 p0, 0x48

    .line 656
    .local p0, "ch":C
    goto :goto_0

    .line 658
    .local p0, "ch":C
    :sswitch_27
    const/16 p0, 0x68

    .line 659
    .local p0, "ch":C
    goto :goto_0

    .line 661
    .local p0, "ch":C
    :sswitch_28
    const/16 p0, 0x49

    .line 662
    .local p0, "ch":C
    goto :goto_0

    .line 664
    .local p0, "ch":C
    :sswitch_29
    const/16 p0, 0x69

    .line 665
    .local p0, "ch":C
    goto :goto_0

    .line 667
    .local p0, "ch":C
    :sswitch_2a
    const/16 p0, 0x49

    .line 668
    .local p0, "ch":C
    goto/16 :goto_0

    .line 670
    .local p0, "ch":C
    :sswitch_2b
    const/16 p0, 0x69

    .line 671
    .local p0, "ch":C
    goto/16 :goto_0

    .line 673
    .local p0, "ch":C
    :sswitch_2c
    const/16 p0, 0x49

    .line 674
    .local p0, "ch":C
    goto/16 :goto_0

    .line 676
    .local p0, "ch":C
    :sswitch_2d
    const/16 p0, 0x69

    .line 677
    .local p0, "ch":C
    goto/16 :goto_0

    .line 679
    .local p0, "ch":C
    :sswitch_2e
    const/16 p0, 0x49

    .line 680
    .local p0, "ch":C
    goto/16 :goto_0

    .line 682
    .local p0, "ch":C
    :sswitch_2f
    const/16 p0, 0x69

    .line 683
    .local p0, "ch":C
    goto/16 :goto_0

    .line 685
    .local p0, "ch":C
    :sswitch_30
    const/16 p0, 0x49

    .line 686
    .local p0, "ch":C
    goto/16 :goto_0

    .line 688
    .local p0, "ch":C
    :sswitch_31
    const/16 p0, 0x69

    .line 689
    .local p0, "ch":C
    goto/16 :goto_0

    .line 691
    .local p0, "ch":C
    :sswitch_32
    const/16 p0, 0x49

    .line 692
    .local p0, "ch":C
    goto/16 :goto_0

    .line 694
    .local p0, "ch":C
    :sswitch_33
    const/16 p0, 0x69

    .line 695
    .local p0, "ch":C
    goto/16 :goto_0

    .line 697
    .local p0, "ch":C
    :sswitch_34
    const/16 p0, 0x4a

    .line 698
    .local p0, "ch":C
    goto/16 :goto_0

    .line 700
    .local p0, "ch":C
    :sswitch_35
    const/16 p0, 0x6a

    .line 701
    .local p0, "ch":C
    goto/16 :goto_0

    .line 703
    .local p0, "ch":C
    :sswitch_36
    const/16 p0, 0x4b

    .line 704
    .local p0, "ch":C
    goto/16 :goto_0

    .line 706
    .local p0, "ch":C
    :sswitch_37
    const/16 p0, 0x6b

    .line 707
    .local p0, "ch":C
    goto/16 :goto_0

    .line 709
    .local p0, "ch":C
    :sswitch_38
    const/16 p0, 0x6b

    .line 710
    .local p0, "ch":C
    goto/16 :goto_0

    .line 712
    .local p0, "ch":C
    :sswitch_39
    const/16 p0, 0x4c

    .line 713
    .local p0, "ch":C
    goto/16 :goto_0

    .line 715
    .local p0, "ch":C
    :sswitch_3a
    const/16 p0, 0x6c

    .line 716
    .local p0, "ch":C
    goto/16 :goto_0

    .line 718
    .local p0, "ch":C
    :sswitch_3b
    const/16 p0, 0x4c

    .line 719
    .local p0, "ch":C
    goto/16 :goto_0

    .line 721
    .local p0, "ch":C
    :sswitch_3c
    const/16 p0, 0x6c

    .line 722
    .local p0, "ch":C
    goto/16 :goto_0

    .line 724
    .local p0, "ch":C
    :sswitch_3d
    const/16 p0, 0x4c

    .line 725
    .local p0, "ch":C
    goto/16 :goto_0

    .line 727
    .local p0, "ch":C
    :sswitch_3e
    const/16 p0, 0x6c

    .line 728
    .local p0, "ch":C
    goto/16 :goto_0

    .line 730
    .local p0, "ch":C
    :sswitch_3f
    const/16 p0, 0x4c

    .line 731
    .local p0, "ch":C
    goto/16 :goto_0

    .line 733
    .local p0, "ch":C
    :sswitch_40
    const/16 p0, 0x6c

    .line 734
    .local p0, "ch":C
    goto/16 :goto_0

    .line 736
    .local p0, "ch":C
    :sswitch_41
    const/16 p0, 0x4c

    .line 737
    .local p0, "ch":C
    goto/16 :goto_0

    .line 739
    .local p0, "ch":C
    :sswitch_42
    const/16 p0, 0x6c

    .line 740
    .local p0, "ch":C
    goto/16 :goto_0

    .line 742
    .local p0, "ch":C
    :sswitch_43
    const/16 p0, 0x4e

    .line 743
    .local p0, "ch":C
    goto/16 :goto_0

    .line 745
    .local p0, "ch":C
    :sswitch_44
    const/16 p0, 0x6e

    .line 746
    .local p0, "ch":C
    goto/16 :goto_0

    .line 748
    .local p0, "ch":C
    :sswitch_45
    const/16 p0, 0x4e

    .line 749
    .local p0, "ch":C
    goto/16 :goto_0

    .line 751
    .local p0, "ch":C
    :sswitch_46
    const/16 p0, 0x6e

    .line 752
    .local p0, "ch":C
    goto/16 :goto_0

    .line 754
    .local p0, "ch":C
    :sswitch_47
    const/16 p0, 0x4e

    .line 755
    .local p0, "ch":C
    goto/16 :goto_0

    .line 757
    .local p0, "ch":C
    :sswitch_48
    const/16 p0, 0x6e

    .line 758
    .local p0, "ch":C
    goto/16 :goto_0

    .line 760
    .local p0, "ch":C
    :sswitch_49
    const/16 p0, 0x6e

    .line 761
    .local p0, "ch":C
    goto/16 :goto_0

    .line 763
    .local p0, "ch":C
    :sswitch_4a
    const/16 p0, 0x4e

    .line 764
    .local p0, "ch":C
    goto/16 :goto_0

    .line 766
    .local p0, "ch":C
    :sswitch_4b
    const/16 p0, 0x6e

    .line 767
    .local p0, "ch":C
    goto/16 :goto_0

    .line 769
    .local p0, "ch":C
    :sswitch_4c
    const/16 p0, 0x4f

    .line 770
    .local p0, "ch":C
    goto/16 :goto_0

    .line 772
    .local p0, "ch":C
    :sswitch_4d
    const/16 p0, 0x6f

    .line 773
    .local p0, "ch":C
    goto/16 :goto_0

    .line 775
    .local p0, "ch":C
    :sswitch_4e
    const/16 p0, 0x4f

    .line 776
    .local p0, "ch":C
    goto/16 :goto_0

    .line 778
    .local p0, "ch":C
    :sswitch_4f
    const/16 p0, 0x6f

    .line 779
    .local p0, "ch":C
    goto/16 :goto_0

    .line 781
    .local p0, "ch":C
    :sswitch_50
    const/16 p0, 0x4f

    .line 782
    .local p0, "ch":C
    goto/16 :goto_0

    .line 784
    .local p0, "ch":C
    :sswitch_51
    const/16 p0, 0x6f

    .line 785
    .local p0, "ch":C
    goto/16 :goto_0

    .line 787
    .local p0, "ch":C
    :sswitch_52
    const/16 p0, 0x4f

    .line 788
    .local p0, "ch":C
    goto/16 :goto_0

    .line 790
    .local p0, "ch":C
    :sswitch_53
    const/16 p0, 0x6f

    .line 791
    .local p0, "ch":C
    goto/16 :goto_0

    .line 793
    .local p0, "ch":C
    :sswitch_54
    const/16 p0, 0x52

    .line 794
    .local p0, "ch":C
    goto/16 :goto_0

    .line 796
    .local p0, "ch":C
    :sswitch_55
    const/16 p0, 0x72

    .line 797
    .local p0, "ch":C
    goto/16 :goto_0

    .line 799
    .local p0, "ch":C
    :sswitch_56
    const/16 p0, 0x52

    .line 800
    .local p0, "ch":C
    goto/16 :goto_0

    .line 802
    .local p0, "ch":C
    :sswitch_57
    const/16 p0, 0x72

    .line 803
    .local p0, "ch":C
    goto/16 :goto_0

    .line 805
    .local p0, "ch":C
    :sswitch_58
    const/16 p0, 0x52

    .line 806
    .local p0, "ch":C
    goto/16 :goto_0

    .line 808
    .local p0, "ch":C
    :sswitch_59
    const/16 p0, 0x72

    .line 809
    .local p0, "ch":C
    goto/16 :goto_0

    .line 811
    .local p0, "ch":C
    :sswitch_5a
    const/16 p0, 0x53

    .line 812
    .local p0, "ch":C
    goto/16 :goto_0

    .line 814
    .local p0, "ch":C
    :sswitch_5b
    const/16 p0, 0x73

    .line 815
    .local p0, "ch":C
    goto/16 :goto_0

    .line 817
    .local p0, "ch":C
    :sswitch_5c
    const/16 p0, 0x53

    .line 818
    .local p0, "ch":C
    goto/16 :goto_0

    .line 820
    .local p0, "ch":C
    :sswitch_5d
    const/16 p0, 0x73

    .line 821
    .local p0, "ch":C
    goto/16 :goto_0

    .line 823
    .local p0, "ch":C
    :sswitch_5e
    const/16 p0, 0x53

    .line 824
    .local p0, "ch":C
    goto/16 :goto_0

    .line 826
    .local p0, "ch":C
    :sswitch_5f
    const/16 p0, 0x73

    .line 827
    .local p0, "ch":C
    goto/16 :goto_0

    .line 829
    .local p0, "ch":C
    :sswitch_60
    const/16 p0, 0x53

    .line 830
    .local p0, "ch":C
    goto/16 :goto_0

    .line 832
    .local p0, "ch":C
    :sswitch_61
    const/16 p0, 0x73

    .line 833
    .local p0, "ch":C
    goto/16 :goto_0

    .line 835
    .local p0, "ch":C
    :sswitch_62
    const/16 p0, 0x54

    .line 836
    .local p0, "ch":C
    goto/16 :goto_0

    .line 838
    .local p0, "ch":C
    :sswitch_63
    const/16 p0, 0x74

    .line 839
    .local p0, "ch":C
    goto/16 :goto_0

    .line 841
    .local p0, "ch":C
    :sswitch_64
    const/16 p0, 0x54

    .line 842
    .local p0, "ch":C
    goto/16 :goto_0

    .line 844
    .local p0, "ch":C
    :sswitch_65
    const/16 p0, 0x74

    .line 845
    .local p0, "ch":C
    goto/16 :goto_0

    .line 847
    .local p0, "ch":C
    :sswitch_66
    const/16 p0, 0x54

    .line 848
    .local p0, "ch":C
    goto/16 :goto_0

    .line 850
    .local p0, "ch":C
    :sswitch_67
    const/16 p0, 0x74

    .line 851
    .local p0, "ch":C
    goto/16 :goto_0

    .line 853
    .local p0, "ch":C
    :sswitch_68
    const/16 p0, 0x55

    .line 854
    .local p0, "ch":C
    goto/16 :goto_0

    .line 856
    .local p0, "ch":C
    :sswitch_69
    const/16 p0, 0x75

    .line 857
    .local p0, "ch":C
    goto/16 :goto_0

    .line 859
    .local p0, "ch":C
    :sswitch_6a
    const/16 p0, 0x55

    .line 860
    .local p0, "ch":C
    goto/16 :goto_0

    .line 862
    .local p0, "ch":C
    :sswitch_6b
    const/16 p0, 0x75

    .line 863
    .local p0, "ch":C
    goto/16 :goto_0

    .line 865
    .local p0, "ch":C
    :sswitch_6c
    const/16 p0, 0x55

    .line 866
    .local p0, "ch":C
    goto/16 :goto_0

    .line 868
    .local p0, "ch":C
    :sswitch_6d
    const/16 p0, 0x75

    .line 869
    .local p0, "ch":C
    goto/16 :goto_0

    .line 871
    .local p0, "ch":C
    :sswitch_6e
    const/16 p0, 0x55

    .line 872
    .local p0, "ch":C
    goto/16 :goto_0

    .line 874
    .local p0, "ch":C
    :sswitch_6f
    const/16 p0, 0x75

    .line 875
    .local p0, "ch":C
    goto/16 :goto_0

    .line 877
    .local p0, "ch":C
    :sswitch_70
    const/16 p0, 0x55

    .line 878
    .local p0, "ch":C
    goto/16 :goto_0

    .line 880
    .local p0, "ch":C
    :sswitch_71
    const/16 p0, 0x75

    .line 881
    .local p0, "ch":C
    goto/16 :goto_0

    .line 883
    .local p0, "ch":C
    :sswitch_72
    const/16 p0, 0x55

    .line 884
    .local p0, "ch":C
    goto/16 :goto_0

    .line 886
    .local p0, "ch":C
    :sswitch_73
    const/16 p0, 0x75

    .line 887
    .local p0, "ch":C
    goto/16 :goto_0

    .line 889
    .local p0, "ch":C
    :sswitch_74
    const/16 p0, 0x57

    .line 890
    .local p0, "ch":C
    goto/16 :goto_0

    .line 892
    .local p0, "ch":C
    :sswitch_75
    const/16 p0, 0x77

    .line 893
    .local p0, "ch":C
    goto/16 :goto_0

    .line 895
    .local p0, "ch":C
    :sswitch_76
    const/16 p0, 0x59

    .line 896
    .local p0, "ch":C
    goto/16 :goto_0

    .line 898
    .local p0, "ch":C
    :sswitch_77
    const/16 p0, 0x79

    .line 899
    .local p0, "ch":C
    goto/16 :goto_0

    .line 901
    .local p0, "ch":C
    :sswitch_78
    const/16 p0, 0x59

    .line 902
    .local p0, "ch":C
    goto/16 :goto_0

    .line 904
    .local p0, "ch":C
    :sswitch_79
    const/16 p0, 0x5a

    .line 905
    .local p0, "ch":C
    goto/16 :goto_0

    .line 907
    .local p0, "ch":C
    :sswitch_7a
    const/16 p0, 0x7a

    .line 908
    .local p0, "ch":C
    goto/16 :goto_0

    .line 910
    .local p0, "ch":C
    :sswitch_7b
    const/16 p0, 0x5a

    .line 911
    .local p0, "ch":C
    goto/16 :goto_0

    .line 913
    .local p0, "ch":C
    :sswitch_7c
    const/16 p0, 0x7a

    .line 914
    .local p0, "ch":C
    goto/16 :goto_0

    .line 916
    .local p0, "ch":C
    :sswitch_7d
    const/16 p0, 0x5a

    .line 917
    .local p0, "ch":C
    goto/16 :goto_0

    .line 919
    .local p0, "ch":C
    :sswitch_7e
    const/16 p0, 0x7a

    .line 920
    .local p0, "ch":C
    goto/16 :goto_0

    .line 922
    .local p0, "ch":C
    :sswitch_7f
    const/16 p0, 0x66

    .line 923
    .local p0, "ch":C
    goto/16 :goto_0

    .line 925
    .local p0, "ch":C
    :sswitch_80
    const/16 p0, 0x42

    .line 926
    .local p0, "ch":C
    goto/16 :goto_0

    .line 928
    .local p0, "ch":C
    :sswitch_81
    const/16 p0, 0x44

    .line 929
    .local p0, "ch":C
    goto/16 :goto_0

    .line 931
    .local p0, "ch":C
    :sswitch_82
    const/16 p0, 0x45

    .line 932
    .local p0, "ch":C
    goto/16 :goto_0

    .line 934
    .local p0, "ch":C
    :sswitch_83
    const/16 p0, 0x4b

    .line 935
    .local p0, "ch":C
    goto/16 :goto_0

    .line 937
    .local p0, "ch":C
    :sswitch_84
    const/16 p0, 0x6b

    .line 938
    .local p0, "ch":C
    goto/16 :goto_0

    .line 940
    .local p0, "ch":C
    :sswitch_85
    const/16 p0, 0x4f

    .line 941
    .local p0, "ch":C
    goto/16 :goto_0

    .line 943
    .local p0, "ch":C
    :sswitch_86
    const/16 p0, 0x6f

    .line 944
    .local p0, "ch":C
    goto/16 :goto_0

    .line 946
    .local p0, "ch":C
    :sswitch_87
    const/16 p0, 0x55

    .line 947
    .local p0, "ch":C
    goto/16 :goto_0

    .line 949
    .local p0, "ch":C
    :sswitch_88
    const/16 p0, 0x75

    .line 950
    .local p0, "ch":C
    goto/16 :goto_0

    .line 952
    .local p0, "ch":C
    :sswitch_89
    const/16 p0, 0x59

    .line 953
    .local p0, "ch":C
    goto/16 :goto_0

    .line 955
    .local p0, "ch":C
    :sswitch_8a
    const/16 p0, 0x79

    .line 956
    .local p0, "ch":C
    goto/16 :goto_0

    .line 958
    .local p0, "ch":C
    :sswitch_8b
    const/16 p0, 0x62

    .line 959
    .local p0, "ch":C
    goto/16 :goto_0

    .line 961
    .local p0, "ch":C
    :sswitch_8c
    const/16 p0, 0x64

    .line 962
    .local p0, "ch":C
    goto/16 :goto_0

    .line 964
    .local p0, "ch":C
    :sswitch_8d
    const/16 p0, 0x65

    .line 965
    .local p0, "ch":C
    goto/16 :goto_0

    .line 967
    .local p0, "ch":C
    :sswitch_8e
    const/16 p0, 0x27

    .line 968
    .local p0, "ch":C
    goto/16 :goto_0

    .line 970
    .local p0, "ch":C
    :sswitch_8f
    const/16 p0, 0x27

    .line 971
    .local p0, "ch":C
    goto/16 :goto_0

    .line 973
    .local p0, "ch":C
    :sswitch_90
    const/16 p0, 0x27

    .line 974
    .local p0, "ch":C
    goto/16 :goto_0

    .line 976
    .local p0, "ch":C
    :sswitch_91
    const/16 p0, 0x27

    .line 977
    .local p0, "ch":C
    goto/16 :goto_0

    .line 979
    .local p0, "ch":C
    :sswitch_92
    const/16 p0, 0x22

    .line 980
    .local p0, "ch":C
    goto/16 :goto_0

    .line 989
    .local p0, "ch":C
    :sswitch_93
    const/4 p0, 0x0

    .line 990
    .local p0, "ch":C
    goto/16 :goto_0

    .line 539
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x101 -> :sswitch_1
        0x102 -> :sswitch_2
        0x103 -> :sswitch_3
        0x104 -> :sswitch_4
        0x105 -> :sswitch_5
        0x106 -> :sswitch_6
        0x107 -> :sswitch_7
        0x108 -> :sswitch_8
        0x109 -> :sswitch_9
        0x10a -> :sswitch_a
        0x10b -> :sswitch_b
        0x10c -> :sswitch_c
        0x10d -> :sswitch_d
        0x10e -> :sswitch_e
        0x10f -> :sswitch_f
        0x110 -> :sswitch_10
        0x111 -> :sswitch_11
        0x112 -> :sswitch_12
        0x113 -> :sswitch_13
        0x114 -> :sswitch_14
        0x115 -> :sswitch_15
        0x116 -> :sswitch_16
        0x117 -> :sswitch_17
        0x118 -> :sswitch_18
        0x119 -> :sswitch_19
        0x11a -> :sswitch_1a
        0x11b -> :sswitch_1b
        0x11c -> :sswitch_1c
        0x11d -> :sswitch_1d
        0x11e -> :sswitch_1e
        0x11f -> :sswitch_1f
        0x120 -> :sswitch_20
        0x121 -> :sswitch_21
        0x122 -> :sswitch_22
        0x123 -> :sswitch_23
        0x124 -> :sswitch_24
        0x125 -> :sswitch_25
        0x126 -> :sswitch_26
        0x127 -> :sswitch_27
        0x128 -> :sswitch_28
        0x129 -> :sswitch_29
        0x12a -> :sswitch_2a
        0x12b -> :sswitch_2b
        0x12c -> :sswitch_2c
        0x12d -> :sswitch_2d
        0x12e -> :sswitch_2e
        0x12f -> :sswitch_2f
        0x130 -> :sswitch_30
        0x131 -> :sswitch_31
        0x132 -> :sswitch_32
        0x133 -> :sswitch_33
        0x134 -> :sswitch_34
        0x135 -> :sswitch_35
        0x136 -> :sswitch_36
        0x137 -> :sswitch_37
        0x138 -> :sswitch_38
        0x139 -> :sswitch_39
        0x13a -> :sswitch_3a
        0x13b -> :sswitch_3b
        0x13c -> :sswitch_3c
        0x13d -> :sswitch_3d
        0x13e -> :sswitch_3e
        0x13f -> :sswitch_3f
        0x140 -> :sswitch_40
        0x141 -> :sswitch_41
        0x142 -> :sswitch_42
        0x143 -> :sswitch_43
        0x144 -> :sswitch_44
        0x145 -> :sswitch_45
        0x146 -> :sswitch_46
        0x147 -> :sswitch_47
        0x148 -> :sswitch_48
        0x149 -> :sswitch_49
        0x14a -> :sswitch_4a
        0x14b -> :sswitch_4b
        0x14c -> :sswitch_4c
        0x14d -> :sswitch_4d
        0x14e -> :sswitch_4e
        0x14f -> :sswitch_4f
        0x150 -> :sswitch_50
        0x151 -> :sswitch_51
        0x152 -> :sswitch_52
        0x153 -> :sswitch_53
        0x154 -> :sswitch_54
        0x155 -> :sswitch_55
        0x156 -> :sswitch_56
        0x157 -> :sswitch_57
        0x158 -> :sswitch_58
        0x159 -> :sswitch_59
        0x15a -> :sswitch_5a
        0x15b -> :sswitch_5b
        0x15c -> :sswitch_5c
        0x15d -> :sswitch_5d
        0x15e -> :sswitch_5e
        0x15f -> :sswitch_5f
        0x160 -> :sswitch_60
        0x161 -> :sswitch_61
        0x162 -> :sswitch_62
        0x163 -> :sswitch_63
        0x164 -> :sswitch_64
        0x165 -> :sswitch_65
        0x166 -> :sswitch_66
        0x167 -> :sswitch_67
        0x168 -> :sswitch_68
        0x169 -> :sswitch_69
        0x16a -> :sswitch_6a
        0x16b -> :sswitch_6b
        0x16c -> :sswitch_6c
        0x16d -> :sswitch_6d
        0x16e -> :sswitch_6e
        0x16f -> :sswitch_6f
        0x170 -> :sswitch_70
        0x171 -> :sswitch_71
        0x172 -> :sswitch_72
        0x173 -> :sswitch_73
        0x174 -> :sswitch_74
        0x175 -> :sswitch_75
        0x176 -> :sswitch_76
        0x177 -> :sswitch_77
        0x178 -> :sswitch_78
        0x179 -> :sswitch_79
        0x17a -> :sswitch_7a
        0x17b -> :sswitch_7b
        0x17c -> :sswitch_7c
        0x17d -> :sswitch_7d
        0x17e -> :sswitch_7e
        0x17f -> :sswitch_7f
        0x181 -> :sswitch_80
        0x18a -> :sswitch_81
        0x18f -> :sswitch_82
        0x198 -> :sswitch_83
        0x199 -> :sswitch_84
        0x1a0 -> :sswitch_85
        0x1a1 -> :sswitch_86
        0x1af -> :sswitch_87
        0x1b0 -> :sswitch_88
        0x1b3 -> :sswitch_89
        0x1b4 -> :sswitch_8a
        0x253 -> :sswitch_8b
        0x257 -> :sswitch_8c
        0x259 -> :sswitch_8d
        0x2bb -> :sswitch_8e
        0x2bc -> :sswitch_8f
        0x2bd -> :sswitch_90
        0x2d9 -> :sswitch_91
        0x2dd -> :sswitch_92
        0x300 -> :sswitch_93
        0x301 -> :sswitch_93
        0x303 -> :sswitch_93
        0x309 -> :sswitch_93
        0x323 -> :sswitch_93
        0x344 -> :sswitch_93
    .end sparse-switch
.end method

.method public static decodeRawString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "rawBytes"    # Ljava/lang/String;
    .param p1, "charset"    # I

    .prologue
    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    const-string/jumbo v5, ""

    return-object v5

    .line 64
    :cond_0
    if-nez p1, :cond_1

    .line 65
    return-object p0

    .line 67
    :cond_1
    const/16 v5, 0x6a

    if-ne p1, v5, :cond_3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 69
    .local v4, "rawCharSet":Ljava/nio/charset/Charset;
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 70
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 72
    .local v1, "decodedString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "decodedString":Ljava/lang/String;
    .local v2, "decodedString":Ljava/lang/String;
    move-object v1, v2

    .line 77
    .end local v2    # "decodedString":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_2

    .line 78
    new-instance v1, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 80
    :cond_2
    return-object v1

    .line 68
    .end local v0    # "data":[B
    .end local v4    # "rawCharSet":Ljava/nio/charset/Charset;
    :cond_3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .restart local v4    # "rawCharSet":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 73
    .restart local v0    # "data":[B
    .restart local v1    # "decodedString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "Charset not supported"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static isInGsmAlphabet(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    const/16 v0, 0x60

    if-ne p0, v0, :cond_0

    .line 216
    return v1

    .line 217
    :cond_0
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_1

    .line 219
    return v2

    .line 220
    :cond_1
    const/16 v0, 0x20ac

    if-ne p0, v0, :cond_2

    .line 222
    return v2

    .line 223
    :cond_2
    const/16 v0, 0x400

    if-lt p0, v0, :cond_3

    .line 225
    return v1

    .line 228
    :cond_3
    sparse-switch p0, :sswitch_data_0

    .line 273
    return v1

    .line 270
    :sswitch_0
    return v2

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xbf -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xd1 -> :sswitch_0
        0xd6 -> :sswitch_0
        0xd8 -> :sswitch_0
        0xdc -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe4 -> :sswitch_0
        0xe5 -> :sswitch_0
        0xe6 -> :sswitch_0
        0xe8 -> :sswitch_0
        0xe9 -> :sswitch_0
        0xec -> :sswitch_0
        0xf1 -> :sswitch_0
        0xf2 -> :sswitch_0
        0xf6 -> :sswitch_0
        0xf8 -> :sswitch_0
        0xf9 -> :sswitch_0
        0xfc -> :sswitch_0
        0x393 -> :sswitch_0
        0x394 -> :sswitch_0
        0x398 -> :sswitch_0
        0x39b -> :sswitch_0
        0x39e -> :sswitch_0
        0x3a0 -> :sswitch_0
        0x3a3 -> :sswitch_0
        0x3a6 -> :sswitch_0
        0x3a8 -> :sswitch_0
        0x3a9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static removeRedundantChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s1"    # Ljava/lang/String;

    .prologue
    .line 1175
    move-object v1, p0

    .line 1176
    .local v1, "s2":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1177
    sget-object v2, Lcom/sonyericsson/conversations/util/TextUtil;->sRedundantCharacterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1178
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return-object v1
.end method

.method public static replaceTagWithDrawable(Landroid/content/Context;ILjava/lang/String;Landroid/text/Spannable;I)Landroid/text/Spannable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableResId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "spannable"    # Landroid/text/Spannable;
    .param p4, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 1199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1200
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/2addr v5, v6

    mul-int v4, v5, p4

    .line 1201
    .local v4, "width":I
    invoke-virtual {v0, v7, v7, v4, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1202
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    .local v1, "imageSpan":Landroid/text/style/ImageSpan;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\\Q"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\E"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1205
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1207
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1208
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 1209
    const/16 v7, 0x21

    .line 1208
    invoke-interface {p3, v1, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1212
    :cond_0
    return-object p3
.end method
