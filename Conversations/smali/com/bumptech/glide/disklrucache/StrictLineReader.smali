.class Lcom/bumptech/glide/disklrucache/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_1
    if-eqz p3, :cond_0

    .line 90
    if-ltz p2, :cond_2

    .line 93
    sget-object v0, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 98
    iput-object p3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 99
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 100
    return-void

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/16 v0, 0x2000

    .line 72
    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/disklrucache/StrictLineReader;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/StrictLineReader;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private fillBuf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "result":I
    const/4 v1, -0x1

    .line 189
    if-eq v0, v1, :cond_0

    .line 192
    iput v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 193
    iput v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 194
    return-void

    .line 190
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    if-nez v0, :cond_0

    .line 114
    :goto_0
    monitor-exit v1

    .line 115
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasUnterminatedLine()Z
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 126
    iget-object v5, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v5

    .line 127
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    if-eqz v4, :cond_1

    .line 134
    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-ge v4, v6, :cond_2

    .line 138
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-ne v0, v4, :cond_3

    .line 148
    new-instance v2, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;

    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    iget v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;-><init>(Lcom/bumptech/glide/disklrucache/StrictLineReader;I)V

    .line 161
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v7, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    iget v8, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v4, -0x1

    .line 163
    iput v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    .line 164
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    .line 166
    iget v0, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    :goto_2
    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    if-eq v0, v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-eq v4, v9, :cond_7

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    .end local v0    # "i":I
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :catchall_0
    move-exception v4

    .line 176
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 135
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->fillBuf()V

    goto :goto_0

    .line 139
    .restart local v0    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-eq v4, v9, :cond_4

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_4
    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    if-ne v0, v4, :cond_6

    :cond_5
    move v1, v0

    .line 141
    .local v1, "lineEnd":I
    :goto_3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v7, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 142
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 143
    monitor-exit v5

    return-object v3

    .line 140
    .end local v1    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_5

    add-int/lit8 v1, v0, -0x1

    goto :goto_3

    .line 168
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_7
    iget v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    if-ne v0, v4, :cond_8

    .line 171
    :goto_4
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    .line 172
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 169
    :cond_8
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    iget v7, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader;->pos:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method
