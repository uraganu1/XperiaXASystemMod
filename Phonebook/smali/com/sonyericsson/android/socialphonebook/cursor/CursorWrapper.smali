.class public Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;
.super Landroid/database/AbstractCursor;
.source "CursorWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CursorWrapper"


# instance fields
.field protected final mCursor:Landroid/database/Cursor;

.field protected mRowIdColumnIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    .line 46
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mRowIdColumnIndex:I

    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 170
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .param p1, "aColumnIndex"    # I
    .param p2, "aBuffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 114
    return-void
.end method

.method public fakeClose()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 164
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "aObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 139
    const-string/jumbo v0, "CursorWrapper"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    const-string/jumbo v0, "CursorWrapper"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "aObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 154
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2
    .param p1, "aCr"    # Landroid/content/ContentResolver;
    .param p2, "aNotifyUri"    # Landroid/net/Uri;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "this should never be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "aObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 147
    const-string/jumbo v0, "CursorWrapper"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    const-string/jumbo v0, "CursorWrapper"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "aObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 160
    return-void
.end method
