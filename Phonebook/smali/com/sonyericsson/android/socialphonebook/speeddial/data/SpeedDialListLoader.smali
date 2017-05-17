.class public Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;
.super Landroid/content/CursorLoader;
.source "SpeedDialListLoader.java"


# instance fields
.field private final DATA_QUERY_PROJECTION:[Ljava/lang/String;

.field private final MATRIX_PROJECTION:[Ljava/lang/String;

.field private final SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

.field private mDataViewSelection:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResult:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 32
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "position"

    aput-object v1, v0, v5

    .line 33
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "phone_number"

    aput-object v1, v0, v7

    .line 34
    const-string/jumbo v1, "phone_number_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone_number_label"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 31
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 41
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mimetype"

    aput-object v1, v0, v4

    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "lookup"

    aput-object v1, v0, v6

    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->DATA_QUERY_PROJECTION:[Ljava/lang/String;

    .line 47
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "position"

    aput-object v1, v0, v5

    .line 49
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "phone_number"

    aput-object v1, v0, v7

    .line 50
    const-string/jumbo v1, "phone_number_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone_number_label"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "contact_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "lookup"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "photo_id"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 47
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->MATRIX_PROJECTION:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method private loadDataView()Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 195
    const/4 v6, 0x0

    .line 196
    .local v6, "dataViewCursor":Landroid/database/Cursor;
    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->DATA_QUERY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 197
    .local v8, "matrix":Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->DATA_QUERY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    .line 200
    .local v9, "row":[Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 201
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->DATA_QUERY_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mDataViewSelection:Ljava/lang/String;

    .line 202
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string/jumbo v5, "_id ASC"

    .line 200
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, "dataViewCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 206
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->DATA_QUERY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 209
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 208
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 216
    .end local v6    # "dataViewCursor":Landroid/database/Cursor;
    .end local v7    # "i":I
    :catchall_0
    move-exception v0

    .line 217
    if-eqz v6, :cond_1

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    throw v0

    .line 217
    .restart local v6    # "dataViewCursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_3

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_3
    return-object v8

    .line 217
    :cond_4
    if-eqz v6, :cond_5

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_5
    return-object v8
.end method

.method private loadSpeedDialDataAndCreateDataViewSelection()Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 156
    const/4 v10, 0x0

    .line 157
    .local v10, "speedDialCursor":Landroid/database/Cursor;
    new-instance v7, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 160
    .local v7, "matrix":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    .line 162
    const-string/jumbo v5, "data_id ASC"

    .line 161
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 164
    .local v10, "speedDialCursor":Landroid/database/Cursor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v9, "selectionStringBuilder":Ljava/lang/StringBuilder;
    if-eqz v10, :cond_4

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v8, v0, [Ljava/lang/Object;

    .line 168
    .local v8, "row":[Ljava/lang/Object;
    const-string/jumbo v0, "mimetype = ? AND _id in ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    invoke-interface {v10}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    const-string/jumbo v0, "data_id"

    .line 174
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 178
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    .line 177
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    .end local v6    # "i":I
    .end local v8    # "row":[Ljava/lang/Object;
    .end local v9    # "selectionStringBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "speedDialCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 187
    if-eqz v10, :cond_2

    .line 188
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_2
    throw v0

    .line 182
    .restart local v8    # "row":[Ljava/lang/Object;
    .restart local v9    # "selectionStringBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "speedDialCursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string/jumbo v0, " )"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mDataViewSelection:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v8    # "row":[Ljava/lang/Object;
    :cond_4
    if-eqz v10, :cond_5

    .line 188
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_5
    return-object v7
.end method

.method private mergeCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .param p1, "speedDialCursor"    # Landroid/database/Cursor;
    .param p2, "dataViewCursor"    # Landroid/database/Cursor;

    .prologue
    .line 225
    new-instance v2, Landroid/database/MatrixCursor;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->MATRIX_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 227
    .local v2, "matrix":Landroid/database/MatrixCursor;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 228
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->MATRIX_PROJECTION:[Ljava/lang/String;

    array-length v5, v5

    new-array v3, v5, [Ljava/lang/Object;

    .line 230
    .local v3, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 231
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    array-length v4, v5

    .line 235
    .local v4, "startIndex":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->MATRIX_PROJECTION:[Ljava/lang/String;

    array-length v0, v5

    .line 237
    .local v0, "endIndex":I
    move v1, v4

    :goto_2
    if-ge v1, v0, :cond_1

    .line 238
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    array-length v5, v5

    sub-int v5, v1, v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 241
    :cond_1
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    .end local v0    # "endIndex":I
    .end local v1    # "i":I
    .end local v3    # "row":[Ljava/lang/Object;
    .end local v4    # "startIndex":I
    :cond_2
    return-object v2
.end method

.method private releaseResources(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 91
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mResult:Landroid/database/Cursor;

    .line 95
    .local v0, "oldData":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mResult:Landroid/database/Cursor;

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 101
    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 102
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 88
    :cond_2
    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->loadSpeedDialDataAndCreateDataViewSelection()Landroid/database/Cursor;

    move-result-object v2

    .line 65
    .local v2, "speedDialCursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 66
    .local v0, "dataViewCursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 68
    .local v1, "mergedResult":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->loadDataView()Landroid/database/Cursor;

    move-result-object v0

    .line 70
    .local v0, "dataViewCursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 71
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 72
    const-string/jumbo v4, "Count of speed dial cursor and data view cursor must be equal."

    .line 71
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v0    # "dataViewCursor":Landroid/database/Cursor;
    .end local v1    # "mergedResult":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_0
    throw v3

    .line 74
    .restart local v0    # "dataViewCursor":Landroid/database/Cursor;
    .restart local v1    # "mergedResult":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mergeCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 79
    .end local v0    # "dataViewCursor":Landroid/database/Cursor;
    .local v1, "mergedResult":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_2
    return-object v1

    .line 76
    .local v0, "dataViewCursor":Landroid/database/Cursor;
    .local v1, "mergedResult":Landroid/database/Cursor;
    :cond_3
    :try_start_2
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1    # "mergedResult":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->MATRIX_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v1, "mergedResult":Landroid/database/Cursor;
    goto :goto_0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 107
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->onStopLoading()V

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mResult:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 147
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mResult:Landroid/database/Cursor;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mObserver:Landroid/database/ContentObserver;

    .line 143
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mResult:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mResult:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader$1;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mObserver:Landroid/database/ContentObserver;

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    .line 127
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mObserver:Landroid/database/ContentObserver;

    .line 126
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mObserver:Landroid/database/ContentObserver;

    .line 128
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->mResult:Landroid/database/Cursor;

    if-nez v0, :cond_3

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->forceLoad()V

    .line 113
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/data/SpeedDialListLoader;->cancelLoad()Z

    .line 138
    return-void
.end method
