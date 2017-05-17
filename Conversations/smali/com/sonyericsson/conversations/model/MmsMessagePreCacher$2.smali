.class Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;
.super Ljava/lang/Object;
.source "MmsMessagePreCacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->preCacheAdjacent(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;
    .param p2, "val$uri"    # Landroid/net/Uri;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    iput-object p2, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->-set0(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;Z)Z

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->-wrap1(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string/jumbo v0, "start pos: "

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    invoke-static {v1}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->-get1(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, ", key: "

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;->val$uri:Landroid/net/Uri;

    .line 105
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher$2;->this$0:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->-wrap2(Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;)V

    .line 101
    :cond_1
    return-void
.end method
