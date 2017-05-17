.class public Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private quality:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v0, 0x5a

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 37
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    .line 38
    return-void
.end method

.method private getFormat(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0

    .line 63
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .locals 8
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 44
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 45
    .local v2, "start":J
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->getFormat(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    .line 46
    .local v1, "format":Landroid/graphics/Bitmap$CompressFormat;
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    invoke-virtual {v0, v1, v4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string/jumbo v4, "BitmapEncoder"

    const/4 v5, 0x2

    .line 47
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_0
    const-string/jumbo v4, "BitmapEncoder"

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Compressed with type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " of size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 25
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "BitmapEncoder.com.bumptech.glide.load.resource.bitmap"

    .line 56
    return-object v0
.end method
