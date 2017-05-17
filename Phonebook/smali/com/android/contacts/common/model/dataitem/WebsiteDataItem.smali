.class public Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "WebsiteDataItem.java"


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
.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
