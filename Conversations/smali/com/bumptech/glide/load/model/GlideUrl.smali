.class public Lcom/bumptech/glide/load/model/GlideUrl;
.super Ljava/lang/Object;
.source "GlideUrl.java"


# instance fields
.field private final headers:Lcom/bumptech/glide/load/model/Headers;

.field private safeStringUrl:Ljava/lang/String;

.field private safeUrl:Ljava/net/URL;

.field private final stringUrl:Ljava/lang/String;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/Headers;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # Lcom/bumptech/glide/load/model/Headers;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    if-eqz p2, :cond_1

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    .line 61
    iput-object p2, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    .line 62
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String url must not be empty or null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Headers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 33
    sget-object v0, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/Headers;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/Headers;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/Headers;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "headers"    # Lcom/bumptech/glide/load/model/Headers;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    .line 44
    if-eqz p2, :cond_1

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    .line 48
    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    .line 50
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URL must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Headers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSafeStringUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeStringUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeStringUrl:Ljava/lang/String;

    return-object v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    .line 98
    .local v0, "unsafeStringUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    const-string/jumbo v1, "@#&=*+-_.,:!?()/~\'%"

    .line 101
    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeStringUrl:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getSafeUrl()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeUrl:Ljava/net/URL;

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getSafeStringUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->safeUrl:Ljava/net/URL;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 131
    instance-of v2, p1, Lcom/bumptech/glide/load/model/GlideUrl;

    if-nez v2, :cond_0

    .line 136
    return v1

    :cond_0
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 133
    .local v0, "other":Lcom/bumptech/glide/load/model/GlideUrl;
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    iget-object v3, v0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->stringUrl:Ljava/lang/String;

    goto :goto_0
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
    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    invoke-interface {v0}, Lcom/bumptech/glide/load/model/Headers;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 142
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 143
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->headers:Lcom/bumptech/glide/load/model/Headers;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->getSafeUrl()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
