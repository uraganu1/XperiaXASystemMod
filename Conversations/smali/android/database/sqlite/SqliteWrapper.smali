.class public final Landroid/database/sqlite/SqliteWrapper;
.super Ljava/lang/Object;
.source "SqliteWrapper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-static {p1}, Landroid/database/sqlite/SqliteWrapper;->isLowMemory(Landroid/database/sqlite/SQLiteException;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, "r":Landroid/content/res/Resources;
    const-string/jumbo v2, "low_memory"

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 52
    invoke-static {p0, v1, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 47
    :cond_0
    return-void

    .line 54
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "res":I
    :cond_1
    throw p1
.end method

.method public static delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "Catch a SQLiteException when delete: "

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 87
    const/4 v1, -0x1

    return v1
.end method

.method public static insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "Catch a SQLiteException when insert: "

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 98
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isLowMemory(Landroid/database/sqlite/SQLiteException;)Z
    .locals 2
    .param p0, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unable to open database file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "Catch a SQLiteException when query: "

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 65
    const/4 v1, 0x0

    return-object v1
.end method

.method public static update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "Catch a SQLiteException when update: "

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 76
    const/4 v1, -0x1

    return v1
.end method
