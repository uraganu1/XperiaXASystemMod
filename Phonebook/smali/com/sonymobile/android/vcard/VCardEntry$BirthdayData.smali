.class public Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;
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
    name = "BirthdayData"
.end annotation


# instance fields
.field private final mBirthday:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    .line 1233
    return-void
.end method

.method static synthetic access$1800(Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

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
    .line 1238
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    .line 1240
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    .line 1241
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data1"

    .line 1242
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data2"

    const/4 v2, 0x3

    .line 1243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1244
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1254
    if-eq p0, p1, :cond_0

    .line 1257
    instance-of v0, p1, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_1

    .line 1260
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

    .line 1261
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 1255
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1258
    :cond_1
    return v1
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1276
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "birthday: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
