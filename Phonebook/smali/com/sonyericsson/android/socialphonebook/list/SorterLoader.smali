.class public abstract Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;
.super Landroid/content/CursorLoader;
.source "SorterLoader.java"


# static fields
.field public static final EXTRA_KEY_CONTACTS_INDEXER:Ljava/lang/String; = "key_contacts_indexer"


# instance fields
.field private mFilteringColumn:Ljava/lang/String;

.field private mFilteringPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderOn:Z

.field private mProfileExist:Z

.field private mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;

    .line 35
    return-void
.end method


# virtual methods
.method configureSorter(Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;)V
    .locals 1
    .param p1, "sorter"    # Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mProfileExist:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->setInitialPosition(I)V

    .line 91
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected decorateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p1, "source"    # Landroid/database/Cursor;

    .prologue
    .line 96
    return-object p1
.end method

.method public getHeaderOn()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mHeaderOn:Z

    return v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 52
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    .line 54
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mFilteringPredicate:Lcom/google/common/base/Predicate;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 55
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mFilteringPredicate:Lcom/google/common/base/Predicate;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mFilteringColumn:Ljava/lang/String;

    invoke-direct {v2, v1, v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;-><init>(Landroid/database/Cursor;Lcom/google/common/base/Predicate;Ljava/lang/String;)V

    .end local v1    # "cursor":Landroid/database/Cursor;
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v1, v2

    .line 58
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->configureSorter(Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;)V

    .line 60
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->decorateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->getSortedCursor(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;

    move-result-object v3

    .line 62
    .local v3, "sortedCursor":Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "key_contacts_indexer"

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-object v3
.end method

.method protected loadProfile()Landroid/database/MatrixCursor;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->loadProfile(Landroid/content/Context;Z)V

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mProfileExist:Z

    .line 114
    :try_start_0
    new-instance v8, Landroid/database/MatrixCursor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->getProjection()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 115
    .local v8, "matrix":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->getProjection()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    .line 116
    .local v9, "row":[Ljava/lang/Object;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_0

    .line 118
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 117
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v7    # "i":I
    :cond_1
    if-eqz v6, :cond_2

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_2
    return-object v8

    .line 123
    .end local v8    # "matrix":Landroid/database/MatrixCursor;
    .end local v9    # "row":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 124
    if-eqz v6, :cond_3

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_3
    throw v0
.end method

.method public setFiltering(Lcom/google/common/base/Predicate;Ljava/lang/String;)V
    .locals 2
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "filteringPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    const-string/jumbo v0, "Parameters may not be null or empty strings."

    .line 84
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mFilteringPredicate:Lcom/google/common/base/Predicate;

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mFilteringColumn:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setHeaderOn(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mHeaderOn:Z

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter2;->setHeaderOn(Z)V

    .line 40
    return-void
.end method
