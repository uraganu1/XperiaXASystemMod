.class public Lcom/sonymobile/android/vcard/VCardEntry$EmailData;
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
    name = "EmailData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput p2, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mType:I

    .line 414
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    .line 415
    iput-object p3, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    .line 416
    iput-boolean p4, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    .line 417
    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/android/vcard/VCardEntry$EmailData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    return-object v0
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
    .line 422
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    .line 424
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    .line 425
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data2"

    .line 427
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 428
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mType:I

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "data1"

    .line 431
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 432
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    if-nez v1, :cond_1

    .line 435
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    return-void

    :cond_0
    const-string/jumbo v1, "data3"

    .line 429
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x1

    .line 433
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

    .line 445
    if-eq p0, p1, :cond_2

    .line 448
    instance-of v2, p1, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;

    if-eqz v2, :cond_3

    .line 451
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;

    .line 452
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mType:I

    iget v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mType:I

    if-eq v2, v3, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 446
    :cond_2
    return v0

    .line 449
    :cond_3
    return v1

    .line 452
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 460
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mType:I

    .line 461
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 462
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 463
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    if-nez v0, :cond_2

    const/16 v0, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    .line 464
    return v0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x4cf

    .line 463
    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    .line 469
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
