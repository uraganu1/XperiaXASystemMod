.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"

# interfaces
.implements Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->setupGtmImpl(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerLoaded(Z)V
    .locals 7
    .param p1, "success"    # Z

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "container load failed"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void

    .line 485
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/analytics/CustomDimension;->setCustomDimensions(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;)V

    .line 487
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    monitor-enter v4

    .line 488
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-set0(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get3(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 493
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get3(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap1(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Page view data was not in the queue."

    invoke-static {v3, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 498
    :try_start_3
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get3(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 503
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get2(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 504
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get2(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    .line 505
    .local v1, "e":Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v5, v1}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap4(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;)V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 507
    .end local v1    # "e":Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;
    :catch_1
    move-exception v2

    .line 508
    .restart local v2    # "e":Ljava/util/NoSuchElementException;
    :try_start_5
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "event data was not in the queue."

    invoke-static {v3, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 510
    :try_start_6
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get2(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 515
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :goto_2
    :try_start_7
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get1(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 516
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get1(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;

    .line 517
    .local v0, "e":Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v5, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap6(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;)V
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    .line 519
    .end local v0    # "e":Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;
    :catch_2
    move-exception v2

    .line 520
    .restart local v2    # "e":Ljava/util/NoSuchElementException;
    :try_start_8
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "custom dimension data was not in the queue."

    invoke-static {v3, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 522
    :try_start_9
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get1(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :goto_3
    monitor-exit v4

    .line 526
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Container load Success !!"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void

    .line 498
    :cond_1
    :try_start_a
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get3(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 487
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 497
    :catchall_1
    move-exception v3

    .line 498
    :try_start_b
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get3(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->clear()V

    .line 497
    throw v3

    .line 510
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get2(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    goto :goto_2

    .line 509
    :catchall_2
    move-exception v3

    .line 510
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get2(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->clear()V

    .line 509
    throw v3

    .line 522
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get1(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    goto :goto_3

    .line 521
    :catchall_3
    move-exception v3

    .line 522
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$4;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-get1(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)Ljava/util/ArrayDeque;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->clear()V

    .line 521
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method
