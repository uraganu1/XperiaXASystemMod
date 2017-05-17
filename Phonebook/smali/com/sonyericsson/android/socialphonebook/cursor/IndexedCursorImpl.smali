.class Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;
.super Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
.source "IndexedCursorImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursor;


# static fields
.field static final SEPARATOR_OFFSET:I = -0x186a0


# instance fields
.field private final mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

.field private mIsSeparator:Z

.field private final mSeparatorTexts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[I[Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aPositionMap"    # [I
    .param p3, "aSeparatorTexts"    # [Ljava/lang/String;
    .param p4, "aIndexer"    # Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;-><init>(Landroid/database/Cursor;[IZ)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    .line 47
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mSeparatorTexts:[Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 45
    return-void
.end method


# virtual methods
.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .param p1, "aColumnIndex"    # I
    .param p2, "aBuffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    if-eqz v2, :cond_3

    .line 140
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 142
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 143
    .local v0, "data":[C
    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 144
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 148
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 138
    .end local v0    # "data":[C
    .end local v1    # "s":Ljava/lang/String;
    :goto_1
    return-void

    .line 146
    .restart local v0    # "data":[C
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 150
    .end local v0    # "data":[C
    :cond_2
    iput v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1

    .line 153
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_1
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    return-object v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    if-eqz v0, :cond_1

    .line 98
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mRowIdColumnIndex:I

    if-ne v0, p1, :cond_0

    .line 99
    const-wide/16 v0, -0x2710

    return-wide v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 121
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    if-eqz v1, :cond_2

    .line 122
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mRowIdColumnIndex:I

    if-ne p1, v1, :cond_0

    .line 123
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 124
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mPositionMap:[I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mPos:I

    aget v1, v1, v2

    const v2, -0x186a0

    sub-int v0, v1, v2

    .line 126
    .local v0, "pos":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mSeparatorTexts:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 128
    .end local v0    # "pos":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "aColumnIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 170
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0

    .line 172
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mRowIdColumnIndex:I

    if-ne p1, v0, :cond_1

    .line 173
    return v1

    .line 174
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 175
    return v1

    .line 177
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .locals 3
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mPositionMap:[I

    aget v0, v0, p2

    if-ltz v0, :cond_0

    .line 56
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mPositionMap:[I

    aget v1, v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0

    .line 59
    :cond_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->mIsSeparator:Z

    .line 60
    return v2
.end method
