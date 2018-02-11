.class public Lcom/android/settings/search/IndexDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IndexDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    const-string/jumbo v0, "search_index.db"

    const/4 v1, 0x0

    const/16 v2, 0x73

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 203
    iput-object p1, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    .line 201
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x7

    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    .line 214
    const-string/jumbo v4, "phone"

    .line 213
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 215
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    const-string/jumbo v3, "CREATE VIRTUAL TABLE prefs_index USING fts4(locale, data_rank, data_title, data_title_normalized, data_summary_on, data_summary_on_normalized, data_summary_off, data_summary_off_normalized, data_entries, data_entries_normalized, data_keywords, screen_title, class_name, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, user_id);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v3, "CREATE TABLE meta_index(build VARCHAR(32) NOT NULL, somc_ext_version INTEGER, somc_sw_revision VARCHAR(32) NOT NULL, somc_cdf_version VARCHAR(32) NOT NULL, somc_cdf_revision VARCHAR(32) NOT NULL, somc_cdf_active VARCHAR(32) NOT NULL, somc_sim_serial_number VARCHAR(32), somc_indexing_successful VARCHAR(32) NOT NULL)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v3, "CREATE TABLE saved_queries(query VARCHAR(64) NOT NULL, timestamp INTEGER)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v3, "INSERT INTO meta_index(build, somc_ext_version, somc_sw_revision, somc_cdf_version, somc_cdf_revision, somc_cdf_active, somc_sim_serial_number, somc_indexing_successful) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 222
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 223
    const-wide/16 v4, 0x4

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 224
    const-string/jumbo v3, "ro.semc.version.sw_revision"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 225
    const-string/jumbo v3, "ro.semc.version.cust"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 226
    const-string/jumbo v3, "ro.semc.version.cust_revision"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 227
    const-string/jumbo v3, "ro.semc.version.cust.active"

    .line 228
    const-string/jumbo v4, "unknow"

    .line 227
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 229
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v1, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 234
    :goto_1
    const-string/jumbo v3, "true"

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 235
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 236
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 237
    const-string/jumbo v3, "IndexDatabaseHelper"

    const-string/jumbo v4, "Bootstrapped database"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 216
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    const/4 v0, 0x0

    .local v0, "simSerialNumber":Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v0    # "simSerialNumber":Ljava/lang/String;
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 417
    const-string/jumbo v0, "DROP TABLE IF EXISTS meta_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 418
    const-string/jumbo v0, "DROP TABLE IF EXISTS prefs_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    const-string/jumbo v0, "DROP TABLE IF EXISTS saved_queries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method private getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, "version":Ljava/lang/String;
    const/4 v0, 0x0

    .line 294
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "SELECT build FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 295
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 303
    .end local v2    # "version":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 307
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v2

    .line 299
    .restart local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "IndexDatabaseHelper"

    const-string/jumbo v4, "Cannot get build version from Index metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 303
    if-eqz v0, :cond_2

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_2
    throw v3
.end method

.method private getExtVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, "version":I
    const/4 v0, 0x0

    .line 314
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "SELECT somc_ext_version FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 315
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 321
    :cond_0
    if-eqz v0, :cond_1

    .line 322
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v2

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 321
    if-eqz v0, :cond_1

    .line 322
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 321
    if-eqz v0, :cond_2

    .line 322
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_2
    throw v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/settings/search/IndexDatabaseHelper;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/android/settings/search/IndexDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/search/IndexDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    .line 198
    :cond_0
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 343
    const/4 v2, 0x1

    .line 344
    .local v2, "successful":Z
    const/4 v0, 0x0

    .line 346
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "SELECT somc_indexing_successful FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 347
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 353
    .end local v2    # "successful":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 354
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 357
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v2

    .line 350
    .restart local v2    # "successful":Z
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 354
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 352
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 353
    if-eqz v0, :cond_2

    .line 354
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_2
    throw v3
.end method

.method private isSimChanged(Ljava/lang/String;)Z
    .locals 7
    .param p1, "simSerialNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 403
    iget-object v5, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    .line 404
    const-string/jumbo v6, "phone"

    .line 403
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 405
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_0

    return v3

    .line 407
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "newSimSerialNumber":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v4, :cond_3

    const/4 v0, 0x1

    .line 411
    .local v0, "isSimAbsent":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 413
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 411
    :cond_2
    :goto_1
    return v3

    .line 408
    .end local v0    # "isSimAbsent":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isSimAbsent":Z
    goto :goto_0

    :cond_4
    move v3, v4

    .line 411
    goto :goto_1

    :cond_5
    move v3, v4

    .line 413
    goto :goto_1
