.class public final Lcom/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/Streams$1;,
        Lcom/google/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    .locals 1
    .param p0, "element"    # Lcom/google/gson/JsonElement;
    .param p1, "writer"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2
    .param p0, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 77
    instance-of v0, p0, Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/internal/Streams$AppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/google/gson/internal/Streams$1;)V

    move-object p0, v0

    .end local p0    # "appendable":Ljava/lang/Appendable;
    :goto_0
    return-object p0

    .restart local p0    # "appendable":Ljava/lang/Appendable;
    :cond_0
    check-cast p0, Ljava/io/Writer;

    goto :goto_0
.end method
