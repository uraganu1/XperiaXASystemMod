.class final Lcom/android/mms/MmsConfig$1;
.super Ljava/lang/Thread;
.source "MmsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsConfig;->loadMmsCarrierConfigValuesAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 782
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 785
    invoke-static {}, Lcom/android/mms/MmsConfig;->-get0()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 788
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v6

    .line 790
    .local v6, "subscriptionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 791
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v3

    .line 792
    .local v3, "subId":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_1

    .line 793
    sget-boolean v8, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 794
    const-string/jumbo v8, "There are no subscription ids available. Return!"

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->-get0()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 796
    return-void

    .line 798
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v8

    .line 799
    const-string/jumbo v9, "phone"

    .line 798
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 802
    sget-boolean v8, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 803
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No network operator, do not load carrier config for default subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->-get0()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 806
    return-void

    .line 808
    :cond_3
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    sget-boolean v8, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 810
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Adding default sub_id to list "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 813
    .end local v1    # "networkOperator":Ljava/lang/String;
    .end local v3    # "subId":I
    :cond_4
    new-instance v0, Lcom/android/mms/MmsCarrierConfigValuesLoader;

    invoke-direct {v0}, Lcom/android/mms/MmsCarrierConfigValuesLoader;-><init>()V

    .line 814
    .local v0, "loader":Lcom/android/mms/MmsCarrierConfigValuesLoader;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "subscriptionId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 815
    .local v4, "subscriptionId":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 816
    .local v2, "retryAttempts":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/mms/MmsCarrierConfigValuesLoader;->get(I)Landroid/os/Bundle;

    move-result-object v7

    .line 817
    .local v7, "values":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    if-ge v2, v8, :cond_5

    .line 818
    add-int/lit8 v2, v2, 0x1

    .line 819
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/mms/MmsCarrierConfigValuesLoader;->get(I)Landroid/os/Bundle;

    move-result-object v7

    goto :goto_1

    .line 821
    :cond_5
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 822
    sget-boolean v8, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 824
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Adding new MmsConfig for subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 825
    const-string/jumbo v9, "with values: "

    .line 824
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 825
    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    .line 824
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 823
    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 827
    :cond_6
    new-instance v8, Lcom/android/mms/MmsConfig;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v7, v10}, Lcom/android/mms/MmsConfig;-><init>(ILandroid/os/Bundle;Lcom/android/mms/MmsConfig;)V

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->-wrap0(Lcom/android/mms/MmsConfig;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 834
    .end local v0    # "loader":Lcom/android/mms/MmsCarrierConfigValuesLoader;
    .end local v2    # "retryAttempts":I
    .end local v4    # "subscriptionId":Ljava/lang/Integer;
    .end local v5    # "subscriptionId$iterator":Ljava/util/Iterator;
    .end local v6    # "subscriptionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "values":Landroid/os/Bundle;
    :catchall_0
    move-exception v8

    .line 835
    invoke-static {}, Lcom/android/mms/MmsConfig;->-get0()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 834
    throw v8

    .line 829
    .restart local v0    # "loader":Lcom/android/mms/MmsCarrierConfigValuesLoader;
    .restart local v2    # "retryAttempts":I
    .restart local v4    # "subscriptionId":Ljava/lang/Integer;
    .restart local v5    # "subscriptionId$iterator":Ljava/util/Iterator;
    .restart local v6    # "subscriptionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "values":Landroid/os/Bundle;
    :cond_7
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not load carrier content value for subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 835
    .end local v2    # "retryAttempts":I
    .end local v4    # "subscriptionId":Ljava/lang/Integer;
    .end local v7    # "values":Landroid/os/Bundle;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->-get0()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 784
    return-void
.end method
