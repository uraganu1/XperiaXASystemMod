.class public Lcom/android/vcard/VCardEntry$PhotoData;
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
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "photoBytes"    # [B
    .param p3, "isPrimary"    # Z

    .prologue
    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    .line 996
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    .line 997
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    .line 998
    iput-boolean p3, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    .line 995
    return-void
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
    .line 1005
    .local p1, "operationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1004
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1006
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1007
    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1008
    const-string/jumbo v1, "data15"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1009
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-eqz v1, :cond_0

    .line 1010
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1012
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1022
    if-ne p0, p1, :cond_0

    .line 1023
    return v1

    .line 1025
    :cond_0
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$PhotoData;

    if-nez v3, :cond_1

    .line 1026
    return v2

    :cond_1
    move-object v0, p1

    .line 1028
    check-cast v0, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 1029
    .local v0, "photoData":Lcom/android/vcard/VCardEntry$PhotoData;
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1030
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 1029
    if-eqz v3, :cond_3

    .line 1031
    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-ne v3, v4, :cond_2

    .line 1029
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1031
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1029
    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    return-object v0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1061
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1036
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1037
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 1040
    :cond_0
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1041
    .local v1, "hash":I
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 1042
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-eqz v2, :cond_2

    .line 1043
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-byte v0, v3, v2

    .line 1044
    .local v0, "b":B
    add-int/2addr v1, v0

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1040
    .end local v0    # "b":B
    .end local v1    # "hash":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hash":I
    goto :goto_0

    .line 1048
    :cond_2
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    :goto_2
    add-int v1, v3, v2

    .line 1049
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    .line 1050
    return v1

    .line 1048
    :cond_3
    const/16 v2, 0x4d5

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1017
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1055
    const-string/jumbo v0, "format: %s: size: %d, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1056
    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1055
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
