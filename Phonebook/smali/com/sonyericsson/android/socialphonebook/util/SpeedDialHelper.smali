.class public Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;
.super Ljava/lang/Object;
.source "SpeedDialHelper.java"


# static fields
.field private static SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 26
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 27
    const-string/jumbo v1, "position"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 28
    const-string/jumbo v1, "phone_number"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "phone_number_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "phone_number_label"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "photo_uri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 25
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    return-void
.end method


# virtual methods
.method public asyncCreateNewEntry(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "dataId"    # J

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;IJ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    return-void
.end method

.method public asyncDeleteEntryByPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$2;-><init>(Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

.method public asyncUpdateEntryPosition(II)V
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper$3;-><init>(Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    return-void
.end method

.method public createNewEntry(IJ)Landroid/net/Uri;
    .locals 10
    .param p1, "position"    # I
    .param p2, "dataId"    # J

    .prologue
    const/4 v3, 0x0

    .line 68
    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->buildSpeedDialLookupUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 69
    .local v1, "previousEntry":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 69
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 72
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 73
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 74
    if-nez v6, :cond_0

    .line 75
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string/jumbo v0, "data_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 81
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->updateEntryData(IJ)I

    .line 82
    return-object v1

    .line 85
    .end local v6    # "count":I
    :cond_1
    return-object v3
.end method

.method public deleteEntryByPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 134
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->buildSpeedDialLookupUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllEntries()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    .line 96
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 95
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getEntryById(J)Landroid/database/Cursor;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    .line 108
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->SPEED_DIAL_QUERY_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 107
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method updateEntryData(IJ)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "dataId"    # J

    .prologue
    const/4 v4, 0x0

    .line 183
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "data_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 186
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->buildSpeedDialLookupUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 185
    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method updateEntryPosition(II)I
    .locals 5
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->deleteEntryByPosition(I)I

    .line 167
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 170
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->buildSpeedDialLookupUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
