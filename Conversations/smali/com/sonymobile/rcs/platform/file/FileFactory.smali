.class public abstract Lcom/sonymobile/rcs/platform/file/FileFactory;
.super Ljava/lang/Object;
.source "FileFactory.java"


# static fields
.field private static factory:Lcom/sonymobile/rcs/platform/file/FileFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/sonymobile/rcs/platform/file/FileFactory;->factory:Lcom/sonymobile/rcs/platform/file/FileFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 163
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    return v2
.end method

.method public static getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sonymobile/rcs/platform/file/FileFactory;->factory:Lcom/sonymobile/rcs/platform/file/FileFactory;

    return-object v0
.end method

.method public static loadFactory(Ljava/lang/String;)V
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/platform/FactoryException;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v1, Lcom/sonymobile/rcs/platform/file/FileFactory;->factory:Lcom/sonymobile/rcs/platform/file/FileFactory;

    if-nez v1, :cond_0

    .line 59
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/platform/file/FileFactory;

    sput-object v1, Lcom/sonymobile/rcs/platform/file/FileFactory;->factory:Lcom/sonymobile/rcs/platform/file/FileFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 55
    :cond_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/platform/FactoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t load the factory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/platform/FactoryException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract fileExists(Ljava/lang/String;)Z
.end method

.method public abstract getFileDescription(Landroid/net/Uri;)Lcom/sonymobile/rcs/platform/file/FileDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation
.end method

.method public abstract openFileInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openFileOutputStream(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openFileOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateMediaStorage(Ljava/lang/String;)V
.end method
