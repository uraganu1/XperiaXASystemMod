.class public Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter$ContactsIndexedCursor;
.super Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;
.source "ContactsCursorSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsIndexedCursor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[I[Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V
    .locals 0
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aPositionMap"    # [I
    .param p3, "aSeparatorTexts"    # [Ljava/lang/String;
    .param p4, "aIndexer"    # Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;-><init>(Landroid/database/Cursor;[I[Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V

    .line 77
    return-void
.end method


# virtual methods
.method public bridge synthetic copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0
    .param p1, "aColumnIndex"    # I
    .param p2, "aBuffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public bridge synthetic getBlob(I)[B
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDouble(I)D
    .locals 2
    .param p1, "aColumnIndex"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getFloat(I)F
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInt(I)I
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLong(I)J
    .locals 2
    .param p1, "aColumnIndex"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getShort(I)S
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->getShort(I)S

    move-result v0

    return v0
.end method

.method public bridge synthetic getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isNull(I)Z
    .locals 1
    .param p1, "aColumnIndex"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursorImpl;->onMove(II)Z

    move-result v0

    return v0
.end method
