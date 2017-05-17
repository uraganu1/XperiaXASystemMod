.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    }
.end annotation


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 155
    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 158
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 160
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 177
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 178
    iput p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    .line 179
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 180
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 181
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 182
    iput p3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 183
    iput-wide p4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .prologue
    .line 85
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .param p1, "x1"    # Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 620
    return-void

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 502
    :try_start_0
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->access$1400(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-result-object v2

    .line 503
    .local v2, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v8

    if-ne v8, p1, :cond_2

    .line 508
    if-nez p2, :cond_3

    :cond_0
    const/4 v3, 0x0

    .line 521
    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-lt v3, v8, :cond_6

    .line 537
    iget v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v8, 0x0

    .line 538
    # setter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v2, v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 539
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-nez v8, :cond_9

    .line 551
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v9, "REMOVE"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 553
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 554
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 555
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 557
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 559
    iget-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    const/4 v8, 0x1

    :goto_2
    if-nez v8, :cond_b

    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_b

    :goto_3
    monitor-exit p0

    .line 562
    return-void

    .line 504
    .end local v3    # "i":I
    :cond_2
    :try_start_1
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 508
    .restart local v2    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v3, 0x0

    .line 509
    .restart local v3    # "i":I
    :goto_4
    iget v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_0

    .line 510
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->access$1500(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_4

    .line 514
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 509
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 511
    :cond_4
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V

    .line 512
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Newly created entry didn\'t create value for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 515
    :cond_5
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 516
    return-void

    .line 522
    :cond_6
    :try_start_3
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 523
    .local v1, "dirty":Ljava/io/File;
    if-nez p2, :cond_8

    .line 533
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 521
    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 524
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 525
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 526
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 527
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 528
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 529
    .local v4, "newLength":J
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 530
    iget-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    goto :goto_5

    .line 540
    .end local v0    # "clean":Ljava/io/File;
    .end local v1    # "dirty":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_9
    const/4 v8, 0x1

    # setter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$602(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 541
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v9, "CLEAN"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 542
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 543
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 545
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 547
    if-eqz p2, :cond_1

    .line 548
    iget-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    # setter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v8, v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1202(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J

    goto/16 :goto_1

    .line 559
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 560
    :cond_b
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    :cond_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 445
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 446
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    .line 447
    cmp-long v2, p2, v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    :cond_0
    monitor-exit p0

    .line 449
    return-object v4

    .line 447
    :cond_1
    :try_start_1
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 451
    :cond_2
    if-eqz v1, :cond_3

    .line 454
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_4

    .line 458
    :goto_0
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 459
    .local v0, "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    # setter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 462
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v3, "DIRTY"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 463
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 464
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 465
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 466
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 467
    return-object v0

    .line 452
    .end local v0    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :cond_3
    :try_start_2
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 453
    .restart local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_4
    monitor-exit p0

    .line 455
    return-object v4
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    const/16 v0, 0x7d0

    .line 570
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .locals 9
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 197
    cmp-long v1, p3, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v1, v2

    .line 197
    goto :goto_0

    .line 200
    :cond_1
    if-lez p2, :cond_2

    .line 205
    new-instance v6, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v6, "backupFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 217
    :goto_1
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 218
    .local v0, "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    iget-object v1, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 235
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 236
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .end local v0    # "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 237
    .restart local v0    # "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 238
    return-object v0

    .line 201
    .end local v0    # "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .end local v6    # "backupFile":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    .restart local v6    # "backupFile":Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v7, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .local v7, "journalFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 212
    invoke-static {v6, v7, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_1

    .line 210
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 220
    .end local v7    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :cond_5
    :try_start_0
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->readJournal()V

    .line 221
    invoke-direct {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    return-object v0

    :catch_0
    move-exception v8

    .line 224
    .local v8, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->delete()V

    goto :goto_2
.end method

.method private processJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 325
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 326
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    return-void

    .line 327
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 328
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 333
    # setter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v0, v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x0

    .line 334
    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v2    # "t":I
    :cond_2
    const/4 v2, 0x0

    .line 329
    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 330
    iget-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 335
    :cond_3
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 336
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private readJournal()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v5, Lcom/bumptech/glide/disklrucache/StrictLineReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v9}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 244
    .local v5, "reader":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    :try_start_0
    invoke-virtual {v5}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "magic":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "blank":Ljava/lang/String;
    const-string/jumbo v8, "libcore.io.DiskLruCache"

    .line 249
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 254
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unexpected journal header: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 277
    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v8, "1"

    .line 249
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x0

    .line 261
    .local v3, "lineCount":I
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    :catch_0
    move-exception v2

    .line 267
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_3
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 270
    invoke-virtual {v5}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->hasUnterminatedLine()Z

    move-result v8

    if-nez v8, :cond_2

    .line 273
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v11, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    :goto_1
    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 279
    return-void

    .line 271
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 282
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 283
    .local v1, "firstSpace":I
    if-eq v1, v7, :cond_4

    .line 287
    add-int/lit8 v3, v1, 0x1

    .line 288
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 290
    .local v5, "secondSpace":I
    if-eq v5, v7, :cond_5

    .line 297
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "key":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 301
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    if-eqz v0, :cond_6

    .line 306
    :goto_0
    if-ne v5, v7, :cond_7

    .line 311
    :cond_1
    if-eq v5, v7, :cond_9

    .line 313
    :cond_2
    if-eq v5, v7, :cond_a

    .line 316
    :cond_3
    :goto_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 284
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyBegin":I
    .end local v5    # "secondSpace":I
    :cond_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 291
    .restart local v3    # "keyBegin":I
    .restart local v5    # "secondSpace":I
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "key":Ljava/lang/String;
    const-string/jumbo v6, "REMOVE"

    .line 292
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_0

    const-string/jumbo v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 293
    iget-object v6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void

    .line 302
    .restart local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_6
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 303
    .restart local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    iget-object v6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string/jumbo v6, "CLEAN"

    .line 306
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_1

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 307
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    # setter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$602(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 309
    # setter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v0, v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 310
    # invokes: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 318
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_8
    :goto_2
    return-void

    :cond_9
    const-string/jumbo v6, "DIRTY"

    .line 311
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_2

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 312
    new-instance v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    invoke-direct {v6, p0, v0, v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    # setter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v0, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    goto :goto_2

    :cond_a
    const-string/jumbo v6, "READ"

    .line 313
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string/jumbo v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_1
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v3, :cond_0

    .line 352
    :goto_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "writer":Ljava/io/Writer;
    :try_start_1
    const-string/jumbo v3, "libcore.io.DiskLruCache"

    .line 355
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "\n"

    .line 356
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "1"

    .line 357
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "\n"

    .line 358
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "\n"

    .line 360
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "\n"

    .line 362
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "\n"

    .line 363
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    .line 373
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 376
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 379
    :goto_2
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 382
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v6, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 384
    return-void

    .line 349
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "writer":Ljava/io/Writer;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 365
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 366
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_2

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 374
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    .line 373
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 367
    .restart local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 377
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_3
    :try_start_7
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    if-nez p2, :cond_0

    .line 396
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    return-void

    .line 394
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_0

    .line 397
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    :goto_0
    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 647
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 645
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 649
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 631
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_1

    .line 634
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 639
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 640
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    const/4 v2, 0x0

    .line 641
    iput-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 642
    return-void

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    .line 632
    return-void

    .line 634
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 635
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 636
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->close()V

    .line 658
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 659
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 441
    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 408
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 409
    .local v9, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    if-eqz v9, :cond_0

    .line 413
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    iget-object v0, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .local v0, "arr$":[Ljava/io/File;
    array-length v12, v0

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-lt v11, v12, :cond_2

    .line 424
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 425
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 426
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 427
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 428
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 429
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-nez v1, :cond_4

    .line 433
    :goto_1
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v4

    iget-object v6, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_0
    monitor-exit p0

    .line 410
    return-object v2

    :cond_1
    monitor-exit p0

    .line 414
    return-object v2

    .line 417
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_2
    :try_start_1
    aget-object v10, v0, v11

    .line 419
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    .line 420
    return-object v2

    .line 430
    .end local v10    # "file":Ljava/io/File;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v9    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 581
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 582
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 584
    return v4

    .line 583
    :cond_1
    :try_start_1
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 587
    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-lt v2, v3, :cond_2

    .line 596
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 597
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 599
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 602
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    .line 608
    :goto_1
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 588
    :cond_2
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 589
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 592
    :cond_3
    iget-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 593
    # getter for: Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 590
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 605
    .restart local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .restart local v2    # "i":I
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
