.class public Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "PhotoDataItem.java"


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
.method public getPhoto()[B
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data15"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPhotoFileId()J
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data14"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
