.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;
.super Ljava/lang/Object;
.source "ConversationItemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Throttler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler$1;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTask:Ljava/lang/Runnable;

.field private mTime:J

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->update()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler$1;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mTask:Ljava/lang/Runnable;

    .line 81
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mTime:J

    .line 78
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x15e

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 86
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 87
    iput-wide v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mTime:J

    .line 88
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mTask:Ljava/lang/Runnable;

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;->mTime:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 84
    return-void
.end method
