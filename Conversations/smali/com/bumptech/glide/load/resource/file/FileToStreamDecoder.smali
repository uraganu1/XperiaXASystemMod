.class public Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;


# instance fields
.field private final fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

.field private streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "streamDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    sget-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V
    .locals 0
    .param p2, "fileOpener"    # Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "streamDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    .line 31
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p1, "source"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 38
    .local v2, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;->open(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    .line 39
    .local v1, "is":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3, v1, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 41
    .local v2, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    if-nez v1, :cond_0

    .line 49
    :goto_0
    return-object v2

    .line 43
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    :catchall_0
    move-exception v3

    .line 41
    if-nez v1, :cond_1

    .line 46
    :goto_1
    throw v3

    .line 43
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 46
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 54
    return-object v0
.end method
