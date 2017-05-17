.class public Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;
.super Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;
.source "SortedCursor.java"


# instance fields
.field private final mDoClose:Z

.field protected mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

.field protected final mPositionMap:[I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[ILcom/sonyericsson/android/socialphonebook/cursor/Indexer;)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aPositionMap"    # [I
    .param p3, "indexer"    # Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 48
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mPositionMap:[I

    .line 49
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mDoClose:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;[IZ)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aPositionMap"    # [I
    .param p3, "aDoClose"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 42
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mPositionMap:[I

    .line 43
    iput-boolean p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mDoClose:Z

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mDoClose:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->close()V

    .line 55
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->fakeClose()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mPositionMap:[I

    array-length v0, v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    return-object v0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SortedCursor;->mPositionMap:[I

    aget v1, v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
