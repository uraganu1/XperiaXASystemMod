.class public Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "StructuredNameDataItem.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 35
    return-void
.end method
