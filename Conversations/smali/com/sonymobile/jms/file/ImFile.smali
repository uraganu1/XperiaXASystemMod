.class public final Lcom/sonymobile/jms/file/ImFile;
.super Ljava/lang/Object;
.source "ImFile.java"


# instance fields
.field private final mFileSize:J

.field private final mFileUri:Landroid/net/Uri;

.field private final mFilename:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/jms/file/ImFile;->mMimeType:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/sonymobile/jms/file/ImFile;->mFileSize:J

    .line 23
    iput-object p4, p0, Lcom/sonymobile/jms/file/ImFile;->mFilename:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/sonymobile/jms/file/ImFile;->mFileUri:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method static createLocalFile(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;
    .locals 7
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "fileSize"    # J
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 29
    new-instance v0, Lcom/sonymobile/jms/file/ImFile;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/jms/file/ImFile;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method static createRemoteFile(Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;
    .locals 7
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "fileSize"    # J
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/sonymobile/jms/file/ImFile;

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/jms/file/ImFile;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public getFileSize()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/sonymobile/jms/file/ImFile;->mFileSize:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/jms/file/ImFile;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/jms/file/ImFile;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/jms/file/ImFile;->mFileUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/jms/file/ImFile;->mFileUri:Landroid/net/Uri;

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/file/ImFile;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' does not have a specified uri!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
