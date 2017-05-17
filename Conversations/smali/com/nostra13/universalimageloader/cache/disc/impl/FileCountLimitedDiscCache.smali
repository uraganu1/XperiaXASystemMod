.class public Lcom/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache;
.super Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
.source "FileCountLimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .param p3, "maxFileCount"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected getSize(Ljava/io/File;)I
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x1

    .line 56
    return v0
.end method
