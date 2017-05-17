.class public Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "CountingThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor$CountingThreadFactory;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;->CPU_COUNT:I

    .line 28
    sget v0, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;->CORE_POOL_SIZE:I

    .line 29
    sget v0, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;->MAXIMUM_POOL_SIZE:I

    .line 25
    return-void
.end method

.method private constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 49
    sget v2, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;->CORE_POOL_SIZE:I

    sget v3, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor$CountingThreadFactory;

    invoke-direct {v8, p1}, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor$CountingThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    .line 49
    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/conversations/threading/CountingThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 48
    return-void
.end method
