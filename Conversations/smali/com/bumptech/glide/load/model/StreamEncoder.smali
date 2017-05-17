.class public Lcom/bumptech/glide/load/model/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 6
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v5, 0x0

    .line 20
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v0

    .line 23
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 33
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    .line 24
    :try_start_1
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    .end local v2    # "read":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v3, "StreamEncoder"

    const/4 v4, 0x3

    .line 28
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 33
    :goto_1
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    return v5

    :cond_1
    :try_start_3
    const-string/jumbo v3, "StreamEncoder"

    const-string/jumbo v4, "Failed to encode data onto the OutputStream"

    .line 29
    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 33
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    throw v3
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 15
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/StreamEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 39
    return-object v0
.end method
