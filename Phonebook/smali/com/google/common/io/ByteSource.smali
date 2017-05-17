.class public abstract Lcom/google/common/io/ByteSource;
.super Ljava/lang/Object;
.source "ByteSource.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteSource$AsCharSource;,
        Lcom/google/common/io/ByteSource$SlicedByteSource;,
        Lcom/google/common/io/ByteSource$ByteArrayByteSource;,
        Lcom/google/common/io/ByteSource$EmptyByteSource;,
        Lcom/google/common/io/ByteSource$ConcatenatedByteSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final countBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/io/ByteSource;->countBuffer:[B

    .line 59
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/io/ByteSource;>;"
    new-instance v0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Lcom/google/common/io/ByteSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/io/ByteSource;>;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lcom/google/common/io/ByteSource;)Lcom/google/common/io/ByteSource;
    .locals 1
    .param p0, "sources"    # [Lcom/google/common/io/ByteSource;

    .prologue
    .line 399
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method private countByReading(Ljava/io/InputStream;)J
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    .line 216
    .local v0, "count":J
    :goto_0
    sget-object v4, Lcom/google/common/io/ByteSource;->countBuffer:[B

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    int-to-long v2, v4

    .local v2, "read":J
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 217
    add-long/2addr v0, v2

    goto :goto_0

    .line 219
    :cond_0
    return-wide v0
.end method

.method private countBySkipping(Ljava/io/InputStream;)J
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 191
    const-wide/16 v0, 0x0

    .line 195
    .local v0, "count":J
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    const v5, 0x7fffffff

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 196
    .local v2, "skipped":J
    cmp-long v4, v2, v6

    if-gtz v4, :cond_2

    .line 197
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 198
    return-wide v0

    .line 199
    :cond_0
    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-nez v4, :cond_1

    .line 202
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 204
    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 206
    :cond_2
    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public static empty()Lcom/google/common/io/ByteSource;
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/google/common/io/ByteSource$EmptyByteSource;->-get0()Lcom/google/common/io/ByteSource$EmptyByteSource;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([B)Lcom/google/common/io/ByteSource;
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 409
    new-instance v0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 73
    new-instance v0, Lcom/google/common/io/ByteSource$AsCharSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/ByteSource$AsCharSource;-><init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;Lcom/google/common/io/ByteSource$AsCharSource;)V

    return-object v0
.end method

.method public contentEquals(Lcom/google/common/io/ByteSource;)Z
    .locals 12
    .param p1, "other"    # Lcom/google/common/io/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x1000

    .line 324
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-array v0, v10, [B

    .line 327
    .local v0, "buf1":[B
    new-array v1, v10, [B

    .line 329
    .local v1, "buf2":[B
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v2

    .line 331
    .local v2, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 332
    .local v4, "in1":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    .line 334
    .local v5, "in2":Ljava/io/InputStream;
    :cond_0
    const/4 v8, 0x0

    const/16 v9, 0x1000

    invoke-static {v4, v0, v8, v9}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v6

    .line 335
    .local v6, "read1":I
    const/4 v8, 0x0

    const/16 v9, 0x1000

    invoke-static {v5, v1, v8, v9}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v7

    .line 336
    .local v7, "read2":I
    if-ne v6, v7, :cond_1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 338
    if-eq v6, v10, :cond_0

    .line 339
    const/4 v8, 0x1

    .line 345
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 339
    return v8

    .line 345
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 337
    return v11

    .line 342
    .end local v4    # "in1":Ljava/io/InputStream;
    .end local v5    # "in2":Ljava/io/InputStream;
    .end local v6    # "read1":I
    .end local v7    # "read2":I
    :catch_0
    move-exception v3

    .line 343
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    .line 345
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    .line 344
    throw v8
.end method

.method public copyTo(Lcom/google/common/io/ByteSink;)J
    .locals 6
    .param p1, "sink"    # Lcom/google/common/io/ByteSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 254
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 255
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;

    .line 256
    .local v3, "out":Ljava/io/OutputStream;
    invoke-static {v2, v3}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 260
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 256
    return-wide v4

    .line 257
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 260
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 259
    throw v4
.end method

.method public copyTo(Ljava/io/OutputStream;)J
    .locals 6
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 234
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 235
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 239
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 235
    return-wide v4

    .line 236
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 239
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 238
    throw v3
.end method

.method public final getInput()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->getInput()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .locals 2
    .param p1, "hashFunction"    # Lcom/google/common/hash/HashFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-interface {p1}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v0

    .line 312
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-static {v0}, Lcom/google/common/hash/Funnels;->asOutputStream(Lcom/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    .line 313
    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 140
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 141
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 145
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 141
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 142
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 145
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 144
    throw v3
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 115
    .local v0, "in":Ljava/io/InputStream;
    instance-of v1, v0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Ljava/io/BufferedInputStream;

    .line 115
    .end local v0    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 117
    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public abstract openStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read(Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 296
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 297
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 301
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 297
    return-object v3

    .line 298
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 301
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 300
    throw v3
.end method

.method public read()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 272
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 273
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 277
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 273
    return-object v3

    .line 274
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 277
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 276
    throw v3
.end method

.method public size()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 167
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 168
    .local v3, "in":Ljava/io/InputStream;
    invoke-direct {p0, v3}, Lcom/google/common/io/ByteSource;->countBySkipping(Ljava/io/InputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 172
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 168
    return-wide v4

    .line 169
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 175
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 177
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 178
    .restart local v3    # "in":Ljava/io/InputStream;
    invoke-direct {p0, v3}, Lcom/google/common/io/ByteSource;->countByReading(Ljava/io/InputStream;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 182
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 178
    return-wide v4

    .line 171
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .line 172
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 171
    throw v4

    .line 179
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    .line 182
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 181
    throw v4
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .locals 7
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .prologue
    .line 127
    new-instance v0, Lcom/google/common/io/ByteSource$SlicedByteSource;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/common/io/ByteSource$SlicedByteSource;-><init>(Lcom/google/common/io/ByteSource;JJLcom/google/common/io/ByteSource$SlicedByteSource;)V

    return-object v0
.end method
