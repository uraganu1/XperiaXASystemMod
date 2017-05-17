.class public Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;
.super Lcom/sonymobile/rcs/platform/file/FileFactory;
.source "AndroidFileFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;
    }
.end annotation


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/rcs/platform/file/FileFactory;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public fileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public getFileDescription(Landroid/net/Uri;)Lcom/sonymobile/rcs/platform/file/FileDescription;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/sonymobile/rcs/platform/file/FileDescription;

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/sonymobile/rcs/platform/file/FileDescription;-><init>(Landroid/net/Uri;J)V

    return-object v0
.end method

.method public openFileInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 63
    .local v0, "inputStream":Ljava/io/InputStream;
    return-object v0
.end method

.method public openFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openFileOutputStream(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 98
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    return-object v0
.end method

.method public openFileOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public updateMediaStorage(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;-><init>(Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;Ljava/lang/String;)V

    .line 156
    .local v0, "scanner":Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;->scan()V

    .line 157
    return-void

    .line 153
    .end local v0    # "scanner":Lcom/sonymobile/rcs/platform/file/AndroidFileFactory$MyMediaScannerClient;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/platform/file/AndroidFileFactory;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating media storage with URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
