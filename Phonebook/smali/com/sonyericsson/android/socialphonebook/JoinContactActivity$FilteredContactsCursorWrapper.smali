.class Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
.super Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;
.source "JoinContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredContactsCursorWrapper"
.end annotation


# instance fields
.field private mContactIdColumnIndex:I

.field private mFilteredCursorCount:I

.field private mFilteredPosition:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aContactIdColumnIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1177
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1165
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    .line 1178
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mContactIdColumnIndex:I

    .line 1179
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredPosition:Landroid/util/SparseIntArray;

    .line 1180
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    .line 1176
    return-void
.end method


# virtual methods
.method public filterCursor()V
    .locals 6

    .prologue
    .line 1188
    const-wide/16 v0, -0x1

    .line 1189
    .local v0, "cid":J
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    .line 1190
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1192
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mRowIdColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, -0x2710

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1193
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mContactIdColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1194
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->isSimAccountContact(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1195
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredPosition:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1196
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    .line 1202
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1187
    :cond_2
    return-void

    .line 1199
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredPosition:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1200
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1214
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredCursorCount:I

    return v0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 1208
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mFilteredPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1209
    .local v0, "rawPos":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1
.end method
