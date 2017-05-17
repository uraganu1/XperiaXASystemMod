.class public Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;
.super Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;
.source "UnsavedCallLogCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnsavedCallLogCursor"


# instance fields
.field private mKey:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

.field private mSortIndexTable:[I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "key"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 29
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SearchKey is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mKey:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->sort()V

    .line 26
    return-void
.end method

.method private sort()V
    .locals 9

    .prologue
    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 48
    .local v0, "firstMatchArray":Landroid/util/SparseIntArray;
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 49
    .local v2, "middleMatchArray":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .line 50
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->getCount()I

    move-result v5

    .line 52
    .local v5, "size":I
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mSortIndexTable:[I

    .line 53
    if-nez v5, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mCursor:Landroid/database/Cursor;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 58
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 59
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mCursor:Landroid/database/Cursor;

    .line 60
    const/4 v7, 0x1

    .line 59
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 62
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mKey:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 63
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mKey:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->hasCountryCode()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mKey:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 62
    if-eqz v6, :cond_3

    .line 64
    :cond_1
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 69
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v2, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_1

    .line 72
    .end local v3    # "number":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 73
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mSortIndexTable:[I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    aput v7, v6, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 76
    .local v4, "offset":I
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 77
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mSortIndexTable:[I

    add-int v7, v4, v1

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    aput v8, v6, v7

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 46
    :cond_6
    return-void
.end method


# virtual methods
.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;->mSortIndexTable:[I

    aget v1, v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
