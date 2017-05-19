.class final Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker$1;
.super Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;-><init>()V

    return-void
.end method


# virtual methods
.method public read()J
    .locals 2

    .prologue
    .line 718
    invoke-static {}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker$1;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    return-wide v0
.end method
