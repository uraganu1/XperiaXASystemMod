.class Lcom/google/gson/internal/bind/TypeAdapters$24;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$24;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Locale;
    .locals 8
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 610
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v5, v6, :cond_1

    .line 614
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "locale":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "_"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, "language":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "country":Ljava/lang/String;
    const/4 v4, 0x0

    .line 619
    .local v4, "variant":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 622
    .end local v1    # "language":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3

    .line 625
    .end local v0    # "country":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_4

    .line 628
    .end local v4    # "variant":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_5

    .line 630
    :cond_0
    if-eqz v4, :cond_6

    .line 633
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 611
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 612
    return-object v7

    .line 620
    .restart local v0    # "country":Ljava/lang/String;
    .restart local v1    # "language":Ljava/lang/String;
    .restart local v2    # "locale":Ljava/lang/String;
    .restart local v3    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v4    # "variant":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .local v1, "language":Ljava/lang/String;
    goto :goto_0

    .line 623
    .end local v1    # "language":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "country":Ljava/lang/String;
    goto :goto_1

    .line 626
    .end local v0    # "country":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .local v4, "variant":Ljava/lang/String;
    goto :goto_2

    .line 628
    .end local v4    # "variant":Ljava/lang/String;
    :cond_5
    if-nez v4, :cond_0

    .line 629
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 631
    :cond_6
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    check-cast p2, Ljava/util/Locale;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$24;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Locale;)V
    .locals 1
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 638
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 639
    return-void
.end method
