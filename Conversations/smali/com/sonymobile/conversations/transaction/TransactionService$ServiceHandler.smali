.class public final Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/conversations/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/conversations/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/conversations/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/conversations/transaction/TransactionService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    .line 567
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 566
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0xc8

    const/4 v9, 0x0

    .line 579
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/TransactionService;->-get4(Lcom/sonymobile/conversations/transaction/TransactionService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x64

    if-eq v6, v7, :cond_0

    iget v6, p1, Landroid/os/Message;->what:I

    if-eq v6, v8, :cond_0

    .line 580
    return-void

    .line 583
    :cond_0
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_1

    .line 584
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Handling incoming message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 587
    :cond_1
    const/4 v5, 0x0

    .line 588
    .local v5, "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 686
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "what="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 576
    :goto_0
    return-void

    .line 590
    :sswitch_0
    iget-object v7, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v6, v8}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap3(Lcom/sonymobile/conversations/transaction/TransactionService;Landroid/content/Intent;I)V

    goto :goto_0

    .line 594
    :sswitch_1
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 595
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/RetryScheduler;->cancelRetryAlarm(Landroid/content/Context;)V

    .line 596
    invoke-virtual {p0, v8}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 597
    const-wide/32 v8, 0xea60

    .line 596
    invoke-virtual {p0, v6, v8, v9}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 599
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 600
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap2(Lcom/sonymobile/conversations/transaction/TransactionService;)V

    .line 601
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6, v9}, Lcom/sonymobile/conversations/transaction/TransactionService;->-set0(Lcom/sonymobile/conversations/transaction/TransactionService;Z)Z

    .line 602
    return-void

    .line 606
    :sswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 607
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    .line 608
    const-class v7, Lcom/sonymobile/conversations/transaction/MmsConnectivityReceiver;

    const/4 v8, 0x1

    .line 607
    invoke-static {v6, v7, v8}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 609
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 610
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap2(Lcom/sonymobile/conversations/transaction/TransactionService;)V

    .line 611
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6, v9}, Lcom/sonymobile/conversations/transaction/TransactionService;->-set0(Lcom/sonymobile/conversations/transaction/TransactionService;Z)Z

    .line 612
    return-void

    .line 615
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 617
    .local v3, "serviceId":I
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonymobile/conversations/transaction/TransactionBundle;

    .line 619
    .local v0, "args":Lcom/sonymobile/conversations/transaction/TransactionBundle;
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6, v3, v0}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap0(Lcom/sonymobile/conversations/transaction/TransactionService;ILcom/sonymobile/conversations/transaction/TransactionBundle;)Lcom/sonymobile/conversations/transaction/Transaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 620
    .local v5, "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    if-nez v5, :cond_5

    .line 657
    if-nez v5, :cond_4

    .line 658
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_3

    .line 659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transaction was null. Stopping self: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 661
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6, v3}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap4(Lcom/sonymobile/conversations/transaction/TransactionService;I)V

    .line 621
    :cond_4
    return-void

    .line 624
    :cond_5
    :try_start_1
    invoke-virtual {v5}, Lcom/sonymobile/conversations/transaction/Transaction;->getSubscriptionId()I

    move-result v4

    .line 625
    .local v4, "subscriptionId":I
    const v6, 0x7fffffff

    if-ne v4, v6, :cond_6

    .line 626
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v4

    .line 628
    :cond_6
    if-ltz v4, :cond_b

    .line 629
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isActiveSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 640
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/TransactionService;->-get0(Lcom/sonymobile/conversations/transaction/TransactionService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    .line 641
    .local v2, "networkHandler":Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
    if-nez v2, :cond_7

    .line 642
    new-instance v2, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    .end local v2    # "networkHandler":Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    .line 643
    iget-object v7, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v7}, Lcom/sonymobile/conversations/transaction/TransactionService;->-get2(Lcom/sonymobile/conversations/transaction/TransactionService;)Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v8}, Lcom/sonymobile/conversations/transaction/TransactionService;->-get1(Lcom/sonymobile/conversations/transaction/TransactionService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v8

    .line 642
    invoke-direct {v2, v6, v4, v7, v8}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;-><init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 644
    .restart local v2    # "networkHandler":Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/TransactionService;->-get0(Lcom/sonymobile/conversations/transaction/TransactionService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 646
    :cond_7
    invoke-virtual {v2, v5}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->handleTransaction(Lcom/sonymobile/conversations/transaction/Transaction;)V

    .line 648
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_8

    .line 649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Started processing of incoming message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    :cond_8
    if-nez v5, :cond_a

    .line 658
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_9

    .line 659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transaction was null. Stopping self: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 661
    :cond_9
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6, v3}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap4(Lcom/sonymobile/conversations/transaction/TransactionService;I)V

    .line 664
    .end local v0    # "args":Lcom/sonymobile/conversations/transaction/TransactionBundle;
    .end local v2    # "networkHandler":Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
    .end local v4    # "subscriptionId":I
    .end local v5    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :cond_a
    :goto_1
    return-void

    .line 631
    .restart local v0    # "args":Lcom/sonymobile/conversations/transaction/TransactionBundle;
    .restart local v4    # "subscriptionId":I
    .restart local v5    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :cond_b
    :try_start_2
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_c

    .line 632
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Subscription "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 633
    const-string/jumbo v7, " is invalid or inactive"

    .line 632
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 658
    :cond_c
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_d

    .line 659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transaction was null. Stopping self: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 661
    :cond_d
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6, v3}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap4(Lcom/sonymobile/conversations/transaction/TransactionService;I)V

    .line 636
    return-void

    .line 651
    .end local v0    # "args":Lcom/sonymobile/conversations/transaction/TransactionBundle;
    .end local v4    # "subscriptionId":I
    .end local v5    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :catch_0
    move-exception v1

    .line 652
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception occurred while handling message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 658
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_e

    .line 659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transaction was null. Stopping self: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 661
    :cond_e
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6, v3}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap4(Lcom/sonymobile/conversations/transaction/TransactionService;I)V

    goto :goto_1

    .line 656
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 657
    if-nez v5, :cond_10

    .line 658
    sget-boolean v7, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v7, :cond_f

    .line 659
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Transaction was null. Stopping self: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 661
    :cond_f
    iget-object v7, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v7, v3}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap4(Lcom/sonymobile/conversations/transaction/TransactionService;I)V

    .line 656
    :cond_10
    throw v6

    .line 666
    .end local v3    # "serviceId":I
    .local v5, "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :sswitch_4
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/TransactionService;->-get3(Lcom/sonymobile/conversations/transaction/TransactionService;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 668
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/transaction/TransactionService;->stopSelf(I)V

    .line 670
    :cond_11
    return-void

    .line 672
    :sswitch_5
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/TransactionService;->-get3(Lcom/sonymobile/conversations/transaction/TransactionService;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 674
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v7}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap5(Lcom/sonymobile/conversations/transaction/TransactionService;I)V

    .line 676
    :cond_12
    return-void

    .line 678
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/sonymobile/conversations/transaction/Transaction;

    if-eqz v6, :cond_13

    .line 679
    iget-object v7, p0, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->this$0:Lcom/sonymobile/conversations/transaction/TransactionService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/sonymobile/conversations/transaction/Transaction;

    invoke-static {v7, v6}, Lcom/sonymobile/conversations/transaction/TransactionService;->-wrap1(Lcom/sonymobile/conversations/transaction/TransactionService;Lcom/sonymobile/conversations/transaction/Transaction;)V

    goto/16 :goto_0

    .line 681
    :cond_13
    const-string/jumbo v6, "Got a transaction complete message without an attached transaction"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method
