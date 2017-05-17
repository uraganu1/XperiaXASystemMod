.class public abstract Lcom/google/common/io/CharSink;
.super Ljava/lang/Object;
.source "CharSink.java"

# interfaces
.implements Lcom/google/common/io/OutputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/OutputSupplier",
        "<",
        "Ljava/io/Writer;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutput()Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->getOutput()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public openBufferedStream()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v0

    .line 95
    .local v0, "writer":Ljava/io/Writer;
    instance-of v1, v0, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Ljava/io/BufferedWriter;

    .line 95
    .end local v0    # "writer":Ljava/io/Writer;
    :goto_0
    return-object v0

    .line 97
    .restart local v0    # "writer":Ljava/io/Writer;
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public abstract openStream()Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 110
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Writer;

    .line 111
    .local v2, "out":Ljava/io/Writer;
    invoke-virtual {v2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 112
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 105
    return-void

    .line 113
    .end local v2    # "out":Ljava/io/Writer;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 116
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 115
    throw v3
.end method

.method public writeFrom(Ljava/lang/Readable;)J
    .locals 6
    .param p1, "readable"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 168
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Writer;

    .line 169
    .local v2, "out":Ljava/io/Writer;
    invoke-static {p1, v2}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v4

    .line 170
    .local v4, "written":J
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 171
    return-wide v4

    .line 172
    .end local v2    # "out":Ljava/io/Writer;
    .end local v4    # "written":J
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 175
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 174
    throw v3
.end method

.method public writeLines(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/CharSink;->writeLines(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public writeLines(Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 6
    .param p2, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 144
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openBufferedStream()Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    check-cast v4, Ljava/io/Writer;

    .line 145
    .local v4, "out":Ljava/io/Writer;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "line$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 146
    .local v2, "line":Ljava/lang/CharSequence;
    invoke-virtual {v4, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    .end local v2    # "line":Ljava/lang/CharSequence;
    .end local v3    # "line$iterator":Ljava/util/Iterator;
    .end local v4    # "out":Ljava/io/Writer;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 152
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 151
    throw v5

    .line 148
    .restart local v3    # "line$iterator":Ljava/util/Iterator;
    .restart local v4    # "out":Ljava/io/Writer;
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 138
    return-void
.end method
