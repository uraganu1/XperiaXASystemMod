.class Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor$1;
.super Lcom/sonyericsson/conversations/util/ConditionRunnable;
.source "MonitorableThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/conversations/util/ConditionRunnable",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;Ljava/util/concurrent/locks/Lock;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/util/concurrent/locks/Lock;
    .param p4, "val$command"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    .local p1, "this$0":Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;, "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor<TK;>;"
    .local p3, "$anonymous1":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor$1;->this$0:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    iput-object p4, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/util/ConditionRunnable;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 60
    return-void
.end method
