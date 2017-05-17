.class Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;
.super Ljava/lang/Object;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Throttler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/ContactLookup$Throttler$1;
    }
.end annotation


# instance fields
.field private mTime:J

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/conversations/util/ContactLookup;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->update()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/ContactLookup;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler$1;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 253
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->mTime:J

    .line 252
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x15e

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 258
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->mTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 259
    iput-wide v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->mTime:J

    .line 260
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get3(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->mTime:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 261
    return-void

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get3(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    iget-object v2, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get3(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->mTime:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 256
    return-void
.end method
