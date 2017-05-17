.class public Lcom/sonymobile/android/vcard/VCardEntry$PostalData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalData"
.end annotation


# static fields
.field private static final ADDR_MAX_DATA_SIZE:I = 0x7


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

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput p8, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mType:I

    .line 518
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    .line 519
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 520
    iput-object p3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 521
    iput-object p4, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 522
    iput-object p5, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 523
    iput-object p6, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 524
    iput-object p7, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 525
    iput-object p9, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 526
    iput-boolean p10, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    .line 527
    iput p11, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mVCardType:I

    .line 528
    return-void
.end method

.method public static constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/sonymobile/android/vcard/VCardEntry$PostalData;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/sonymobile/android/vcard/VCardEntry$PostalData;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x7

    .line 535
    new-array v7, v0, [Ljava/lang/String;

    .line 537
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    .line 538
    if-gt v0, v1, :cond_0

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    .line 548
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    const/4 v0, 0x7

    .line 554
    if-lt v2, v0, :cond_3

    .line 558
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    const/4 v3, 0x2

    aget-object v3, v7, v3

    const/4 v4, 0x3

    aget-object v4, v7, v4

    const/4 v5, 0x4

    aget-object v5, v7, v5

    const/4 v6, 0x5

    aget-object v6, v7, v6

    const/4 v8, 0x6

    aget-object v7, v7, v8

    move v8, p1

    move-object v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v0

    :cond_0
    const/4 v0, 0x7

    move v1, v0

    .line 539
    goto :goto_0

    .line 548
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 549
    aput-object v0, v7, v2

    .line 550
    add-int/lit8 v0, v2, 0x1

    if-ge v0, v1, :cond_2

    move v2, v0

    .line 553
    goto :goto_1

    :cond_2
    move v2, v0

    .line 551
    goto :goto_2

    .line 555
    :cond_3
    add-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    aput-object v1, v7, v2

    move v2, v0

    goto :goto_2
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
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
    .line 565
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    .line 567
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    .line 568
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data2"

    .line 570
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 571
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mType:I

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "data5"

    .line 575
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data6"

    .line 576
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data4"

    .line 577
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data7"

    .line 578
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data8"

    .line 579
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data9"

    .line 580
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data10"

    .line 581
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 583
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-nez v1, :cond_1

    .line 586
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    return-void

    :cond_0
    const-string/jumbo v1, "data3"

    .line 572
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x1

    .line 584
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 638
    if-eq p0, p1, :cond_2

    .line 641
    instance-of v2, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;

    if-eqz v2, :cond_3

    .line 644
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;

    .line 645
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mType:I

    iget v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mType:I

    if-eq v2, v3, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 639
    :cond_2
    return v0

    .line 642
    :cond_3
    return v1

    .line 645
    :cond_4
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mType:I

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 682
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getExtendedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAddress(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x7

    const/4 v2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 595
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v1

    .line 609
    :goto_0
    if-lt v2, v7, :cond_4

    .line 622
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 598
    :cond_0
    aget-object v5, v4, v2

    .line 599
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 597
    :goto_2
    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-gez v2, :cond_0

    goto :goto_1

    .line 600
    :cond_2
    if-eqz v0, :cond_3

    move v0, v1

    .line 605
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 601
    :cond_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 610
    :cond_4
    aget-object v5, v4, v2

    .line 611
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 609
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    :cond_5
    if-eqz v0, :cond_6

    move v0, v1

    .line 617
    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 613
    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    return-object v0
.end method

.method public getPobox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 660
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mType:I

    .line 661
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 662
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-nez v0, :cond_1

    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    const/4 v2, 0x7

    .line 664
    new-array v4, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v3, v4, v2

    .line 666
    array-length v5, v4

    move v2, v1

    :goto_2
    if-lt v2, v5, :cond_2

    .line 669
    return v0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4cf

    .line 662
    goto :goto_1

    .line 666
    :cond_2
    aget-object v3, v4, v2

    .line 667
    mul-int/lit8 v6, v0, 0x1f

    if-nez v3, :cond_3

    move v0, v1

    :goto_3
    add-int v3, v6, v0

    .line 666
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_2

    .line 667
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 627
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    const/16 v1, 0xa

    .line 674
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
