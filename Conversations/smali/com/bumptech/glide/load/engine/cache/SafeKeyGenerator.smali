.class Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# instance fields
.field private final loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/bumptech/glide/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    return-void
.end method


# virtual methods
.method public getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 19
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v5

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    .local v3, "safeKey":Ljava/lang/String;
    monitor-exit v5

    .line 22
    if-eqz v3, :cond_0

    .line 36
    :goto_0
    return-object v3

    .line 21
    .end local v3    # "safeKey":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3    # "safeKey":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "SHA-256"

    .line 24
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 25
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    invoke-interface {p1, v2}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 26
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/util/Util;->sha256BytesToHex([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 32
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :goto_1
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v5

    .line 33
    :try_start_2
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v4, p1, v3}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 31
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 31
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 30
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method
