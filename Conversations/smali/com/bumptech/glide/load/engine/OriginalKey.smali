.class Lcom/bumptech/glide/load/engine/OriginalKey;
.super Ljava/lang/Object;
.source "OriginalKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final id:Ljava/lang/String;

.field private final signature:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    if-eq p0, p1, :cond_1

    .line 26
    if-nez p1, :cond_2

    .line 27
    :cond_0
    return v3

    .line 24
    :cond_1
    return v4

    .line 26
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    move-object v0, p1

    .line 30
    check-cast v0, Lcom/bumptech/glide/load/engine/OriginalKey;

    .line 32
    .local v0, "that":Lcom/bumptech/glide/load/engine/OriginalKey;
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    return v4

    .line 33
    :cond_3
    return v3

    .line 36
    :cond_4
    return v3
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 45
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 46
    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 53
    return-void
.end method
