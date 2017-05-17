.class public Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;
.super Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;
.source "SubCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubCursor"


# instance fields
.field private mContactsIndexTable:[I

.field private mCursorCount:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "matchedSortedIndices"    # [I

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 22
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mCursorCount:I

    .line 26
    if-nez p2, :cond_0

    .line 27
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mCursorCount:I

    .line 28
    return-void

    .line 31
    :cond_0
    array-length v1, p2

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mCursorCount:I

    .line 33
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mCursorCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mContactsIndexTable:[I

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mCursorCount:I

    if-ge v0, v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mContactsIndexTable:[I

    aget v2, p2, v0

    aput v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->fakeClose()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mContactsIndexTable:[I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mCursorCount:I

    .line 50
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mCursorCount:I

    return v0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;->mContactsIndexTable:[I

    aget v1, v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
