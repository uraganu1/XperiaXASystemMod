.class public Lgov2/nist/javax2/sip/parser/Pipeline;
.super Ljava/io/InputStream;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;,
        Lgov2/nist/javax2/sip/parser/Pipeline$MyTimer;
    }
.end annotation


# instance fields
.field private buffList:Ljava/util/LinkedList;

.field private currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

.field private isClosed:Z

.field private myTimerTask:Ljava/util/TimerTask;

.field private pipe:Ljava/io/InputStream;

.field private readTimeout:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/util/Timer;)V
    .locals 1
    .param p1, "pipe"    # Ljava/io/InputStream;
    .param p2, "readTimeout"    # I
    .param p3, "timer"    # Ljava/util/Timer;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 121
    iput-object p3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    .line 122
    iput-object p1, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    .line 124
    iput p2, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->readTimeout:I

    .line 125
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->isClosed:Z

    .line 148
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 154
    return-void

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 158
    iget-object v4, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v4

    .line 159
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    if-nez v3, :cond_2

    .line 165
    :cond_0
    iget-boolean v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_4

    .line 168
    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 172
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    iput-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    .line 173
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;->getNextByte()I

    move-result v2

    .line 174
    .local v2, "retval":I
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    iget v3, v3, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    iget v5, v5, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;->length:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v5, :cond_6

    .line 175
    :goto_0
    :try_start_2
    monitor-exit v4

    return v2

    .line 159
    .end local v2    # "retval":I
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    iget v3, v3, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    iget v5, v5, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;->length:I

    if-ge v3, v5, :cond_0

    .line 160
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;->getNextByte()I

    move-result v2

    .line 161
    .restart local v2    # "retval":I
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    iget v3, v3, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    iget v5, v5, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;->length:I

    if-eq v3, v5, :cond_3

    .line 162
    :goto_1
    monitor-exit v4

    return v2

    :cond_3
    const/4 v3, 0x0

    .line 161
    iput-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    goto :goto_1

    .line 180
    .end local v2    # "retval":I
    :catchall_0
    move-exception v3

    .line 182
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 165
    :cond_4
    :try_start_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v6

    .line 169
    :cond_5
    :try_start_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 170
    iget-boolean v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->isClosed:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v6

    .restart local v2    # "retval":I
    :cond_6
    const/4 v3, 0x0

    .line 174
    :try_start_6
    iput-object v3, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->currentBuffer:Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 175
    .end local v2    # "retval":I
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_7
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 179
    .local v1, "ex":Ljava/util/NoSuchElementException;
    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 180
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 106
    iget v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->readTimeout:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    new-instance v0, Lgov2/nist/javax2/sip/parser/Pipeline$MyTimer;

    invoke-direct {v0, p0, p0}, Lgov2/nist/javax2/sip/parser/Pipeline$MyTimer;-><init>(Lgov2/nist/javax2/sip/parser/Pipeline;Lgov2/nist/javax2/sip/parser/Pipeline;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    .line 110
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    iget v2, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->readTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 111
    return-void

    .line 106
    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->readTimeout:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_0
.end method

.method public write([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->isClosed:Z

    if-nez v1, :cond_0

    .line 139
    new-instance v0, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    array-length v1, p1

    invoke-direct {v0, p0, p1, v1}, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;-><init>(Lgov2/nist/javax2/sip/parser/Pipeline;[BI)V

    .line 140
    .local v0, "buff":Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 141
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    return-void

    .line 138
    .end local v0    # "buff":Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Closed!!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .restart local v0    # "buff":Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public write([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->isClosed:Z

    if-nez v1, :cond_0

    .line 129
    new-instance v0, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;

    invoke-direct {v0, p0, p1, p3}, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;-><init>(Lgov2/nist/javax2/sip/parser/Pipeline;[BI)V

    .line 130
    .local v0, "buff":Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;
    iput p2, v0, Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;->ptr:I

    .line 131
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 132
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    return-void

    .line 128
    .end local v0    # "buff":Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Closed!!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    .restart local v0    # "buff":Lgov2/nist/javax2/sip/parser/Pipeline$Buffer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
