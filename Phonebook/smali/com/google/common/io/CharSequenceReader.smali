.class final Lcom/google/common/io/CharSequenceReader;
.super Ljava/io/Reader;
.source "CharSequenceReader.java"


# instance fields
.field private mark:I

.field private pos:I

.field private seq:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    .line 43
    return-void
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "reader closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method private hasRemaining()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private remaining()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 130
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 129
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 5
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 117
    if-ltz p1, :cond_0

    :goto_0
    :try_start_0
    const-string/jumbo v1, "readAheadLimit (%s) may not be negative"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 119
    iget v0, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    iput v0, p0, Lcom/google/common/io/CharSequenceReader;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 116
    return-void

    :cond_0
    move v0, v1

    .line 117
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 78
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(Ljava/nio/CharBuffer;)I
    .locals 5
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 63
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 65
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 69
    .local v0, "charsToRead":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 70
    iget-object v2, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 72
    return v0

    .end local v0    # "charsToRead":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized read([CII)I
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 83
    add-int v2, p2, p3

    :try_start_0
    array-length v3, p1

    invoke-static {p2, v2, v3}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 84
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 85
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 86
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 88
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 89
    .local v0, "charsToRead":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 90
    add-int v2, p2, v1

    iget-object v3, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 92
    return v0

    .end local v0    # "charsToRead":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 125
    iget v0, p0, Lcom/google/common/io/CharSequenceReader;->mark:I

    iput v0, p0, Lcom/google/common/io/CharSequenceReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 123
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 97
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-ltz v3, :cond_0

    :goto_0
    :try_start_0
    const-string/jumbo v2, "n (%s) may not be negative"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 99
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 100
    .local v0, "charsToSkip":I
    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    int-to-long v2, v0

    monitor-exit p0

    return-wide v2

    .end local v0    # "charsToSkip":I
    :cond_0
    move v1, v2

    .line 97
    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
