.class public Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;
.super Ljava/lang/Object;
.source "KeepAliveRetryHelper.java"


# static fields
.field private static volatile keepAliveRetryHelper:Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;


# instance fields
.field private retryAttemptCount:I

.field private timeoutPeriods:[J


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v4, p0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->retryAttemptCount:I

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa0

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x1770

    aput-wide v2, v0, v4

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    aput-wide v2, v0, v1

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->timeoutPeriods:[J

    .line 38
    return-void
.end method

.method public static getInstance()Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->keepAliveRetryHelper:Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    sget-object v0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->keepAliveRetryHelper:Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    return-object v0

    :cond_0
    const-class v1, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    .line 42
    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->keepAliveRetryHelper:Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    if-eqz v0, :cond_1

    .line 47
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45
    :cond_1
    :try_start_1
    new-instance v0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;-><init>()V

    sput-object v0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->keepAliveRetryHelper:Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getRetryAttemptCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->retryAttemptCount:I

    return v0
.end method

.method public getTimeoutPeriod()J
    .locals 4

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->timeoutPeriods:[J

    iget v2, p0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->retryAttemptCount:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->timeoutPeriods:[J

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    return-wide v2
.end method

.method public incrementRetryCount()V
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->retryAttemptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->retryAttemptCount:I

    .line 75
    return-void
.end method

.method public initializeCounter()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->retryAttemptCount:I

    .line 67
    return-void
.end method
