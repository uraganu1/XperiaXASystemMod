.class public Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;
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
    name = "AnniversaryData"
.end annotation


# instance fields
.field private final mAnniversary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    .line 1289
    return-void
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
    .line 1294
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    .line 1296
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    .line 1297
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data1"

    .line 1298
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    .line 1299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1300
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1310
    if-eq p0, p1, :cond_0

    .line 1313
    instance-of v0, p1, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;

    if-eqz v0, :cond_1

    .line 1316
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;

    .line 1317
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 1311
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1314
    :cond_1
    return v1
.end method

.method public getAnniversary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1332
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "anniversary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
