.class Lcom/google/android/gms/tagmanager/zzw$zza;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzbiH:Lcom/google/android/gms/tagmanager/zzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzw;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzw$zza;->zzbiH:Lcom/google/android/gms/tagmanager/zzw;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private zza(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
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

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error querying for table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaK(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    :goto_2
    return v9

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

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
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private zzc(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "SELECT * FROM datalayer WHERE 0"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    :goto_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v4, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string/jumbo v0, "key"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Database column missing"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    aget-object v4, v3, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    const-string/jumbo v0, "value"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ID"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "expires"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Database has extra columns"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw$zza;->zzbiH:Lcom/google/android/gms/tagmanager/zzw;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzw;->zzb(Lcom/google/android/gms/tagmanager/zzw;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "google_tagmanager.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzal;->zzbo(Ljava/lang/String;)Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    :goto_0
    const-string/jumbo v0, "datalayer"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzw$zza;->zza(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzw$zza;->zzc(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
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
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzw;->zzGv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    return-void
.end method