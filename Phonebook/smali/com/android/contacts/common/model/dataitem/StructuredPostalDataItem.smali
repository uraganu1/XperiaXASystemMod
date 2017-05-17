.class public Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "StructuredPostalDataItem.java"


# direct methods
.method constructor <init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "rawContact"    # Lcom/android/contacts/common/model/RawContact;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data7"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data10"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPOBox()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data9"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data8"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
