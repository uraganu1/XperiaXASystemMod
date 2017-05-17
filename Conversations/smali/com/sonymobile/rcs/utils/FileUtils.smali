.class public Lcom/sonymobile/rcs/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static mimeTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    .line 33
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "jpg"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "jpeg"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "png"

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "bmp"

    const-string/jumbo v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "gif"

    const-string/jumbo v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "3gp"

    const-string/jumbo v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mp4"

    const-string/jumbo v2, "video/mpeg4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mp4a"

    const-string/jumbo v2, "video/mpeg4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mpeg"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mpg"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mp3"

    const-string/jumbo v2, "audio/mp3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "wav"

    const-string/jumbo v2, "audio/wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "ogg"

    const-string/jumbo v2, "audio/x-ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mid"

    const-string/jumbo v2, "audio/mid"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "midi"

    const-string/jumbo v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "amr"

    const-string/jumbo v2, "audio/amr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "aac"

    const-string/jumbo v2, "audio/aac-adts"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "m4a"

    const-string/jumbo v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "mxmf"

    const-string/jumbo v2, "audio/mobile-xmf"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "wma"

    const-string/jumbo v2, "audio/x-ms-wma"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "xmf"

    const-string/jumbo v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "jar"

    const-string/jumbo v2, "application/java-archive"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "zip"

    const-string/jumbo v2, "application/zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "rar"

    const-string/jumbo v2, "application/x-rar-compressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "gz"

    const-string/jumbo v2, "application/gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "flac"

    const-string/jumbo v2, "application/x-flac"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "htm"

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "html"

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "php"

    const-string/jumbo v2, "text/php"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "txt"

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "csv"

    const-string/jumbo v2, "text/csv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "xml"

    const-string/jumbo v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "rtx"

    const-string/jumbo v2, "text/richtext"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "vcf"

    const-string/jumbo v2, "text/vcard"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "apk"

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 134
    if-eqz p0, :cond_0

    const-string/jumbo v1, "."

    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "dot":I
    if-gez v0, :cond_1

    const-string/jumbo v1, ""

    .line 143
    return-object v1

    .line 135
    .end local v0    # "dot":I
    :cond_0
    return-object v1

    .line 140
    .restart local v0    # "dot":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v6, 0x0

    .line 235
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "content"

    .line 248
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "file"

    .line 258
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 263
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v1, "Unsupported URI scheme"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 266
    if-nez v6, :cond_c

    .line 267
    :goto_0
    throw v0

    .line 237
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 240
    :cond_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v1, "Error in retrieving file URI from msg ID"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "name"

    .line 243
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 244
    .local v7, "mmsPartColumnIndex":I
    if-ne v7, v11, :cond_4

    .line 266
    .end local v7    # "mmsPartColumnIndex":I
    :cond_3
    if-nez v6, :cond_b

    .line 270
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v1, "Error in retrieving file URI from msg ID"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    .restart local v7    # "mmsPartColumnIndex":I
    :cond_4
    :try_start_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 266
    if-nez v6, :cond_5

    .line 267
    :goto_2
    return-object v0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 249
    .end local v7    # "mmsPartColumnIndex":I
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 250
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_8

    .line 251
    :cond_7
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v1, "Error in retrieving file URI from msg ID"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "_display_name"

    .line 253
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 254
    .local v8, "openableColumnIndex":I
    if-eq v8, v11, :cond_3

    .line 255
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 266
    if-nez v6, :cond_9

    .line 267
    :goto_3
    return-object v0

    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 259
    .end local v8    # "openableColumnIndex":I
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_a
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .local v10, "url":Ljava/lang/String;
    const-string/jumbo v0, "/"

    .line 260
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "splittedPath":[Ljava/lang/String;
    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    return-object v0

    .end local v9    # "splittedPath":[Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getFileSize(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    const-string/jumbo v5, "file"

    .line 282
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 288
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 289
    .local v4, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    .line 290
    .local v2, "fileSize":J
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return-wide v2

    .line 283
    .end local v2    # "fileSize":J
    .end local v4    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    return-wide v6

    .line 291
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    const-string/jumbo v6, "Error in retrieving file size form the URI"

    invoke-direct {v5, v6}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {p0, p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .local v1, "fileName":Ljava/lang/String;
    const/16 v4, 0x2e

    .line 306
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "fileExtension":Ljava/lang/String;
    sget-object v4, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    .local v3, "type":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 311
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 312
    .local v2, "mime":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    if-nez v3, :cond_0

    const-string/jumbo v3, "application/octet-stream"

    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 309
    .end local v2    # "mime":Landroid/webkit/MimeTypeMap;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "extension":Ljava/lang/String;
    const/4 v2, 0x0

    .line 90
    .local v2, "mimetype":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    .end local v2    # "mimetype":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 91
    .restart local v2    # "mimetype":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/sonymobile/rcs/utils/FileUtils;->mimeTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mimetype":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "mimetype":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 95
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 96
    .local v1, "mime":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 93
    .end local v1    # "mime":Landroid/webkit/MimeTypeMap;
    :cond_1
    return-object v2
.end method
