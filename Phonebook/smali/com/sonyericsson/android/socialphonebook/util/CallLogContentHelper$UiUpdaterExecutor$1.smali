.class Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;
.super Ljava/lang/Object;
.source "CallLogContentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 705
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->-get1(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "doExecute":Z
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->-get2(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->-get3(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    .line 710
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->-get2(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v3

    .line 719
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 720
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "UiUpdaterExecutor commnad run"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 715
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->-get3(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;->-set0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$UiUpdaterExecutor;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    const/4 v0, 0x1

    goto :goto_1

    .line 707
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 724
    .end local v0    # "doExecute":Z
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "UiUpdaterExecutor finished"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    return-void

    .line 711
    .restart local v0    # "doExecute":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method
