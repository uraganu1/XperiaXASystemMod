.class public Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "StructuredNameDataItem.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "rawContact"    # Lcom/android/contacts/common/model/RawContact;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullNameStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data10"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data9"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data7"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data8"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticNameStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data11"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setPhoneticFamilyName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data9"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setPhoneticGivenName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data7"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public setPhoneticMiddleName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data8"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
