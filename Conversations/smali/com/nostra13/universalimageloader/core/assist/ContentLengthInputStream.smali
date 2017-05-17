.class public Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# instance fields
.field private final length:J

.field private pos:J

.field private final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    .line 36
    iput-wide p2, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->length:J

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 4

    .prologue
    monitor-enter p0

    .line 41
    :try_start_0
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->length:J

    iget-wide v2, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 47
    return-void
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->pos:J

    .line 52
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 53
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->pos:J

    .line 58
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 63
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->pos:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->pos:J

    .line 69
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 74
    :try_start_0
    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->pos:J

    .line 75
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 76
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->pos:J

    .line 81
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
