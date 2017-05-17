.class public Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem;
.super Ljava/lang/Object;
.source "PrimarySettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;,
        Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDataItemToList(Ljava/util/List;Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
            ">;",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;>;"
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mMime:Ljava/lang/String;

    .line 101
    .local v0, "mime":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mPrimaryData:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v0    # "mime":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static parseDataItems(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    .line 112
    .local v0, "dataItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;-><init>(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;)V

    .line 113
    .local v2, "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    iget v4, v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 114
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v0    # "dataItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    .end local v2    # "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    :cond_1
    return-object v3
.end method
