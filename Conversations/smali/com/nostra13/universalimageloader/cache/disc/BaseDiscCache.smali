.class public abstract Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;
.super Ljava/lang/Object;
.source "BaseDiscCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;


# instance fields
.field protected cacheDir:Ljava/io/File;

.field private fileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
    .locals 5
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 47
    if-eqz p2, :cond_1

    .line 51
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    .line 52
    iput-object p2, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->fileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 53
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\"%s\" argument must be not null"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "cacheDir"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\"%s\" argument must be not null"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "fileNameGenerator"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 63
    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 64
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 69
    :cond_0
    return-void

    .line 65
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 66
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->fileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
