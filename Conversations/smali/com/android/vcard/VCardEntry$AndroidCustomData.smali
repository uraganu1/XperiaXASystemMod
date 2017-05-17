.class public Lcom/android/vcard/VCardEntry$AndroidCustomData;
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
    .param p1, "mimeType"    # Ljava/lang/String;
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
    .line 1449
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    .line 1451
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    .line 1449
    return-void
.end method

.method public static constructAndroidCustomData(Ljava/util/List;)Lcom/android/vcard/VCardEntry$AndroidCustomData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1458
    if-nez p0, :cond_0

    .line 1459
    const/4 v2, 0x0

    .line 1460
    .local v2, "mimeType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1471
    .end local v2    # "mimeType":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    invoke-direct {v3, v2, v0}, Lcom/android/vcard/VCardEntry$AndroidCustomData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v3

    .line 1461
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1462
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1463
    .local v2, "mimeType":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1465
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1467
    .local v1, "max":I
    :goto_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1468
    .restart local v2    # "mimeType":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1466
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "max":I
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x10

    .restart local v1    # "max":I
    goto :goto_1
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 5
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
    .line 1478
    .local p1, "operationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1477
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1479
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v3, "raw_contact_id"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1480
    const-string/jumbo v3, "mimetype"

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1481
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1482
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1483
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1485
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

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1488
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1498
    if-ne p0, p1, :cond_0

    .line 1499
    return v5

    .line 1501
    :cond_0
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    if-nez v3, :cond_1

    .line 1502
    return v6

    :cond_1
    move-object v0, p1

    .line 1504
    check-cast v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    .line 1505
    .local v0, "data":Lcom/android/vcard/VCardEntry$AndroidCustomData;
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1506
    return v6

    .line 1508
    :cond_2
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v3, :cond_4

    .line 1509
    iget-object v3, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v3, :cond_3

    move v3, v5

    :goto_0
    return v3

    :cond_3
    move v3, v6

    goto :goto_0

    .line 1511
    :cond_4
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1512
    .local v2, "size":I
    iget-object v3, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 1513
    return v6

    .line 1515
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_7

    .line 1516
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1517
    return v6

    .line 1515
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1520
    :cond_7
    return v5
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1545
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1526
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 1527
    .local v2, "hash":I
    :goto_0
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1528
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1529
    .local v0, "data":Ljava/lang/String;
    mul-int/lit8 v4, v2, 0x1f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int v2, v4, v3

    goto :goto_1

    .line 1526
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "data$iterator":Ljava/util/Iterator;
    .end local v2    # "hash":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "hash":I
    goto :goto_0

    .line 1529
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v1    # "data$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 1532
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "data$iterator":Ljava/util/Iterator;
    :cond_2
    return v2
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1493
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1538
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "android-custom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1539
    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
