.class Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SourceWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;TDataType;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TDataType;>;"
    .local p3, "data":Ljava/lang/Object;, "TDataType;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    .line 261
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    .line 262
    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 266
    const/4 v3, 0x0

    .local v3, "success":Z
    const/4 v2, 0x0

    .line 269
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    # getter for: Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    invoke-static {v4}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;->open(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v2

    .line 270
    .local v2, "os":Ljava/io/OutputStream;
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    invoke-interface {v4, v5, v2}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 276
    .local v3, "success":Z
    if-nez v2, :cond_1

    .line 284
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "success":Z
    :cond_0
    :goto_0
    return v3

    .line 278
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "success":Z
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 279
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "success":Z
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    .local v3, "success":Z
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string/jumbo v4, "DecodeJob"

    const/4 v5, 0x3

    .line 272
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 276
    :goto_2
    if-eqz v2, :cond_0

    .line 278
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 281
    :catch_2
    move-exception v1

    goto :goto_1

    :cond_2
    :try_start_4
    const-string/jumbo v4, "DecodeJob"

    const-string/jumbo v5, "Failed to find file to write to disk cache"

    .line 273
    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 281
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    .line 276
    if-nez v2, :cond_3

    .line 281
    :goto_3
    throw v4

    .line 278
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 281
    :catch_3
    move-exception v5

    goto :goto_3
.end method
