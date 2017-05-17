.class Lcom/google/android/gms/analytics/internal/zzj$zza;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzQW:Lcom/google/android/gms/analytics/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzj;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzQW:Lcom/google/android/gms/analytics/internal/zzj;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private zza(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "hits2"

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "hit_id"

    aput-object v2, v4, v0

    const-string/jumbo v2, "hit_string"

    aput-object v2, v4, v1

    const/4 v2, 0x2

    const-string/jumbo v5, "hit_time"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v5, "hit_url"

    aput-object v5, v4, v2

    array-length v5, v4

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_0

    const-string/jumbo v2, "hit_app_id"

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    :goto_2
    return-void

    :cond_0
    aget-object v6, v4, v2

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Database hits2 is missing required column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Database hits2 has extra columns"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v0, "ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v1, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "name"

    aput-object v3, v2, v0

    const-string/jumbo v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzQW:Lcom/google/android/gms/analytics/internal/zzj;

    const-string/jumbo v3, "Error querying for table"

    invoke-virtual {v2, v3, p2, v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_1

    :goto_2
    return v9

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    if-nez v8, :cond_2

    :goto_4
    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT * FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " LIMIT 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v4, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    :try_start_1
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private zzb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "properties"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "app_uid"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string/jumbo v4, "cid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "tid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "params"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "adid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "hits_count"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_0
    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Database properties is missing required column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Database properties table has extra columns"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzQW:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zza(Lcom/google/android/gms/analytics/internal/zzj;)Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object v0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzaj;->zzv(J)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Database open failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzQW:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zza(Lcom/google/android/gms/analytics/internal/zzj;)Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->start()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzQW:Lcom/google/android/gms/analytics/internal/zzj;

    const-string/jumbo v1, "Opening the database failed, dropping the table and recreating it"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->zzbh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzQW:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzj;->zzb(Lcom/google/android/gms/analytics/internal/zzj;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzQW:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzQW:Lcom/google/android/gms/analytics/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/zzj;->zza(Lcom/google/android/gms/analytics/internal/zzj;)Lcom/google/android/gms/analytics/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzaj;->clear()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzQW:Lcom/google/android/gms/analytics/internal/zzj;

    const-string/jumbo v2, "Failed to open freshly created database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/analytics/internal/zzj;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzx;->zzbo(Ljava/lang/String;)Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    :goto_0
    const-string/jumbo v0, "hits2"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzj$zza;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzj$zza;->zza(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    const-string/jumbo v0, "properties"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzj$zza;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzj$zza;->zzb(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_2
    return-void

    :cond_0
    const-string/jumbo v0, "PRAGMA journal_mode=memory"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/analytics/internal/zzj;->zzjR()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    return-void
.end method
