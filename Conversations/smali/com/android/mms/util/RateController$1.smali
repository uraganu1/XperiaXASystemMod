.class Lcom/android/mms/util/RateController$1;
.super Landroid/content/BroadcastReceiver;
.source "RateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/RateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/RateController;


# direct methods
.method constructor <init>(Lcom/android/mms/util/RateController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/mms/util/RateController;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/util/RateController$1;->this$0:Lcom/android/mms/util/RateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x2

    .line 61
    const-string/jumbo v1, "Conversations"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Intent received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 65
    :cond_0
    const-string/jumbo v1, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/android/mms/util/RateController$1;->this$0:Lcom/android/mms/util/RateController;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/RateController$1;->this$0:Lcom/android/mms/util/RateController;

    const-string/jumbo v3, "answer"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    const/4 v0, 0x1

    .line 67
    :cond_1
    invoke-static {v2, v0}, Lcom/android/mms/util/RateController;->-set0(Lcom/android/mms/util/RateController;I)I

    .line 69
    iget-object v0, p0, Lcom/android/mms/util/RateController$1;->this$0:Lcom/android/mms/util/RateController;

    invoke-virtual {v0}, Lcom/android/mms/util/RateController;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 60
    :cond_2
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
