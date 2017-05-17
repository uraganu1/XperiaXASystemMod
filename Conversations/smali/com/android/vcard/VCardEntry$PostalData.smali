.class public Lcom/android/vcard/VCardEntry$PostalData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalData"
.end annotation


# instance fields
.field private final mCountry:Ljava/lang/String;

.field private final mExtendedAddress:Ljava/lang/String;

.field private mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mLocalty:Ljava/lang/String;

.field private final mPobox:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mRegion:Ljava/lang/String;

.field private final mStreet:Ljava/lang/String;

.field private final mType:I

.field private mVCardType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0
    .param p1, "pobox"    # Ljava/lang/String;
    .param p2, "extendedAddress"    # Ljava/lang/String;
    .param p3, "street"    # Ljava/lang/String;
    .param p4, "localty"    # Ljava/lang/String;
    .param p5, "region"    # Ljava/lang/String;
    .param p6, "postalCode"    # Ljava/lang/String;
    .param p7, "country"    # Ljava/lang/String;
    .param p8, "type"    # I
    .param p9, "label"    # Ljava/lang/String;
    .param p10, "isPrimary"    # Z
    .param p11, "vcardType"    # I

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput p8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 518
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    .line 519
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 520
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 521
    iput-object p4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 522
    iput-object p5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 523
    iput-object p6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 524
    iput-object p7, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 525
    iput-object p9, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 526
    iput-boolean p10, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    .line 527
    iput p11, p0, Lcom/android/vcard/VCardEntry$PostalData;->mVCardType:I

    .line 516
    return-void
.end method

