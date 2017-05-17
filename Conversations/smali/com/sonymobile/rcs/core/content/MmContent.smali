.class public abstract Lcom/sonymobile/rcs/core/content/MmContent;
.super Ljava/lang/Object;
.source "MmContent.java"


# instance fields
.field private data:[B

.field private encoding:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private hasUri:Z

.field private out:Ljava/io/BufferedOutputStream;

.field private pfd:Landroid/os/ParcelFileDescriptor;

.field private size:J

.field private uri:Landroid/net/Uri;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->data:[B

    .line 65
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    .line 70
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->uri:Landroid/net/Uri;

    .line 75
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->filename:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->uri:Landroid/net/Uri;

    .line 116
    iput-object p2, p0, Lcom/sonymobile/rcs/core/content/MmContent;->encoding:Ljava/lang/String;

    .line 117
    iput-wide p3, p0, Lcom/sonymobile/rcs/core/content/MmContent;->size:J

    .line 118
    iput-object p5, p0, Lcom/sonymobile/rcs/core/content/MmContent;->filename:Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->data:[B

    .line 65
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    .line 70
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->uri:Landroid/net/Uri;

    .line 75
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->filename:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/content/MmContent;->setUrl(Ljava/lang/String;)V

    .line 88
    iput-object p2, p0, Lcom/sonymobile/rcs/core/content/MmContent;->encoding:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 89
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->size:J

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->data:[B

    .line 65
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    .line 70
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->uri:Landroid/net/Uri;

    .line 75
    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->filename:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/core/content/MmContent;->setUrl(Ljava/lang/String;)V

    .line 102
    iput-object p2, p0, Lcom/sonymobile/rcs/core/content/MmContent;->encoding:Ljava/lang/String;

    .line 103
    iput-wide p3, p0, Lcom/sonymobile/rcs/core/content/MmContent;->size:J

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    .line 105
    return-void
.end method


# virtual methods
.method public closeFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_0

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->pfd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    .line 319
    :goto_1
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 308
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 309
    iput-object v1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    .line 310
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    if-nez v0, :cond_1

    .line 313
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/platform/file/FileFactory;->updateMediaStorage(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/platform/file/FileFactory;->updateMediaStorage(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_1
.end method

.method public deleteFile(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    if-nez v1, :cond_1

    .line 356
    :cond_0
    return-void

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 338
    iput-object v2, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    .line 341
    iget-boolean v1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    if-nez v1, :cond_2

    .line 346
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "file":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->data:[B

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getKbSize()J
    .locals 4

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->size:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->size:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    return v0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->data:[B

    .line 275
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->encoding:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->filename:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->uri:Landroid/net/Uri;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    .line 157
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->url:Ljava/lang/String;

    .line 167
    if-nez p1, :cond_0

    .line 176
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    .line 177
    return-void

    :cond_0
    const/16 v1, 0x2f

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    .line 170
    if-ne v0, v1, :cond_1

    .line 173
    iput-object p1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->filename:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->filename:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/core/content/MmContent;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/core/content/MmContent;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeData2File([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 284
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 298
    return-void

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->hasUri:Z

    if-nez v0, :cond_1

    .line 293
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/platform/file/FileFactory;->openFileOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    goto :goto_0

    .line 286
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/content/MmContent;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "w"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 289
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/content/MmContent;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/content/MmContent;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/platform/file/FileFactory;->openFileOutputStream(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/content/MmContent;->out:Ljava/io/BufferedOutputStream;

    goto :goto_0
.end method
