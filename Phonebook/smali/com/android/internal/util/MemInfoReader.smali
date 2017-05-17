.class public Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field private mCachedSize:J

.field private mFreeSize:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    .line 28
    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 49
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 50
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 51
    move v0, p2

    .line 52
    .local v0, "start":I
    add-int/lit8 p2, p2, 0x1

    .line 53
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    .line 54
    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 55
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/String;

    sub-int v2, p2, v0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v0, v2}, Ljava/lang/String;-><init>([BIII)V

    .line 58
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    return-wide v2

    .line 60
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 62
    :cond_2
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 37
    .local v0, "N":I
    add-int v2, p2, v0

    array-length v3, p1

    if-lt v2, v3, :cond_0

    .line 38
    return v4

    .line 40
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 41
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 42
    return v4

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_2
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public getCachedSize()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 10

    .prologue
    .line 69
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 71
    .local v7, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v8, 0x0

    :try_start_0
    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    .line 72
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    .line 73
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, "len":I
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/proc/meminfo"

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 80
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 82
    :goto_0
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    array-length v0, v8

    .line 83
    .local v0, "BUFLEN":I
    const/4 v1, 0x0

    .line 84
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_4

    const/4 v8, 0x3

    if-ge v1, v8, :cond_4

    .line 85
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string/jumbo v9, "MemTotal"

    invoke-direct {p0, v8, v4, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 86
    add-int/lit8 v4, v4, 0x8

    .line 87
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v4}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 98
    :cond_0
    :goto_2
    if-ge v4, v0, :cond_3

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    aget-byte v8, v8, v4

    const/16 v9, 0xa

    if-eq v8, v9, :cond_3

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 78
    .end local v0    # "BUFLEN":I
    .end local v1    # "count":I
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 102
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    :catch_1
    move-exception v2

    .line 105
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 65
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    .line 79
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :catchall_0
    move-exception v8

    .line 80
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 79
    throw v8
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    :catch_2
    move-exception v3

    .line 105
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3

    .line 89
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "BUFLEN":I
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :cond_1
    :try_start_4
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string/jumbo v9, "MemFree"

    invoke-direct {p0, v8, v4, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 90
    add-int/lit8 v4, v4, 0x7

    .line 91
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v4}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    :cond_2
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string/jumbo v9, "Cached"

    invoke-direct {p0, v8, v4, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    add-int/lit8 v4, v4, 0x6

    .line 95
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v4}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    :cond_4
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3

    .line 104
    .end local v0    # "BUFLEN":I
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    :catchall_1
    move-exception v8

    .line 105
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 104
    throw v8
.end method
