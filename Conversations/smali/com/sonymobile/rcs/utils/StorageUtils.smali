.class public Lcom/sonymobile/rcs/utils/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageFreeSpace()J
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    .local v4, "freeSpace":J
    const-string/jumbo v7, "mounted"

    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 59
    :goto_0
    return-wide v4

    .line 54
    :cond_0
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 55
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 56
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 57
    .local v0, "availableBlocks":J
    mul-long v4, v2, v0

    goto :goto_0
.end method
