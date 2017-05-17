.class public Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;
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
    name = "PhoneData"
.end annotation


# instance fields
.field private mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mNumber:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    .line 324
    iput p2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mType:I

    .line 325
    iput-object p3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    .line 326
    iput-boolean p4, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    .line 327
    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

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
    .line 332
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    .line 334
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data2"

    .line 337
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 338
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mType:I

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "data1"

    .line 341
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 342
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-nez v1, :cond_1

    .line 345
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    return-void

    :cond_0
    const-string/jumbo v1, "data3"

    .line 339
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x1

    .line 343
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

    .line 355
    if-eq p0, p1, :cond_2

    .line 358
    instance-of v2, p1, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;

    if-eqz v2, :cond_3

    .line 361
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;

    .line 362
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mType:I

    iget v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mType:I

    if-eq v2, v3, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 356
    :cond_2
    return v0

    .line 359
    :cond_3
    return v1

    .line 362
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 370
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mType:I

    .line 371
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 372
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 373
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-nez v0, :cond_2

    const/16 v0, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    .line 374
    return v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x4cf

    .line 373
    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    .line 379
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
