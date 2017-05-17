.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;
.super Landroid/database/AbstractCursor;
.source "SmartSearchMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor$1;
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mCursors:[Landroid/database/Cursor;

.field private mObserver:Landroid/database/DataSetObserver;


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mPos:I

    return p1
.end method

.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursors"    # [Landroid/database/Cursor;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 35
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor$1;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 52
    array-length v0, p1

    .line 53
    .local v0, "count":I
    new-array v2, v0, [Landroid/database/Cursor;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    .line 54
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 57
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, p1, v1

    aput-object v3, v2, v1

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 56
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 177
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 178
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 179
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 178
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 181
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 183
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 176
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 167
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 164
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "count":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 69
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 70
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 6
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v4, 0x0

    .line 81
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "cursorStartPos":I
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v4

    .line 84
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 85
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    .line 84
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v4, v0

    if-ge p2, v4, :cond_2

    .line 90
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_3

    .line 99
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursor:Landroid/database/Cursor;

    sub-int v5, p2, v0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    .line 100
    .local v3, "ret":Z
    return v3

    .line 94
    .end local v3    # "ret":Z
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 102
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 188
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 189
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 207
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 208
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 209
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 228
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 229
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    const/4 v2, 0x0

    return v2

    .line 239
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 197
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 198
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 199
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 217
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 218
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 219
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    return-void
.end method
