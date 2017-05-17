.class public abstract Lcom/google/common/util/concurrent/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;,
        Lcom/google/common/util/concurrent/RateLimiter$Bursty;,
        Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field maxPermits:D

.field private final mutex:Ljava/lang/Object;

.field private nextFreeTicketMicros:J

.field private final offsetNanos:J

.field volatile stableIntervalMicros:D

.field storedPermits:D

.field private final ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;)V
    .locals 2
    .param p1, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    .line 332
    iput-object p1, p0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    .line 333
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->read()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->offsetNanos:J

    .line 331
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter;)V
    .locals 0
    .param p1, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;)V

    return-void
.end method

.method private static checkPermits(I)V
    .locals 2
    .param p0, "permits"    # I

    .prologue
    const/4 v0, 0x0

    .line 502
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "Requested permits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 501
    return-void
.end method

.method public static create(D)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 2
    .param p0, "permitsPerSecond"    # D

    .prologue
    .line 242
    sget-object v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    invoke-static {v0, p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;->create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)Lcom/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method public static create(DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 8
    .param p0, "permitsPerSecond"    # D
    .param p2, "warmupPeriod"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 275
    sget-object v1, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/google/common/util/concurrent/RateLimiter;->create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 5
    .param p0, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    .param p1, "permitsPerSecond"    # D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, p0, v2, v3}, Lcom/google/common/util/concurrent/RateLimiter$Bursty;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)V

    .line 248
    .local v0, "rateLimiter":Lcom/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 249
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 1
    .param p0, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    .param p1, "permitsPerSecond"    # D
    .param p3, "warmupPeriod"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;JLjava/util/concurrent/TimeUnit;)V

    .line 282
    .local v0, "rateLimiter":Lcom/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 283
    return-object v0
.end method

.method static createWithCapacity(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 9
    .param p0, "ticker"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
    .param p1, "permitsPerSecond"    # D
    .param p3, "maxBurstBuildup"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double v0, v4, v6

    .line 290
    .local v0, "maxBurstSeconds":D
    new-instance v2, Lcom/google/common/util/concurrent/RateLimiter$Bursty;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter$Bursty;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)V

    .line 291
    .local v2, "rateLimiter":Lcom/google/common/util/concurrent/RateLimiter$Bursty;
    invoke-virtual {v2, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->setRate(D)V

    .line 292
    return-object v2
.end method

.method private readSafeMicros()J
    .locals 6

    .prologue
    .line 544
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->read()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter;->offsetNanos:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private reserveNextTicket(DJ)J
    .locals 15
    .param p1, "requiredPermits"    # D
    .param p3, "nowMicros"    # J

    .prologue
    .line 511
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter;->resync(J)V

    .line 512
    const-wide/16 v10, 0x0

    iget-wide v12, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    sub-long v12, v12, p3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 513
    .local v4, "microsToNextFreeTicket":J
    iget-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 514
    .local v6, "storedPermitsToSpend":D
    sub-double v2, p1, v6

    .line 516
    .local v2, "freshPermits":D
    iget-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    invoke-virtual {p0, v10, v11, v6, v7}, Lcom/google/common/util/concurrent/RateLimiter;->storedPermitsToWaitTime(DD)J

    move-result-wide v10

    .line 517
    iget-wide v12, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    mul-double/2addr v12, v2

    double-to-long v12, v12

    .line 516
    add-long v8, v10, v12

    .line 519
    .local v8, "waitMicros":J
    iget-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    .line 520
    iget-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    sub-double/2addr v10, v6

    iput-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    .line 521
    return-wide v4
.end method

.method private resync(J)V
    .locals 9
    .param p1, "nowMicros"    # J

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 537
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->maxPermits:D

    .line 538
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 537
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    .line 539
    iput-wide p1, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    .line 534
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire()D
    .locals 2

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/RateLimiter;->acquire(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public acquire(I)D
    .locals 8
    .param p1, "permits"    # I

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;->reserve(I)J

    move-result-wide v0

    .line 401
    .local v0, "microsToWait":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->sleepMicrosUninterruptibly(J)V

    .line 402
    long-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    return-wide v2
.end method

.method abstract doSetRate(DD)V
.end method

.method public final getRate()D
    .locals 4

    .prologue
    .line 375
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method reserve()J
    .locals 2

    .prologue
    .line 414
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/RateLimiter;->reserve(I)J

    move-result-wide v0

    return-wide v0
.end method

.method reserve(I)J
    .locals 6
    .param p1, "permits"    # I

    .prologue
    .line 424
    invoke-static {p1}, Lcom/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 425
    iget-object v1, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    int-to-double v2, p1

    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->readSafeMicros()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/common/util/concurrent/RateLimiter;->reserveNextTicket(DJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setRate(D)V
    .locals 7
    .param p1, "permitsPerSecond"    # D

    .prologue
    const/4 v2, 0x0

    .line 355
    const-wide/16 v4, 0x0

    cmpl-double v3, p1, v4

    if-lez v3, :cond_0

    .line 356
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v3, "rate must be positive"

    .line 355
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 357
    iget-object v3, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->readSafeMicros()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/common/util/concurrent/RateLimiter;->resync(J)V

    .line 359
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v0, v4, p1

    .line 360
    .local v0, "stableIntervalMicros":D
    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    .line 361
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter;->doSetRate(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 354
    return-void

    .line 356
    .end local v0    # "stableIntervalMicros":D
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method abstract storedPermitsToWaitTime(DD)J
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 549
    const-string/jumbo v0, "RateLimiter[stableRate=%3.1fqps]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAcquire()Z
    .locals 4

    .prologue
    .line 471
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(I)Z
    .locals 3
    .param p1, "permits"    # I

    .prologue
    .line 457
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 16
    .param p1, "permits"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 486
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    .line 487
    .local v8, "timeoutMicros":J
    invoke-static/range {p1 .. p1}, Lcom/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 489
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    monitor-enter v11

    .line 490
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/common/util/concurrent/RateLimiter;->readSafeMicros()J

    move-result-wide v6

    .line 491
    .local v6, "nowMicros":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long v14, v6, v8

    cmp-long v10, v12, v14

    if-lez v10, :cond_0

    .line 492
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 494
    :cond_0
    move/from16 v0, p1

    int-to-double v12, v0

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v6, v7}, Lcom/google/common/util/concurrent/RateLimiter;->reserveNextTicket(DJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .local v4, "microsToWait":J
    monitor-exit v11

    .line 497
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    invoke-virtual {v10, v4, v5}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->sleepMicrosUninterruptibly(J)V

    .line 498
    const/4 v10, 0x1

    return v10

    .line 489
    .end local v4    # "microsToWait":J
    .end local v6    # "nowMicros":J
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
