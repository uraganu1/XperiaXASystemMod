.class public final Lcom/nostra13/universalimageloader/utils/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferExternal"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 68
    .local v0, "appCacheDir":Ljava/io/File;
    if-nez p1, :cond_1

    .line 72
    .end local v0    # "appCacheDir":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 75
    :goto_1
    if-eqz v0, :cond_3

    .line 80
    :goto_2
    return-object v0

    .restart local v0    # "appCacheDir":Ljava/io/File;
    :cond_1
    const-string/jumbo v2, "mounted"

    .line 68
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .local v0, "appCacheDir":Ljava/io/File;
    goto :goto_0

    .line 73
    .end local v0    # "appCacheDir":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "appCacheDir":Ljava/io/File;
    goto :goto_1

    .line 76
    .end local v0    # "appCacheDir":Ljava/io/File;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "cacheDirPath":Ljava/lang/String;
    const-string/jumbo v2, "Can\'t define system cache directory! \'%s\' will be used."

    const/4 v3, 0x1

    .line 77
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "appCacheDir":Ljava/io/File;
    goto :goto_2
.end method

.method private static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 122
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "Android"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "data"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v1, "dataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "cache"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v0, "appCacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    :goto_0
    return-object v0

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, ".nomedia"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "Can\'t create \".nomedia\" file in application external cache directory"

    .line 132
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    const-string/jumbo v3, "Unable to create external cache directory"

    .line 126
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 127
    return-object v3
.end method

.method public static getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uil-images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v1, "individualCacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v1

    .line 95
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    move-object v1, v0

    goto :goto_0
.end method

.method private static hasExternalStoragePermission(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 139
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "perm":I
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
