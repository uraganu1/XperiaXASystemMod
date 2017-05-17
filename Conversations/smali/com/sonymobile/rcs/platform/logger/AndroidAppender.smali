.class public Lcom/sonymobile/rcs/platform/logger/AndroidAppender;
.super Lcom/sonymobile/rcs/utils/logger/Appender;
.source "AndroidAppender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/rcs/utils/logger/Appender;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized printTrace(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "trace"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 47
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[RCS]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 49
    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    .line 51
    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    .line 53
    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    .line 55
    if-eq p2, v0, :cond_3

    .line 58
    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 60
    return-void

    .line 50
    :cond_0
    :try_start_1
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_1
    :try_start_2
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_3
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