.end method

.method private reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 285
    return-void
.end method


# virtual methods
.method protected isSomcPartUpdated(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 364
    const/4 v6, 0x0

    .line 365
    .local v6, "isSomcPartUpdated":Z
    const-string/jumbo v14, "ro.semc.version.sw_revision"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 366
    .local v10, "newSwRevision":Ljava/lang/String;
    const-string/jumbo v14, "ro.semc.version.cust"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, "newCdfVersion":Ljava/lang/String;
    const-string/jumbo v14, "ro.semc.version.cust_revision"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, "newCdfRevision":Ljava/lang/String;
    const-string/jumbo v14, "ro.semc.version.cust.active"

    const-string/jumbo v15, "unknow"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, "newCdfActive":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    .line 370
    const-string/jumbo v15, "phone"

    .line 369
    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 372
    .local v13, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 374
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v14, "SELECT somc_sw_revision, somc_cdf_version, somc_cdf_revision, somc_cdf_active, somc_sim_serial_number FROM meta_index LIMIT 1;"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 375
    .local v4, "cursor":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 377
    const-string/jumbo v14, "somc_sw_revision"

    .line 376
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 379
    .local v12, "swRevision":Ljava/lang/String;
    const-string/jumbo v14, "somc_cdf_version"

    .line 378
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "cdfVersion":Ljava/lang/String;
    const-string/jumbo v14, "somc_cdf_revision"

    .line 380
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "cdfRevision":Ljava/lang/String;
    const-string/jumbo v14, "somc_cdf_active"

    .line 382
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "cdfActive":Ljava/lang/String;
    const-string/jumbo v14, "somc_sim_serial_number"

    .line 384
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 386
    .local v11, "simSerialNumber":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 387
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 386
    if-eqz v14, :cond_3

    .line 387
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 386
    if-eqz v14, :cond_3

    .line 388
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 386
    if-eqz v14, :cond_3

    .line 389
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/search/IndexDatabaseHelper;->isSimChanged(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-eqz v14, :cond_2

    const/4 v6, 0x0

    .line 394
    .end local v1    # "cdfActive":Ljava/lang/String;
    .end local v2    # "cdfRevision":Ljava/lang/String;
    .end local v3    # "cdfVersion":Ljava/lang/String;
    .end local v11    # "simSerialNumber":Ljava/lang/String;
    .end local v12    # "swRevision":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 395
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 399
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v6

    .line 389
    .restart local v1    # "cdfActive":Ljava/lang/String;
    .restart local v2    # "cdfRevision":Ljava/lang/String;
    .restart local v3    # "cdfVersion":Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "simSerialNumber":Ljava/lang/String;
    .restart local v12    # "swRevision":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 386
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 391
    .end local v1    # "cdfActive":Ljava/lang/String;
    .end local v2    # "cdfRevision":Ljava/lang/String;
    .end local v3    # "cdfVersion":Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v11    # "simSerialNumber":Ljava/lang/String;
    .end local v12    # "swRevision":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 392
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    if-eqz v4, :cond_1

    .line 395
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 393
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 394
    if-eqz v4, :cond_4

    .line 395
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_4
    throw v14
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 207
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 279
    const-string/jumbo v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const-string/jumbo v2, "Index needs to be rebuilt for schema version \'"

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const-string/jumbo v2, "\'."

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 278
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 244
    const-string/jumbo v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Using schema version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Index needs to be rebuilt as build-version is not the same"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 241
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getExtVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_1

    .line 251
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Index needs to be rebuilt as ext-version is not the same"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->isSomcPartUpdated(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Index needs to be rebuilt as the software has been updated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->isLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 259
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Index needs to be rebuilt as the last indexing was not complete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 263
    :cond_3
    const-string/jumbo v0, "IndexDatabaseHelper"

    const-string/jumbo v1, "Index is fine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 269
    const/16 v0, 0x73

    if-ge p2, v0, :cond_0

    .line 270
    const-string/jumbo v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    const-string/jumbo v2, "Index needs to be rebuilt for schema version \'"

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    const-string/jumbo v2, "\'."

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 268
    :cond_0
    return-void
.end method

.method public setLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "successful"    # Z

    .prologue
    const/4 v3, 0x0

    .line 337
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "somc_indexing_successful"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v1, "meta_index"

    invoke-virtual {p1, v1, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 336
    return-void
.end method
