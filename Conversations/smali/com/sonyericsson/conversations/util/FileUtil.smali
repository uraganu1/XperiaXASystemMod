.class public Lcom/sonyericsson/conversations/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final MEDIA_STORE_PROJECTION:[Ljava/lang/String;

.field private static final PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/util/FileUtil;->MEDIA_STORE_PROJECTION:[Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "content://downloads/public_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 29
    sput-object v0, Lcom/sonyericsson/conversations/util/FileUtil;->PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 118
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v4, 0x1000

    :try_start_1
    new-array v0, v4, [B

    .line 122
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_0

    .line 123
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v4

    .line 126
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 131
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 125
    throw v4

    .line 134
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/IOException;
    return v6

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 131
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 133
    const/4 v4, 0x1

    return v4

    .line 129
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 92
    const/4 v7, 0x0

    .line 93
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 95
    .local v8, "dataColumn":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/conversations/util/FileUtil;->MEDIA_STORE_PROJECTION:[Ljava/lang/String;

    .line 96
    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 95
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 97
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 99
    .local v6, "column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 102
    .end local v6    # "column_index":I
    .end local v8    # "dataColumn":Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_1
    return-object v8

    .line 101
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "dataColumn":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 102
    if-eqz v7, :cond_2

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_2
    throw v0
.end method

.method public static getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 36
    const-string/jumbo v8, "com.android.externalstorage.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 37
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "docId":Ljava/lang/String;
    const-string/jumbo v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v3, v8, v11

    .line 39
    .local v3, "id":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .end local v1    # "docId":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 40
    .restart local v2    # "filePath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "com.android.providers.downloads.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 41
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .restart local v1    # "docId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 44
    .local v4, "id":J
    sget-object v8, Lcom/sonyericsson/conversations/util/FileUtil;->PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 45
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v10, v10}, Lcom/sonyericsson/conversations/util/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "filePath":Ljava/lang/String;
    goto :goto_0

    .line 46
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v4    # "id":J
    .local v2, "filePath":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "com.android.providers.media.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 47
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .restart local v1    # "docId":Ljava/lang/String;
    const-string/jumbo v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v12

    .line 50
    .local v7, "type":Ljava/lang/String;
    aget-object v3, v6, v11

    .line 51
    .restart local v3    # "id":Ljava/lang/String;
    const/4 v0, 0x0

    .line 53
    .local v0, "contentUri":Landroid/net/Uri;
    const-string/jumbo v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 54
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 60
    .end local v0    # "contentUri":Landroid/net/Uri;
    :cond_3
    :goto_1
    const-string/jumbo v8, "_id=?"

    new-array v9, v11, [Ljava/lang/String;

    aput-object v3, v9, v12

    invoke-static {p0, v0, v8, v9}, Lcom/sonyericsson/conversations/util/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "filePath":Ljava/lang/String;
    goto :goto_0

    .line 55
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .local v2, "filePath":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 56
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .local v0, "contentUri":Landroid/net/Uri;
    goto :goto_1

    .line 57
    .local v0, "contentUri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 58
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .local v0, "contentUri":Landroid/net/Uri;
    goto :goto_1

    .line 62
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_6
    const-string/jumbo v8, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 63
    const-string/jumbo v8, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 62
    if-eqz v8, :cond_7

    .line 64
    invoke-static {p0, p1, v10, v10}, Lcom/sonyericsson/conversations/util/FileUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "filePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 65
    .local v2, "filePath":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "filePath":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static getPermittedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 79
    move-object v0, p1

    .line 80
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    const-string/jumbo v4, "com.android.providers.downloads.documents"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "docId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 84
    .local v2, "id":J
    sget-object v4, Lcom/sonyericsson/conversations/util/FileUtil;->PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 87
    .end local v1    # "docId":Ljava/lang/String;
    .end local v2    # "id":J
    :cond_0
    return-object v0
.end method
