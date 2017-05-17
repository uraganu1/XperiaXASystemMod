.class public Lcom/sonymobile/android/vcard/VCardEntry$SipData;
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
    name = "SipData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sip:"

    .line 1350
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    .line 1355
    :goto_0
    iput p2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mType:I

    .line 1356
    iput-object p3, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    .line 1357
    iput-boolean p4, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    .line 1358
    return-void

    :cond_0
    const/4 v0, 0x4

    .line 1351
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    goto :goto_0
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
    .line 1363
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    .line 1365
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/sip_address"

    .line 1366
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data1"

    .line 1367
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data2"

    .line 1368
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1369
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mType:I

    if-eqz v1, :cond_0

    .line 1372
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-nez v1, :cond_1

    .line 1375
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1376
    return-void

    :cond_0
    const-string/jumbo v1, "data3"

    .line 1370
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "is_primary"

    .line 1373
    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1385
    if-eq p0, p1, :cond_2

    .line 1388
    instance-of v2, p1, Lcom/sonymobile/android/vcard/VCardEntry$SipData;

    if-eqz v2, :cond_3

    .line 1391
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$SipData;

    .line 1392
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mType:I

    iget v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mType:I

    if-eq v2, v3, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 1386
    :cond_2
    return v0

    .line 1389
    :cond_3
    return v1

    .line 1392
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1414
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1400
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mType:I

    .line 1401
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 1402
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 1403
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-nez v0, :cond_2

    const/16 v0, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    .line 1404
    return v0

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1402
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x4cf

    .line 1403
    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
