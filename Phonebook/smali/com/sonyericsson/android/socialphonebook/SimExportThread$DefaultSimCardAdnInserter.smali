.class Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;
.super Ljava/lang/Object;
.source "SimExportThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultSimCardAdnInserter"
.end annotation


# static fields
.field protected static final ADN_NUMBER:I = 0x1

.field protected static final ANR_NUMBER:I = 0x2

.field private static final MINIMUM_NUMBER_OF_BYTES_TO_ADD_TYPE:I = 0x3

.field protected static final NAME:Ljava/lang/String; = "tag"

.field protected static final NUMBER:Ljava/lang/String; = "number"

.field protected static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field protected final mContainAdnAccount:Z

.field protected mContext:Landroid/content/Context;

.field private final mIsKoreanRegion:Z

.field protected mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSub:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "subscription"    # I

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mContext:Landroid/content/Context;

    .line 303
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mContext:Landroid/content/Context;

    .line 304
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mResolver:Landroid/content/ContentResolver;

    .line 305
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->containsAdnAccountType(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mContainAdnAccount:Z

    .line 306
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->isKoreanRegion(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mIsKoreanRegion:Z

    .line 307
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mSub:I

    .line 302
    return-void
.end method

.method protected static checkNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_6

    .line 368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 369
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 370
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_1
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_2

    .line 373
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 374
    :cond_2
    const/16 v3, 0x23

    if-ne v0, v3, :cond_3

    .line 375
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 376
    :cond_3
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_4

    .line 377
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 378
    :cond_4
    const/16 v3, 0x4e

    if-ne v0, v3, :cond_5

    .line 379
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 380
    :cond_5
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_0

    .line 381
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 387
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getNumberLength(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;II)I
    .locals 2
    .param p0, "helper"    # Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .param p1, "currentAvailablePbr"    # I
    .param p2, "flag"    # I

    .prologue
    .line 626
    const/16 v0, 0x14

    .line 628
    .local v0, "numberLength":I
    if-eqz p0, :cond_0

    .line 630
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 631
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 632
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAdnNumberLength(I)I

    move-result v0

    .line 639
    :cond_0
    :goto_0
    return v0

    .line 633
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 634
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAnrNumberLength(I)I

    move-result v0

    goto :goto_0
.end method

.method private isKoreanRegion(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    const-string/jumbo v0, "450"

    .line 586
    .local v0, "MCC_KOREAN":Ljava/lang/String;
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mSub:I

    invoke-static {p1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "450"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    const/4 v2, 0x1

    return v2

    .line 591
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static lengthOfInitialSubstringPossibleTo8BitEncode(Ljava/lang/String;I)I
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "bytesAvailable"    # I

    .prologue
    .line 604
    const/4 v3, 0x0

    .line 605
    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 606
    .local v4, "length":I
    const/4 v0, 0x0

    .line 608
    .local v0, "bytesUsed":I
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_2

    if-ge v3, v4, :cond_2

    .line 610
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 611
    .local v2, "gsmValue":I
    add-int/lit8 v0, v0, 0x1

    .line 612
    const/16 v5, 0x1b

    if-eq v2, v5, :cond_1

    .line 613
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    :cond_1
    if-ge v0, p1, :cond_0

    .line 615
    add-int/lit8 v0, v0, 0x1

    .line 616
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    .end local v2    # "gsmValue":I
    :catch_0
    move-exception v1

    .line 622
    :cond_2
    return v3
.end method

.method private prepareOperationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "aContactName"    # Ljava/lang/String;
    .param p2, "aPhoneNumber"    # Ljava/lang/String;
    .param p3, "simSourceId"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 464
    .local v1, "rawContactIndex":I
    const/4 v0, 0x0

    .line 466
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz p3, :cond_1

    .line 467
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 468
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v2, "account_name"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 469
    const-string/jumbo v2, "account_type"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 470
    const-string/jumbo v2, "sourceid"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 471
    const-string/jumbo v2, "aggregation_mode"

    .line 472
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 471
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 473
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    if-eqz p1, :cond_2

    .line 477
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 478
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 479
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 480
    const-string/jumbo v2, "data2"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 481
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 486
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 487
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 488
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 489
    const-string/jumbo v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 490
    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 491
    const-string/jumbo v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 492
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    return-void
.end method

.method private subStringThatFits(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "numberOfBytes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 538
    if-nez p1, :cond_0

    .line 539
    return-object v6

    .line 542
    :cond_0
    if-nez p2, :cond_1

    .line 543
    const-string/jumbo p2, ""

    .line 546
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 548
    .local v1, "originLength":I
    add-int/lit8 v6, p3, -0x1

    div-int/lit8 v5, v6, 0x2

    .line 549
    .local v5, "ucs2encodable":I
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 554
    .local v2, "resultLength":I
    const/4 v6, 0x3

    if-lt p3, v6, :cond_3

    .line 555
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 561
    .local v3, "typeLength":I
    :goto_0
    iget-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mIsKoreanRegion:Z

    if-nez v6, :cond_5

    .line 562
    invoke-static {p1, p3}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->lengthOfInitialSubstringPossibleTo8BitEncode(Ljava/lang/String;I)I

    move-result v0

    .line 565
    .local v0, "length8bit":I
    if-le v2, v0, :cond_4

    .line 566
    add-int v6, v2, v3

    sub-int v4, v5, v6

    .line 571
    .local v4, "typeLengthAdjustment":I
    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 576
    .end local v0    # "length8bit":I
    :goto_2
    if-gez v4, :cond_2

    .line 577
    add-int/2addr v2, v4

    .line 580
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 558
    .end local v3    # "typeLength":I
    .end local v4    # "typeLengthAdjustment":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "typeLength":I
    goto :goto_0

    .line 568
    .restart local v0    # "length8bit":I
    :cond_4
    add-int v6, v0, v3

    sub-int v4, p3, v6

    .restart local v4    # "typeLengthAdjustment":I
    goto :goto_1

    .line 573
    .end local v0    # "length8bit":I
    .end local v4    # "typeLengthAdjustment":I
    :cond_5
    add-int v6, v2, v3

    sub-int v4, v5, v6

    .restart local v4    # "typeLengthAdjustment":I
    goto :goto_2
.end method


# virtual methods
.method protected convertTooLongName(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;I)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "helper"    # Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .param p3, "currentAvailablePbr"    # I

    .prologue
    const/4 v3, 0x0

    .line 646
    if-nez p1, :cond_0

    .line 647
    return-object v3

    .line 651
    :cond_0
    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 652
    return-object v3

    .line 655
    :cond_1
    if-nez p2, :cond_2

    .line 656
    return-object p1

    .line 659
    :cond_2
    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getNameLength(I)I

    move-result v0

    .line 660
    .local v0, "maxNameLength":I
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->containUnicode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 661
    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v0, v2, -0x1

    .line 664
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 665
    .local v1, "nameLenght":I
    if-ge v0, v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_4
    return-object p1
.end method

.method public deleteAllAdn()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 314
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "deleteAllAdn"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mSub:I

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 316
    .local v1, "iccUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 318
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mResolver:Landroid/content/ContentResolver;

    .line 319
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/MTKIccProviderConstantsUtil;->COLUMN_SIM_CONTACT_INFO:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 318
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 320
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 321
    .local v7, "count":I
    const/4 v9, 0x0

    .line 322
    .local v9, "deleteCount":I
    const-wide/16 v10, -0x1

    .line 323
    .local v10, "index":J
    if-gez v7, :cond_1

    .line 339
    if-eqz v8, :cond_0

    .line 340
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_0
    return-void

    .line 326
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 329
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 332
    :cond_2
    if-ne v7, v9, :cond_5

    .line 333
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "deleteAllAdn success!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :goto_1
    if-eqz v8, :cond_3

    .line 340
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_3
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mContainAdnAccount:Z

    if-eqz v0, :cond_4

    .line 345
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 349
    .local v6, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 351
    const-string/jumbo v2, "account_name"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 352
    const-string/jumbo v2, "account_type"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->getAccountType()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    .end local v6    # "builder":Landroid/net/Uri$Builder;
    :cond_4
    return-void

    .line 335
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "deleteAllAdn fail!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteAllAdn count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "delcount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 338
    .end local v7    # "count":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "deleteCount":I
    .end local v10    # "index":J
    :catchall_0
    move-exception v0

    .line 339
    if-eqz v8, :cond_6

    .line 340
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_6
    throw v0
.end method

.method protected getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mSub:I

    packed-switch v0, :pswitch_data_0

    .line 504
    const-string/jumbo v0, "SIM contacts"

    return-object v0

    .line 500
    :pswitch_0
    const-string/jumbo v0, "SIM1 contacts"

    return-object v0

    .line 502
    :pswitch_1
    const-string/jumbo v0, "SIM2 contacts"

    return-object v0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mSub:I

    packed-switch v0, :pswitch_data_0

    .line 515
    const-string/jumbo v0, "com.sonyericsson.adncontacts"

    return-object v0

    .line 511
    :pswitch_0
    const-string/jumbo v0, "com.sonyericsson.adnsub1contacts"

    return-object v0

    .line 513
    :pswitch_1
    const-string/jumbo v0, "com.sonyericsson.adnsub2contacts"

    return-object v0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertAdn(Landroid/os/Bundle;I)Z
    .locals 15
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "availablePbr"    # I

    .prologue
    .line 397
    const-string/jumbo v12, "tag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v12, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 399
    .local v11, "tag":Ljava/lang/String;
    const/4 v9, 0x0

    .line 400
    .local v9, "nameWithTag":Ljava/lang/String;
    const-string/jumbo v12, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 402
    .local v10, "number":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 403
    const-string/jumbo v11, ""

    .line 406
    :cond_0
    const/4 v2, 0x0

    .line 407
    .local v2, "alphaTagSize":I
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mContext:Landroid/content/Context;

    iget v13, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mSub:I

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZI)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v5

    .line 410
    .local v5, "helper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    move/from16 v0, p2

    invoke-virtual {p0, v8, v5, v0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->convertTooLongName(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;I)Ljava/lang/String;

    move-result-object v8

    .line 411
    if-eqz v8, :cond_2

    .line 412
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getNameLength(I)I

    move-result v2

    .line 413
    const/4 v7, 0x1

    .line 414
    .local v7, "isSimcardExtranameEnabled":Z
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_1

    .line 415
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v3

    .line 416
    .local v3, "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isSimcardExtranameEnabled()Z

    move-result v7

    .line 420
    .end local v3    # "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    .end local v7    # "isSimcardExtranameEnabled":Z
    :cond_1
    if-eqz v7, :cond_3

    .line 421
    invoke-direct {p0, v8, v11, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->subStringThatFits(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, "nameWithTag":Ljava/lang/String;
    :goto_0
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->trimIncompleteSurrogatePairs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 429
    .end local v9    # "nameWithTag":Ljava/lang/String;
    :cond_2
    invoke-static {v10}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->checkNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 430
    const/4 v12, 0x1

    move/from16 v0, p2

    invoke-static {v5, v0, v12}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->getNumberLength(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;II)I

    move-result v1

    .line 432
    .local v1, "adnNumLength":I
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v1, :cond_4

    .line 435
    const/4 v12, 0x0

    return v12

    .line 423
    .end local v1    # "adnNumLength":I
    .local v9, "nameWithTag":Ljava/lang/String;
    :cond_3
    move-object v9, v8

    .local v9, "nameWithTag":Ljava/lang/String;
    goto :goto_0

    .line 438
    .end local v9    # "nameWithTag":Ljava/lang/String;
    .restart local v1    # "adnNumLength":I
    :cond_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 439
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "tag"

    invoke-virtual {v4, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 443
    const-string/jumbo v12, "number"

    invoke-virtual {v4, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_5
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mResolver:Landroid/content/ContentResolver;

    iget v13, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mSub:I

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(I)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 448
    .local v6, "insertedUri":Landroid/net/Uri;
    if-eqz v6, :cond_6

    iget-boolean v12, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mContainAdnAccount:Z

    if-eqz v12, :cond_6

    .line 449
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v8, v10, v12}, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->prepareOperationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_6
    if-eqz v6, :cond_7

    const/4 v12, 0x1

    :goto_1
    return v12

    :cond_7
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public insertAdnContactToDB()V
    .locals 6

    .prologue
    .line 520
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 521
    :cond_0
    return-void

    .line 525
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "com.android.contacts"

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 519
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 528
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 529
    .local v0, "e":Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 533
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 526
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v1

    .line 527
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 532
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 533
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportThread$DefaultSimCardAdnInserter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 532
    throw v3
.end method
