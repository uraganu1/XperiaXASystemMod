.class public Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;
.super Landroid/database/AbstractCursor;
.source "SortedMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;,
        Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;
    }
.end annotation


# instance fields
.field private mCurrentCursor:Landroid/database/Cursor;

.field private mFirstCursor:Landroid/database/Cursor;

.field private mSecondCursor:Landroid/database/Cursor;

.field private mSorter:Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;

.field private mSorting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;)V
    .locals 2
    .param p1, "firstCursor"    # Landroid/database/Cursor;
    .param p2, "secondCursor"    # Landroid/database/Cursor;
    .param p3, "sorter"    # Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSorting:Ljava/util/ArrayList;

    .line 163
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mFirstCursor:Landroid/database/Cursor;

    .line 164
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSecondCursor:Landroid/database/Cursor;

    .line 165
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSorter:Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mFirstCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSecondCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->sortCursors(Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mFirstCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    .line 162
    return-void
.end method

.method private addCursor(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 93
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-direct {v0, p1, v2}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;-><init>(Landroid/database/Cursor;I)V

    .line 94
    .local v0, "data":Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;
    const-string/jumbo v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, "idColIndex":I
    int-to-long v2, v1

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 96
    const-string/jumbo v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->setRealId(J)V

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSorting:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method private copyAllValuesFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->copyValuesFromCursor(Landroid/database/Cursor;)V

    .line 115
    return-void

    .line 119
    :cond_0
    return-void
.end method

.method private copyValuesFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->addCursor(Landroid/database/Cursor;)V

    .line 112
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void
.end method

.method private getOtherCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null cursor not allowed as parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mFirstCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSecondCursor:Landroid/database/Cursor;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mFirstCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method private sortCursors(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "firstCursor"    # Landroid/database/Cursor;
    .param p2, "secondCursor"    # Landroid/database/Cursor;

    .prologue
    .line 125
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    move-object v0, p1

    .line 137
    .local v0, "current":Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSorter:Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;

    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;->getNextCursor(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->addCursor(Landroid/database/Cursor;)V

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->getOtherCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->copyValuesFromCursor(Landroid/database/Cursor;)V

    .line 124
    return-void

    .line 126
    .end local v0    # "current":Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->copyAllValuesFromCursor(Landroid/database/Cursor;)V

    .line 127
    return-void

    .line 131
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->copyAllValuesFromCursor(Landroid/database/Cursor;)V

    .line 132
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mFirstCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mFirstCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSecondCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSecondCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 286
    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string/jumbo v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/high16 v0, -0x80000000

    return v0

    .line 210
    :cond_0
    const-string/jumbo v0, "REAL_ID_COLUMN_NAME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const v0, -0x7fffffff

    return v0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string/jumbo v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/high16 v0, -0x80000000

    return v0

    .line 199
    :cond_0
    const-string/jumbo v0, "REAL_ID_COLUMN_NAME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const v0, -0x7fffffff

    return v0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 219
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 220
    const-string/jumbo v0, "_id"

    return-object v0

    .line 221
    :cond_0
    const v0, -0x7fffffff

    if-ne p1, v0, :cond_1

    .line 222
    const-string/jumbo v0, "REAL_ID_COLUMN_NAME"

    return-object v0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 248
    .local v1, "size":I
    new-array v0, v1, [Ljava/lang/String;

    .line 249
    .local v0, "names":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 249
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    add-int/lit8 v2, v1, -0x1

    const-string/jumbo v3, "REAL_ID_COLUMN_NAME"

    aput-object v3, v0, v2

    .line 252
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSorting:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 185
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->getPosition()I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 187
    :cond_0
    const v1, -0x7fffffff

    if-ne p1, v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSorting:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;

    .line 189
    .local v0, "data":Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->-wrap2(Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;)J

    move-result-wide v2

    return-wide v2

    .line 191
    .end local v0    # "data":Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 3
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 230
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mSorting:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;

    .line 231
    .local v0, "data":Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->-wrap0(Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;->mCurrentCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;->-wrap1(Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$SortedData;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 232
    if-eqz v1, :cond_0

    .line 234
    const/4 v1, 0x1

    return v1
.end method
