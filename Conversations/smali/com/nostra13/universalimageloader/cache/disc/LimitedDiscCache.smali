.class public abstract Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
.super Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;
.source "LimitedDiscCache.java"


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .param p3, "sizeLimit"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    .line 67
    iput p3, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->calculateCacheSizeAndFillUsageMap()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private calculateCacheSizeAndFillUsageMap()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;

    invoke-direct {v1, p0}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1;-><init>(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method private removeNext()I
    .locals 16

    .prologue
    const/4 v10, 0x0

    .line 126
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v8, 0x0

    .local v8, "oldestUsage":Ljava/lang/Long;
    const/4 v7, 0x0

    .line 131
    .local v7, "mostLongUsedFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 132
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    monitor-enter v11

    .line 133
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v7    # "mostLongUsedFile":Ljava/io/File;
    .end local v8    # "oldestUsage":Ljava/lang/Long;
    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 145
    monitor-exit v11

    const/4 v4, 0x0

    .line 148
    .local v4, "fileSize":I
    if-nez v7, :cond_6

    .line 158
    :cond_1
    :goto_1
    return v4

    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    .end local v4    # "fileSize":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v9, -0x1

    .line 127
    return v9

    .line 133
    .restart local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 134
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-eqz v7, :cond_4

    .line 138
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 139
    .local v6, "lastValueUsage":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-ltz v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_0

    .line 140
    move-object v8, v6

    .line 141
    .local v8, "oldestUsage":Ljava/lang/Long;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    .local v7, "mostLongUsedFile":Ljava/io/File;
    goto :goto_0

    .line 135
    .end local v6    # "lastValueUsage":Ljava/lang/Long;
    .end local v7    # "mostLongUsedFile":Ljava/io/File;
    .end local v8    # "oldestUsage":Ljava/lang/Long;
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    .line 136
    .restart local v7    # "mostLongUsedFile":Ljava/io/File;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    move-object v8, v0

    .restart local v8    # "oldestUsage":Ljava/lang/Long;
    goto :goto_0

    .end local v7    # "mostLongUsedFile":Ljava/io/File;
    .end local v8    # "oldestUsage":Ljava/lang/Long;
    .restart local v6    # "lastValueUsage":Ljava/lang/Long;
    :cond_5
    move v9, v10

    .line 139
    goto :goto_2

    .line 145
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "lastValueUsage":Ljava/lang/Long;
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 149
    .restart local v4    # "fileSize":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    .line 155
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 150
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v4

    .line 151
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 121
    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->clear()V

    .line 122
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 110
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 111
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 112
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v1
.end method

.method protected abstract getSize(Ljava/io/File;)I
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 91
    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v3

    .line 92
    .local v3, "valueSize":I
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 94
    .local v0, "curCacheSize":I
    :goto_0
    add-int v4, v0, v3

    iget v5, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    if-gt v4, v5, :cond_1

    .line 99
    :cond_0
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 102
    .local v1, "currentTime":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 103
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void

    .line 95
    .end local v1    # "currentTime":Ljava/lang/Long;
    :cond_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->removeNext()I

    move-result v2

    .local v2, "freedSize":I
    const/4 v4, -0x1

    .line 96
    if-eq v2, v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v5, v2

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_0
.end method
