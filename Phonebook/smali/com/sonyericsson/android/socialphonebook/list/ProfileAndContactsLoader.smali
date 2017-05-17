.class public Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;
.super Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;
.source "ProfileAndContactsLoader.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadProfile:Z

.field private mSortByPhonetic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method configureSorter(Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;)V
    .locals 2
    .param p1, "sorter"    # Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->configureSorter(Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->setContactIdColumn(I)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->setSortColumn(I)V

    .line 95
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->mSortByPhonetic:Z

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->setSortByPhonetic(Z)V

    .line 85
    return-void

    .line 91
    :cond_0
    const-string/jumbo v0, "sort_key"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/16 v0, 0xa

    .line 91
    :goto_1
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->setSortColumn(I)V

    goto :goto_0

    .line 93
    :cond_1
    const/16 v0, 0xb

    goto :goto_1
.end method

.method public getSortByPhonetic()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->mSortByPhonetic:Z

    return v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "cursors":Ljava/util/List;, "Ljava/util/List<Landroid/database/Cursor;>;"
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->mLoadProfile:Z

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->loadProfile()Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 74
    .local v0, "contactsCursor":Landroid/database/Cursor;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader$1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    invoke-direct {v3, p0, v2, v0}, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader$1;-><init>(Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v3
.end method

.method public setLoadProfile(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->mLoadProfile:Z

    .line 53
    return-void
.end method

.method public setSortByPhonetic(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->mSortByPhonetic:Z

    .line 61
    return-void
.end method
