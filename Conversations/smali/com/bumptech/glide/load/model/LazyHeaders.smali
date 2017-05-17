.class public final Lcom/bumptech/glide/load/model/LazyHeaders;
.super Ljava/lang/Object;
.source "LazyHeaders.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;,
        Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    }
.end annotation


# instance fields
.field private volatile combinedHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    .line 26
    return-void
.end method

.method private generateHeaders()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "combinedHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 57
    return-object v0

    .line 44
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
    const/4 v4, 0x0

    .line 47
    .local v4, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/model/LazyHeaderFactory;

    .line 49
    .local v3, "factory":Lcom/bumptech/glide/load/model/LazyHeaderFactory;
    invoke-interface {v3}, Lcom/bumptech/glide/load/model/LazyHeaderFactory;->buildHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_2

    .line 47
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 51
    :cond_2
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 69
    instance-of v1, p1, Lcom/bumptech/glide/load/model/LazyHeaders;

    if-nez v1, :cond_0

    .line 73
    return v2

    :cond_0
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 71
    .local v0, "other":Lcom/bumptech/glide/load/model/LazyHeaders;
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    iget-object v2, v0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    return-object v0

    .line 31
    :cond_0
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 35
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 33
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders;->generateHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->combinedHeaders:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LazyHeaders{headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
