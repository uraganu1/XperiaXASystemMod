.class public Lcom/sonyericsson/conversations/stickers/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    .line 79
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to close stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "sourceChannel":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 55
    .local v0, "destChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 56
    .local v1, "sourceChannel":Ljava/nio/channels/FileChannel;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 57
    .local v0, "destChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    .line 58
    .local v2, "pos":J
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v1}, Lcom/sonyericsson/conversations/stickers/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 63
    invoke-static {v0}, Lcom/sonyericsson/conversations/stickers/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 51
    return-void

    .line 61
    .end local v0    # "destChannel":Ljava/nio/channels/FileChannel;
    .end local v1    # "sourceChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "pos":J
    :catchall_0
    move-exception v4

    .line 62
    invoke-static {v1}, Lcom/sonyericsson/conversations/stickers/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 63
    invoke-static {v0}, Lcom/sonyericsson/conversations/stickers/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    throw v4
.end method