.method public static constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;
    .locals 20
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "isPrimary"    # Z
    .param p4, "vcardType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/android/vcard/VCardEntry$PostalData;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "propValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 537
    .local v16, "dataArray":[Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v19

    .line 538
    .local v19, "size":I
    const/4 v2, 0x7

    move/from16 v0, v19

    if-le v0, v2, :cond_0

    .line 539
    const/16 v19, 0x7

    .line 547
    :cond_0
    const/16 v17, 0x0

    .line 548
    .local v17, "i":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "addressElement$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 549
    .local v14, "addressElement":Ljava/lang/String;
    aput-object v14, v16, v17

    .line 550
    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    move/from16 v18, v17

    .line 554
    .end local v14    # "addressElement":Ljava/lang/String;
    .end local v17    # "i":I
    .local v18, "i":I
    :goto_0
    const/4 v2, 0x7

    move/from16 v0, v18

    if-ge v0, v2, :cond_3

    .line 555
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "i":I
    .restart local v17    # "i":I
    const/4 v2, 0x0

    aput-object v2, v16, v18

    :cond_2
    move/from16 v18, v17

    .end local v17    # "i":I
    .restart local v18    # "i":I
    goto :goto_0

    .line 558
    :cond_3
    new-instance v2, Lcom/android/vcard/VCardEntry$PostalData;

    const/4 v3, 0x0

    aget-object v3, v16, v3

    const/4 v4, 0x1

    aget-object v4, v16, v4

    const/4 v5, 0x2

    aget-object v5, v16, v5

    const/4 v6, 0x3

    aget-object v6, v16, v6

    .line 559
    const/4 v7, 0x4

    aget-object v7, v16, v7

    const/4 v8, 0x5

    aget-object v8, v16, v8

    const/4 v9, 0x6

    aget-object v9, v16, v9

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 558
    invoke-direct/range {v2 .. v13}, Lcom/android/vcard/VCardEntry$PostalData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v2
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
    .param p2, "backReferenceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, "operationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 565
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 567
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 568
    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 570
    const-string/jumbo v1, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 571
    iget v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-nez v1, :cond_0

    .line 572
    const-string/jumbo v1, "data3"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 589
    :cond_0
    const-string/jumbo v1, "data5"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 590
    const-string/jumbo v1, "data6"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 591
    const-string/jumbo v1, "data4"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 592
    const-string/jumbo v1, "data7"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 593
    const-string/jumbo v1, "data8"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 594
    const-string/jumbo v1, "data9"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 595
    const-string/jumbo v1, "data10"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 598
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz v1, :cond_1

    .line 599
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 601
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 653
    if-ne p0, p1, :cond_0

    .line 654
    const/4 v1, 0x1

    return v1

    .line 656
    :cond_0
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$PostalData;

    if-nez v2, :cond_1

    .line 657
    return v1

    :cond_1
    move-object v0, p1

    .line 659
    check-cast v0, Lcom/android/vcard/VCardEntry$PostalData;

    .line 660
    .local v0, "postalData":Lcom/android/vcard/VCardEntry$PostalData;
    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    iget v3, v0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-ne v2, v3, :cond_3

    .line 661
    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 662
    iget-object v3, v0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 661
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 660
    if-eqz v2, :cond_3

    .line 663
    :cond_2
    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    iget-boolean v3, v0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-ne v2, v3, :cond_3

    .line 664
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 660
    if-eqz v2, :cond_3

    .line 665
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 660
    if-eqz v2, :cond_3

    .line 666
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 660
    if-eqz v2, :cond_3

    .line 667
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 660
    if-eqz v2, :cond_3

    .line 668
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 660
    if-eqz v2, :cond_3

    .line 669
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 660
    if-eqz v2, :cond_3

    .line 670
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 660
    :cond_3
    return v1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 697
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getExtendedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAddress(I)Ljava/lang/String;
    .locals 9
    .param p1, "vcardType"    # I

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 607
    .local v3, "empty":Z
    new-array v2, v7, [Ljava/lang/String;

    .line 608
    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v5, v2, v6

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v2, v6

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v5, v2, v6

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v5, v2, v6

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    const/4 v6, 0x5

    aput-object v5, v2, v6

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    const/4 v6, 0x6

    aput-object v5, v2, v6

    .line 610
    .local v2, "dataArray":[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 612
    const/4 v4, 0x6

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_5

    .line 613
    aget-object v0, v2, v4

    .line 614
    .local v0, "addressPart":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 615
    if-nez v3, :cond_1

    .line 616
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 618
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 624
    .end local v0    # "addressPart":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v7, :cond_5

    .line 625
    aget-object v0, v2, v4

    .line 626
    .restart local v0    # "addressPart":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 627
    if-nez v3, :cond_4

    .line 628
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 630
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 637
    .end local v0    # "addressPart":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getLocalty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    return-object v0
.end method

.method public getPobox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 675
    iget v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 676
    .local v0, "hash":I
    mul-int/lit8 v5, v0, 0x1f

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int v0, v5, v3

    .line 677
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    :goto_1
    add-int v0, v5, v3

    .line 679
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 680
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    const/4 v5, 0x5

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v3, v2, v5

    .line 681
    .local v2, "hashTargets":[Ljava/lang/String;
    array-length v6, v2

    move v5, v4

    :goto_2
    if-ge v5, v6, :cond_3

    aget-object v1, v2, v5

    .line 682
    .local v1, "hashTarget":Ljava/lang/String;
    mul-int/lit8 v7, v0, 0x1f

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int v0, v7, v3

    .line 681
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    .end local v1    # "hashTarget":Ljava/lang/String;
    .end local v2    # "hashTargets":[Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 676
    goto :goto_0

    .line 677
    :cond_1
    const/16 v3, 0x4d5

    goto :goto_1

    .restart local v1    # "hashTarget":Ljava/lang/String;
    .restart local v2    # "hashTargets":[Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 682
    goto :goto_3

    .line 684
    .end local v1    # "hashTarget":Ljava/lang/String;
    :cond_3
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 642
    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 642
    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 642
    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 642
    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 642
    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 642
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 689
    const-string/jumbo v0, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    .line 691
    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 692
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 689
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
