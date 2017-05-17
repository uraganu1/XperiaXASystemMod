.class Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamReader"
.end annotation


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    .line 331
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public getUInt16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getUInt8()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public read([B)I
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    array-length v1, p1

    .line 370
    .local v1, "toRead":I
    :goto_0
    if-gtz v1, :cond_1

    .line 373
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    return v2

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "read":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 371
    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 13
    .param p1, "total"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    .line 342
    cmp-long v3, p1, v10

    if-ltz v3, :cond_0

    move v3, v6

    :goto_0
    if-nez v3, :cond_1

    .line 343
    return-wide v10

    :cond_0
    move v3, v7

    .line 342
    goto :goto_0

    .line 346
    :cond_1
    move-wide v4, p1

    .line 347
    .local v4, "toSkip":J
    :goto_1
    cmp-long v3, v4, v10

    if-gtz v3, :cond_2

    move v3, v6

    :goto_2
    if-nez v3, :cond_5

    .line 348
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 349
    .local v0, "skipped":J
    cmp-long v3, v0, v10

    if-gtz v3, :cond_3

    move v3, v6

    :goto_3
    if-nez v3, :cond_4

    .line 350
    sub-long/2addr v4, v0

    goto :goto_1

    .end local v0    # "skipped":J
    :cond_2
    move v3, v7

    .line 347
    goto :goto_2

    .restart local v0    # "skipped":J
    :cond_3
    move v3, v7

    .line 349
    goto :goto_3

    .line 356
    :cond_4
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "testEofByte":I
    const/4 v3, -0x1

    .line 357
    if-eq v2, v3, :cond_5

    const-wide/16 v8, 0x1

    .line 360
    sub-long/2addr v4, v8

    goto :goto_1

    .line 364
    .end local v0    # "skipped":J
    .end local v2    # "testEofByte":I
    :cond_5
    sub-long v6, p1, v4

    return-wide v6
.end method
