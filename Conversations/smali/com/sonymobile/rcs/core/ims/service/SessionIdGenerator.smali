.class public Lcom/sonymobile/rcs/core/ims/service/SessionIdGenerator;
.super Ljava/lang/Object;
.source "SessionIdGenerator.java"


# static fields
.field private static current:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/rcs/core/ims/service/SessionIdGenerator;->current:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getNewId()Ljava/lang/String;
    .locals 6

    .prologue
    const-class v1, Lcom/sonymobile/rcs/core/ims/service/SessionIdGenerator;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-wide v2, Lcom/sonymobile/rcs/core/ims/service/SessionIdGenerator;->current:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/sonymobile/rcs/core/ims/service/SessionIdGenerator;->current:J

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/sonymobile/rcs/core/ims/service/SessionIdGenerator;->current:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
