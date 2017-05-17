.class public Lcom/bumptech/glide/util/MarkEnforcingInputStream;
.super Ljava/io/FilterInputStream;
.source "MarkEnforcingInputStream.java"


# instance fields
.field private availableBytes:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 v0, -0x80000000

    .line 14
    iput v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 18
    return-void
.end method

.method private getBytesToRead(J)J
    .locals 5
    .param p1, "targetByteCount"    # J

    .prologue
    const/4 v0, 0x0

    .line 73
    iget v1, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    if-eqz v1, :cond_1

    .line 75
    iget v1, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 78
    :cond_0
    return-wide p1

    :cond_1
    const-wide/16 v0, -0x1

    .line 74
    return-wide v0

    .line 75
    :cond_2
    iget v1, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_0

    .line 76
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private updateAvailableBytesAfterRead(J)V
    .locals 3
    .param p1, "bytesRead"    # J

    .prologue
    .line 83
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, -0x1

    .line 83
    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    .line 22
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 23
    iput p1, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 24
    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    .line 28
    invoke-direct {p0, v6, v7}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->getBytesToRead(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 29
    return v1

    .line 32
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 33
    .local v0, "result":I
    invoke-direct {p0, v6, v7}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->updateAvailableBytesAfterRead(J)V

    .line 34
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 39
    int-to-long v2, p3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->getBytesToRead(J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 40
    .local v1, "toRead":I
    if-eq v1, v4, :cond_0

    .line 44
    invoke-super {p0, p1, p2, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 45
    .local v0, "read":I
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->updateAvailableBytesAfterRead(J)V

    .line 46
    return v0

    .line 41
    .end local v0    # "read":I
    :cond_0
    return v4
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    const/high16 v0, -0x80000000

    .line 52
    iput v0, p0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->availableBytes:I

    .line 53
    return-void
.end method

.method public skip(J)J
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->getBytesToRead(J)J

    move-result-wide v2

    .line 58
    .local v2, "toSkip":J
    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    .line 59
    return-wide v6

    .line 62
    :cond_0
    invoke-super {p0, v2, v3}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 63
    .local v0, "read":J
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->updateAvailableBytesAfterRead(J)V

    .line 64
    return-wide v0
.end method
