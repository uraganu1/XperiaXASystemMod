.class public Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;
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
    name = "OrganizationData"
.end annotation


# instance fields
.field private mDepartmentName:Ljava/lang/String;

.field private mIsPrimary:Z

.field private mOrganizationName:Ljava/lang/String;

.field private final mPhoneticName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput p5, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mType:I

    .line 741
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    .line 742
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    .line 743
    iput-object p3, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    .line 744
    iput-object p4, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    .line 745
    iput-boolean p6, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    .line 746
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;Z)Z
    .locals 0

    .prologue
    .line 726
    iput-boolean p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object p1
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
    .line 774
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id"

    .line 776
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    .line 777
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v1, "data2"

    .line 778
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 779
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 782
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 785
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 788
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 791
    :goto_3
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-nez v1, :cond_4

    .line 794
    :goto_4
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    return-void

    :cond_0
    const-string/jumbo v1, "data1"

    .line 780
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "data5"

    .line 783
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "data4"

    .line 786
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "data8"

    .line 789
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x1

    .line 792
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 805
    if-eq p0, p1, :cond_2

    .line 808
    instance-of v2, p1, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;

    if-eqz v2, :cond_3

    .line 811
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;

    .line 812
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mType:I

    iget v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mType:I

    if-eq v2, v3, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 806
    :cond_2
    return v0

    .line 809
    :cond_3
    return v1

    .line 812
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public getDepartmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 838
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFormattedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 768
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 755
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 758
    :goto_3
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, ", "

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 762
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_4

    .line 765
    :goto_4
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v1, ", "

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public getOrganizationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 821
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mType:I

    .line 822
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 823
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 824
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 825
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-nez v0, :cond_3

    const/16 v0, 0x4d5

    :goto_3
    add-int/2addr v0, v1

    .line 826
    return v0

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 824
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/16 v0, 0x4cf

    .line 825
    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 799
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "type: %d, organization: %s, department: %s, title: %s, isPrimary: %s"

    const/4 v1, 0x5

    .line 831
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
