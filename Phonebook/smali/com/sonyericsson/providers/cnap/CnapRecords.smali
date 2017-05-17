.class public Lcom/sonyericsson/providers/cnap/CnapRecords;
.super Ljava/lang/Object;
.source "CnapRecords.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final MIME_DIR_PREFIX:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final MIME_ITEM:Ljava/lang/String; = "vnd.semc.cnaprecords"

.field public static final MIME_ITEM_PREFIX:Ljava/lang/String; = "vnd.android.cursor.item"

.field public static final MIME_TYPE_MULTIPLE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.semc.cnaprecords"

.field public static final MIME_TYPE_SINGLE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.semc.cnaprecords"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final UPDATABLE:Ljava/lang/String; = "updatable"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.sonyericsson.providers.cnap/cnaprecords"

    .line 62
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdateRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "number=?"

    .line 116
    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 117
    sget-object v1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    aput-object v7, v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 121
    if-nez v1, :cond_1

    .line 130
    :cond_0
    if-nez v1, :cond_3

    :goto_0
    const-string/jumbo v1, "name"

    .line 133
    invoke-virtual {v6, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "number"

    .line 134
    invoke-virtual {v6, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "date"

    .line 135
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "updatable"

    .line 136
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    sget-object v1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 121
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "name"

    .line 122
    invoke-virtual {v6, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "date"

    .line 123
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "updatable"

    const/4 v5, 0x0

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    sget-object v2, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v0, "_id"

    .line 126
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v2, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 130
    if-nez v1, :cond_2

    .line 131
    :goto_1
    return-object v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 130
    if-nez v1, :cond_4

    .line 131
    :goto_2
    throw v0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static isUpdatable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "updatable"

    aput-object v3, v2, v6

    const-string/jumbo v3, "number=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 173
    if-nez v1, :cond_1

    .line 177
    :cond_0
    if-nez v1, :cond_4

    .line 180
    :goto_0
    return v7

    .line 173
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updatable"

    .line 174
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 177
    :goto_1
    if-nez v1, :cond_3

    .line 178
    :goto_2
    return v0

    :cond_2
    move v0, v7

    .line 174
    goto :goto_1

    .line 178
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 177
    if-nez v1, :cond_5

    .line 178
    :goto_3
    throw v0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public static makeUpdatable(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "updatable"

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    sget-object v2, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "number=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
