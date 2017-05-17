.class public abstract Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    .line 70
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mCount:I

    .line 71
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mCacheValid:Z

    .line 72
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    .line 79
    return-void
.end method


# virtual methods
.method public addPartition(Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;)V
    .locals 5
    .param p1, "partition"    # Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    .prologue
    const/4 v4, 0x0

    .line 94
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 95
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v1, v2, 0x2

    .line 96
    .local v1, "newCapacity":I
    new-array v0, v1, [Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    .line 97
    .local v0, "newAdapters":[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    .line 100
    .end local v0    # "newAdapters":[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    .end local v1    # "newCapacity":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    aput-object p1, v2, v3

    .line 93
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-ge v0, v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v1, :cond_0

    .line 456
    const/4 v1, 0x0

    return v1

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected abstract bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
.end method

.method protected abstract bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 8
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 201
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, p1

    iget-object v4, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 202
    .local v4, "prevCursor":Landroid/database/Cursor;
    if-eq v4, p2, :cond_2

    .line 203
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, p1

    iput-object p2, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 207
    if-eqz p2, :cond_1

    .line 208
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v3, v5, p1

    .line 210
    .local v3, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    :try_start_0
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .end local v3    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 211
    .local v0, "directoryId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_4

    .line 212
    const-wide/16 v6, 0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_4

    .line 213
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, p1

    .line 214
    const/4 v6, -0x1

    .line 213
    iput v6, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->idColumnIndex:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "directoryId":J
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->invalidate()V

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 200
    :cond_2
    return-void

    .line 204
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 216
    .restart local v0    # "directoryId":J
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, p1

    const-string/jumbo v6, "_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->idColumnIndex:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 218
    .end local v0    # "directoryId":J
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/ClassCastException;
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Partition must be instance of DirectoryPartition"

    invoke-static {v5, v6, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public clearPartitions()V
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->invalidate()V

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mCacheValid:Z

    if-eqz v3, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mCount:I

    .line 157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-ge v2, v3, :cond_4

    .line 158
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v2

    iget-object v1, v3, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 159
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 160
    .local v0, "count":I
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v3, :cond_2

    .line 161
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    if-eqz v3, :cond_2

    .line 162
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v2

    iput v0, v3, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->count:I

    .line 166
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mCount:I

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "count":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "count":I
    goto :goto_1

    .line 169
    .end local v0    # "count":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mCacheValid:Z

    .line 151
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->ensureCacheValid()V

    .line 185
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mCount:I

    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "partition"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 334
    if-eqz p3, :cond_0

    .line 335
    move-object v0, p3

    .line 337
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 338
    return-object v0

    .line 336
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->ensureCacheValid()V

    .line 395
    const/4 v4, 0x0

    .line 396
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-ge v2, v5, :cond_3

    .line 397
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v5

    .line 398
    .local v1, "end":I
    if-lt p1, v4, :cond_2

    if-ge p1, v1, :cond_2

    .line 399
    sub-int v3, p1, v4

    .line 400
    .local v3, "offset":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 401
    add-int/lit8 v3, v3, -0x1

    .line 403
    :cond_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 404
    return-object v6

    .line 406
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v0, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 407
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 408
    return-object v0

    .line 410
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "offset":I
    :cond_2
    move v4, v1

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "end":I
    :cond_3
    return-object v6
.end method

.method public getItemId(I)J
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->ensureCacheValid()V

    .line 422
    const/4 v4, 0x0

    .line 423
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-ge v2, v5, :cond_5

    .line 424
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v5

    .line 425
    .local v1, "end":I
    if-lt p1, v4, :cond_4

    if-ge p1, v1, :cond_4

    .line 426
    sub-int v3, p1, v4

    .line 427
    .local v3, "offset":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 428
    add-int/lit8 v3, v3, -0x1

    .line 430
    :cond_0
    if-ne v3, v8, :cond_1

    .line 431
    return-wide v6

    .line 433
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->idColumnIndex:I

    if-ne v5, v8, :cond_2

    .line 434
    return-wide v6

    .line 437
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v0, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 438
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 441
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->idColumnIndex:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    return-wide v6

    .line 439
    :cond_3
    return-wide v6

    .line 443
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "offset":I
    :cond_4
    move v4, v1

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "end":I
    :cond_5
    return-wide v6
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->ensureCacheValid()V

    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-ge v1, v4, :cond_2

    .line 282
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v4

    .line 283
    .local v0, "end":I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 284
    sub-int v2, p1, v3

    .line 285
    .local v2, "offset":I
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 286
    const/4 v4, -0x1

    return v4

    .line 288
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->getItemViewType(II)I

    move-result v4

    return v4

    .line 290
    .end local v2    # "offset":I
    :cond_1
    move v3, v0

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "end":I
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected getItemViewType(II)I
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-lt p1, v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    return v0
.end method

.method public getPartitionForPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->ensureCacheValid()V

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-ge v1, v3, :cond_1

    .line 234
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v2, v3

    .line 235
    .local v0, "end":I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 236
    return v1

    .line 238
    :cond_0
    move v2, v0

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "end":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public getPositionForPartition(I)I
    .locals 3
    .param p1, "partition"    # I

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->ensureCacheValid()V

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 250
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->count:I

    add-int/2addr v1, v2

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return v1
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 367
    if-eqz p4, :cond_0

    .line 368
    move-object v6, p4

    .line 372
    .local v6, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 373
    return-object v6

    .line 370
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->ensureCacheValid()V

    .line 299
    const/4 v7, 0x0

    .line 300
    .local v7, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-ge v1, v0, :cond_6

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->count:I

    add-int v6, v7, v0

    .line 302
    .local v6, "end":I
    if-lt p1, v7, :cond_5

    if-ge p1, v6, :cond_5

    .line 303
    sub-int v3, p1, v7

    .line 304
    .local v3, "offset":I
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v0, :cond_0

    .line 305
    add-int/lit8 v3, v3, -0x1

    .line 308
    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 317
    .local v8, "view":Landroid/view/View;
    :goto_1
    if-nez v8, :cond_4

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 319
    const-string/jumbo v4, " position: "

    .line 318
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .restart local v8    # "view":Landroid/view/View;
    goto :goto_1

    .line 312
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    .restart local v8    # "view":Landroid/view/View;
    :cond_4
    return-object v8

    .line 323
    .end local v3    # "offset":I
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    move v7, v6

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 326
    .end local v6    # "end":I
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeader(I)Z
    .locals 1
    .param p1, "partition"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mCacheValid:Z

    .line 143
    return-void
.end method

.method public isEnabled(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 467
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->ensureCacheValid()V

    .line 468
    const/4 v3, 0x0

    .line 469
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    if-ge v1, v4, :cond_2

    .line 470
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v4

    .line 471
    .local v0, "end":I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 472
    sub-int v2, p1, v3

    .line 473
    .local v2, "offset":I
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 474
    return v5

    .line 476
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->isEnabled(II)Z

    move-result v4

    return v4

    .line 479
    .end local v2    # "offset":I
    :cond_1
    move v3, v0

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "end":I
    :cond_2
    return v5
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mNotificationNeeded:Z

    .line 508
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 505
    :goto_0
    return-void

    .line 510
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public removePartition(I)V
    .locals 5
    .param p1, "partitionIndex"    # I

    .prologue
    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 105
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    .line 110
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 109
    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mSize:I

    .line 103
    return-void

    .line 106
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public setHasHeader(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->hasHeader:Z

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->invalidate()V

    .line 126
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 499
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 497
    :cond_0
    return-void
.end method

.method public setShowIfEmpty(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->mPartitions:[Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter;->invalidate()V

    .line 131
    return-void
.end method
