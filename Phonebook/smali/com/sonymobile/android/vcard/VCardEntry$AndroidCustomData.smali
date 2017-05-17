.class public Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;
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
    name = "AndroidCustomData"
.end annotation


# instance fields
.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    .line 1436
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    .line 1437
    return-void
.end method

.method public static constructAndroidCustomData(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x10

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1443
    if-eqz p0, :cond_0

    .line 1446
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 1450
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_2

    :goto_0
    move v1, v0

    .line 1452
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    .line 1453
    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 1456
    :goto_1
    new-instance v2, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;

    invoke-direct {v2, v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_0
    move-object v0, v1

    .line 1445
    goto :goto_1

    .line 1447
    :cond_1
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 1448
    goto :goto_1

    .line 1450
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 5
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
    const/4 v0, 0x0

    .line 1462
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v1, "raw_contact_id"

    .line 1464
    invoke-virtual {v2, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    .line 1465
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move v1, v0

    .line 1466
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 1473
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    return-void

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1466
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1470
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1483
    if-eq p0, p1, :cond_0

    .line 1486
    instance-of v0, p1, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;

    if-eqz v0, :cond_1

    .line 1489
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;

    .line 1490
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1493
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1496
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1497
    iget-object v0, p1, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v5, v0, :cond_5

    move v4, v2

    .line 1500
    :goto_0
    if-lt v4, v5, :cond_6

    .line 1505
    return v3

    .line 1484
    :cond_0
    return v3

    .line 1487
    :cond_1
    return v2

    .line 1491
    :cond_2
    return v2

    .line 1494
    :cond_3
    iget-object v0, p1, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    return v0

    :cond_4
    move v0, v3

    goto :goto_1

    .line 1498
    :cond_5
    return v2

    .line 1501
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1500
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1502
    :cond_7
    return v2
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1530
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1511
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 1512
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1517
    :goto_1
    return v0

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1513
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1514
    mul-int/lit8 v2, v2, 0x1f

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    move v2, v0

    .line 1515
    goto :goto_2

    .line 1514
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1478
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android-custom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method
