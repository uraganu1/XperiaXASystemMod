.class public Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;
.super Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;
.source "DataPickLoader.java"


# instance fields
.field private mIdColumnIndex:I

.field private mLoadProfile:Z

.field private mSortByPhonetic:Z

.field private mSortColumnIndex:I

.field private mWrapCursor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;-><init>(Landroid/content/Context;)V

    .line 20
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mIdColumnIndex:I

    .line 21
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mSortColumnIndex:I

    .line 23
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mSortByPhonetic:Z

    .line 24
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mLoadProfile:Z

    .line 31
    return-void
.end method


# virtual methods
.method configureSorter(Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;)V
    .locals 1
    .param p1, "sorter"    # Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->configureSorter(Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;)V

    .line 67
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mIdColumnIndex:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->setContactIdColumn(I)V

    .line 68
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mSortColumnIndex:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->setSortColumn(I)V

    .line 69
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mSortByPhonetic:Z

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->setSortByPhonetic(Z)V

    .line 65
    return-void
.end method

.method protected decorateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "source"    # Landroid/database/Cursor;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mWrapCursor:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mIdColumnIndex:I

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;-><init>(Landroid/database/Cursor;I)V

    return-object v0

    .line 60
    :cond_0
    return-object p1
.end method

.method public getSortByPhonetic()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mSortByPhonetic:Z

    return v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 74
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mLoadProfile:Z

    if-eqz v2, :cond_0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "cursors":Ljava/util/List;, "Ljava/util/List<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->loadProfile()Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 80
    .local v0, "contactsCursor":Landroid/database/Cursor;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader$1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    invoke-direct {v3, p0, v2, v0}, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader$1;-><init>(Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v3

    .line 89
    .end local v0    # "contactsCursor":Landroid/database/Cursor;
    .end local v1    # "cursors":Ljava/util/List;, "Ljava/util/List<Landroid/database/Cursor;>;"
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public setIdColumnIndex(I)V
    .locals 0
    .param p1, "columnIndex"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mIdColumnIndex:I

    .line 35
    return-void
.end method

.method public setLoadProfile(Z)V
    .locals 0
    .param p1, "mLoadProfile"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mLoadProfile:Z

    .line 27
    return-void
.end method

.method public setSortByPhonetic(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mSortByPhonetic:Z

    .line 51
    return-void
.end method

.method public setSortColumnIndex(I)V
    .locals 0
    .param p1, "columnIndex"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mSortColumnIndex:I

    .line 39
    return-void
.end method

.method public setWrapCursor(Z)V
    .locals 0
    .param p1, "wrap"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->mWrapCursor:Z

    .line 43
    return-void
.end method
