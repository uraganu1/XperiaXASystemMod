.class Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;
.super Ljava/lang/Object;
.source "MmsMessagePreCacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->setThreadId(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;
    .param p2, "val$threadId"    # J

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    iput-wide p2, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->-set0(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;Z)Z

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;->val$threadId:J

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->-set1(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;J)J

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->-wrap0(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$1;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->-wrap2(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;)V

    .line 81
    :cond_0
    return-void
.end method
