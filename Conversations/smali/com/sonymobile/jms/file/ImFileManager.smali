.class public final Lcom/sonymobile/jms/file/ImFileManager;
.super Ljava/lang/Object;
.source "ImFileManager.java"

# interfaces
.implements Lcom/sonymobile/jms/file/ImFileApi;


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mImResizedFilesDir:Ljava/io/File;

.field private mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/sonymobile/jms/setting/ImSettingManager;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "imSettingManager"    # Lcom/sonymobile/jms/setting/ImSettingManager;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/sonymobile/jms/file/ImFileManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 63
    invoke-direct {p0}, Lcom/sonymobile/jms/file/ImFileManager;->init()V

    .line 64
    return-void
.end method

.method private closeIfExists(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private correctOrientation(Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/rcs/utils/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 106
    .local v7, "orientation":I
    invoke-static {v7}, Lcom/sonymobile/rcs/utils/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 107
    .local v5, "rotationalMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object p2

    .line 108
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p2

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 110
    .local v8, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 111
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    move-object p2, v8

    goto :goto_0
.end method

.method private decodeBoundsInfo(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 98
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 100
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 101
    return-object v0
.end method

.method private generateUniqueFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Image"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    const-string/jumbo v1, "im_resized_images_dir"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/file/ImFileManager;->mImResizedFilesDir:Ljava/io/File;

    .line 71
    return-void
.end method

.method private internalBitmapResize(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "scaleFactor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToResizeImageException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    .local v1, "bitmapInputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .local v3, "scaledBitmapDecodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    iput p2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    iget-object v4, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "bitmapInputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 127
    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 129
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/file/ImFileManager;->closeIfExists(Ljava/io/Closeable;)V

    return-object v0

    .line 130
    :cond_0
    :try_start_1
    new-instance v4, Lcom/sonymobile/jms/file/UnableToResizeImageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to decode file \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/jms/file/UnableToResizeImageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapInputStream":Ljava/io/InputStream;
    .end local v3    # "scaledBitmapDecodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/sonymobile/jms/file/UnableToResizeImageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to decode uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/jms/file/UnableToResizeImageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 139
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/file/ImFileManager;->closeIfExists(Ljava/io/Closeable;)V

    throw v4
.end method

.method private isResizedFile(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "file"

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/jms/file/ImFileManager;->mImResizedFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 76
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return v3
.end method


# virtual methods
.method public asImFile(Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;
    .locals 8
    .param p1, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    .line 182
    .local v2, "fileSize":J
    iget-object v0, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .local v4, "filename":Ljava/lang/String;
    move-object v0, p0

    move-object v5, p1

    .line 183
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/jms/file/ImFileManager;->asLocalFile(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "fileSize":J
    .end local v4    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 186
    .local v6, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v0, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unable to convert fileUri \'"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\' into an ImFile!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v6}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public asLocalFile(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 146
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sonymobile/jms/file/ImFile;->createLocalFile(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v0

    return-object v0
.end method

.method public asRemoteFile(Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p1, p2, p3, p4}, Lcom/sonymobile/jms/file/ImFile;->createRemoteFile(Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v0

    return-object v0
.end method

.method public assertFileExists(Landroid/net/Uri;)V
    .locals 5
    .param p1, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 162
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v1}, Lcom/sonymobile/jms/file/ImFileManager;->closeIfExists(Ljava/io/Closeable;)V

    .line 164
    return-void

    .line 163
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    new-instance v2, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to open input stream to file uri \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 162
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/file/ImFileManager;->closeIfExists(Ljava/io/Closeable;)V

    throw v2
.end method

.method public assertFileIsNotTooBig(J)V
    .locals 5
    .param p1, "fileSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/FileTooBigException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v2, p0, Lcom/sonymobile/jms/file/ImFileManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v2}, Lcom/sonymobile/jms/setting/ImSettingManager;->getFileMaxSize()I

    move-result v2

    int-to-long v0, v2

    .line 168
    .local v0, "maxFileSize":J
    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    .line 169
    new-instance v2, Lcom/sonymobile/jms/file/FileTooBigException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "File is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes which exceeds the max size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/file/FileTooBigException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public ensureResizedFileRemoved(Landroid/net/Uri;)V
    .locals 5
    .param p1, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToDeleteFileException;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/file/ImFileManager;->isResizedFile(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 312
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    return-void

    .line 309
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void

    .line 313
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    return-void

    .line 316
    :cond_2
    new-instance v2, Lcom/sonymobile/jms/file/UnableToDeleteFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to delete the resized file for fileUri \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/file/UnableToDeleteFileException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Lcom/sonymobile/jms/file/UnableToDeleteFileException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid Uri \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/file/UnableToDeleteFileException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public getRecommendedScaleFactor(Landroid/net/Uri;)I
    .locals 9
    .param p1, "imageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToDecodeImageException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x500

    const/4 v0, 0x0

    .line 223
    .local v0, "boundsInputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 224
    .local v0, "boundsInputStream":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/file/ImFileManager;->decodeBoundsInfo(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 225
    .local v3, "decodeBoundsOptions":Landroid/graphics/BitmapFactory$Options;
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 226
    .local v2, "currentWidth":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .local v1, "currentHeight":I
    const/4 v5, 0x1

    .line 231
    .local v5, "scaleFactor":I
    :goto_0
    div-int v6, v2, v5

    if-le v6, v7, :cond_1

    .line 232
    :cond_0
    mul-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 231
    :cond_1
    div-int v6, v1, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v6, v7, :cond_0

    .line 240
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/file/ImFileManager;->closeIfExists(Ljava/io/Closeable;)V

    return v5

    .end local v0    # "boundsInputStream":Ljava/io/InputStream;
    .end local v1    # "currentHeight":I
    .end local v2    # "currentWidth":I
    .end local v3    # "decodeBoundsOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scaleFactor":I
    :catch_0
    move-exception v4

    .line 237
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Lcom/sonymobile/jms/file/UnableToDecodeImageException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to decode uri \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/jms/file/UnableToDecodeImageException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 240
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/file/ImFileManager;->closeIfExists(Ljava/io/Closeable;)V

    throw v6
.end method

.method public isFileBiggerThanMaxSize(Landroid/net/Uri;)Z
    .locals 8
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    iget-object v4, p0, Lcom/sonymobile/jms/file/ImFileManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getFileMaxSize()I

    move-result v1

    .line 195
    .local v1, "maxFileTransferSize":I
    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    move v4, v2

    :goto_0
    if-nez v4, :cond_2

    :goto_1
    return v2

    .line 196
    :cond_0
    return v3

    :cond_1
    move v4, v3

    .line 199
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    return v3
.end method

.method public isFileBiggerThanWarnSize(Landroid/net/Uri;)Z
    .locals 8
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    iget-object v4, p0, Lcom/sonymobile/jms/file/ImFileManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v4}, Lcom/sonymobile/jms/setting/ImSettingManager;->getFileWarningSize()I

    move-result v1

    .line 208
    .local v1, "warnFileTransferSize":I
    if-eqz v1, :cond_0

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    move v4, v2

    :goto_0
    if-nez v4, :cond_2

    :goto_1
    return v2

    .line 209
    :cond_0
    return v3

    :cond_1
    move v4, v3

    .line 212
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    return v3
.end method

.method public resizeImage(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 13
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "scaleFactor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/file/UnableToResizeImageException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 247
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/jms/file/ImFileManager;->internalBitmapResize(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/jms/file/ImFileManager;->correctOrientation(Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    new-instance v3, Ljava/io/File;

    iget-object v11, p0, Lcom/sonymobile/jms/file/ImFileManager;->mImResizedFilesDir:Ljava/io/File;

    const-string/jumbo v12, "jpg"

    invoke-direct {p0, v12}, Lcom/sonymobile/jms/file/ImFileManager;->generateUniqueFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "resizedImage":Ljava/io/File;
    const/4 v8, 0x0

    .line 262
    .local v8, "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/sonymobile/jms/file/ImFileManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 264
    .local v4, "originalFileSize":J
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 268
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .end local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .local v9, "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v12, 0x4b

    :try_start_2
    invoke-virtual {v0, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 272
    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_2
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v6

    .line 273
    .local v6, "resizedFileSize":J
    cmp-long v11, v6, v4

    if-gtz v11, :cond_0

    const/4 v10, 0x1

    :cond_0
    if-nez v10, :cond_5

    .line 274
    :try_start_3
    invoke-direct {p0, v9}, Lcom/sonymobile/jms/file/ImFileManager;->closeIfExists(Ljava/io/Closeable;)V

    .line 275
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 280
    :goto_0
    new-instance v10, Lcom/sonymobile/jms/file/UnableToResizeImageException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to reduce \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' reduced file bigger than the original!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sonymobile/jms/file/UnableToResizeImageException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 300
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 286
    .end local v4    # "originalFileSize":J
    .end local v6    # "resizedFileSize":J
    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .local v1, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :goto_1
    :try_start_4
    new-instance v10, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unable to determine the size of image uri \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 291
    .end local v1    # "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    :catchall_0
    move-exception v10

    .line 297
    :goto_2
    invoke-direct {p0, v8}, Lcom/sonymobile/jms/file/ImFileManager;->closeIfExists(Ljava/io/Closeable;)V

    .line 298
    if-nez v0, :cond_8

    .line 300
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_3
    throw v10

    .line 248
    .end local v3    # "resizedImage":Ljava/io/File;
    :cond_2
    new-instance v10, Lcom/sonymobile/jms/file/UnableToResizeImageException;

    const-string/jumbo v11, "Could not find external storage to save file to!"

    invoke-direct {v10, v11}, Lcom/sonymobile/jms/file/UnableToResizeImageException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 265
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "resizedImage":Ljava/io/File;
    .restart local v4    # "originalFileSize":J
    .restart local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    new-instance v10, Lcom/sonymobile/jms/file/UnableToResizeImageException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Could not create file \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sonymobile/jms/file/UnableToResizeImageException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 300
    .end local v4    # "originalFileSize":J
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "originalFileSize":J
    .restart local v6    # "resizedFileSize":J
    .restart local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_6
    const-string/jumbo v10, "Failed to delete the resized image file for fileUri \'"

    .line 277
    invoke-static {v10}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    const-string/jumbo v11, "\'!"

    invoke-virtual {v10, v11}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V
    :try_end_6
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_0

    .line 286
    :catch_2
    move-exception v2

    move-object v8, v9

    .line 291
    .end local v4    # "originalFileSize":J
    .end local v6    # "resizedFileSize":J
    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    new-instance v10, Lcom/sonymobile/jms/file/UnableToResizeImageException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unable to create a file output stream to image \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\' for image uri \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sonymobile/jms/file/UnableToResizeImageException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 283
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "originalFileSize":J
    .restart local v6    # "resizedFileSize":J
    .restart local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_8
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_8
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v10

    .line 297
    invoke-direct {p0, v9}, Lcom/sonymobile/jms/file/ImFileManager;->closeIfExists(Ljava/io/Closeable;)V

    .line 298
    if-nez v0, :cond_7

    .line 300
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_5
    return-object v10

    .line 298
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_6

    .line 299
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 300
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 298
    .end local v4    # "originalFileSize":J
    .end local v6    # "resizedFileSize":J
    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_1

    .line 299
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 300
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 291
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "originalFileSize":J
    .restart local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .local v8, "resizedImageOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "resizedFileSize":J
    .restart local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 286
    .end local v4    # "originalFileSize":J
    .end local v6    # "resizedFileSize":J
    .local v8, "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    goto :goto_4

    .end local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "originalFileSize":J
    .restart local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v8, v9

    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .local v8, "resizedImageOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v8, v9

    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 300
    .end local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v8, v9

    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v8, v9

    .end local v9    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "resizedImageOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method
