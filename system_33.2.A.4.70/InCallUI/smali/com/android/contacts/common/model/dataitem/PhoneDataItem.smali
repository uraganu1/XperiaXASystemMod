.class public Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "PhoneDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 35
    return-void
.end method


# virtual methods
.method public computeFormattedPhoneNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v1, v2, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "formattedPhoneNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v3, "formattedPhoneNumber"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v0    # "formattedPhoneNumber":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
