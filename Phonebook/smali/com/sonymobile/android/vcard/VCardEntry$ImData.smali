.class public Lcom/sonymobile/android/vcard/VCardEntry$ImData;
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
    name = "ImData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mCustomProtocol:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mProtocol:I

.field private final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mProtocol:I

    .line 876
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    .line 877
    iput p4, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mType:I

    .line 878
    iput-object p3, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    .line 879
    iput-boolean p5, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    .line 880
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
    .line 885
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    .line 887
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/im"

    .line 888
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data2"

    .line 889
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data5"

    .line 890
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data1"

    .line 891
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 892
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mProtocol:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 895
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-nez v1, :cond_1

    .line 898
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    return-void

    :cond_0
    const-string/jumbo v1, "data6"

    .line 893
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x1

    .line 896
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

    .line 908
    if-eq p0, p1, :cond_2

    .line 911
    instance-of v2, p1, Lcom/sonymobile/android/vcard/VCardEntry$ImData;

    if-eqz v2, :cond_3

    .line 914
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$ImData;

    .line 915
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mType:I

    iget v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mType:I

    if-eq v2, v3, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 909
    :cond_2
    return v0

    .line 912
    :cond_3
    return v1

    .line 915
    :cond_4
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mProtocol:I

    iget v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mProtocol:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 941
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mProtocol:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 924
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mType:I

    .line 925
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mProtocol:I

    add-int/2addr v0, v2

    .line 926
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 927
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 928
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-nez v0, :cond_2

    const/16 v0, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    .line 929
    return v0

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 927
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x4cf

    .line 928
    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"

    const/4 v1, 0x5

    .line 934
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
