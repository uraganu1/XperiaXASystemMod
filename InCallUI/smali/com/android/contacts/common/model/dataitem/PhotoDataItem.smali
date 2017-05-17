.class public Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "PhotoDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getPhoto()[B
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data15"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
