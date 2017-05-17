.class public Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;
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
    name = "PhotoData"
.end annotation


# instance fields
.field private final mBytes:[B

.field private final mFormat:Ljava/lang/String;

.field private mHashCode:Ljava/lang/Integer;

.field private final mIsPrimary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZ)V
    .locals 1

    .prologue
    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    .line 981
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    .line 982
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    .line 983
    iput-boolean p3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    .line 984
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
    .line 989
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    .line 991
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    .line 992
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data15"

    .line 993
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 994
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-nez v1, :cond_0

    .line 997
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    return-void

    :cond_0
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x1

    .line 995
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1007
    if-eq p0, p1, :cond_2

    .line 1010
    instance-of v2, p1, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;

    if-eqz v2, :cond_3

    .line 1013
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;

    .line 1014
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 1008
    :cond_2
    return v0

    .line 1011
    :cond_3
    return v1

    .line 1014
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    return-object v0
.end method

.method public final getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1046
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1021
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1026
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1027
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-nez v2, :cond_3

    .line 1033
    :cond_0
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-nez v0, :cond_4

    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    .line 1034
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    .line 1035
    return v0

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1028
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_0

    aget-byte v4, v2, v1

    int-to-byte v4, v4

    .line 1029
    add-int/2addr v0, v4

    .line 1028
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0x4cf

    .line 1033
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1002
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v1, v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "format: %s: size: %d, isPrimary: %s"

    const/4 v1, 0x3

    .line 1040
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
