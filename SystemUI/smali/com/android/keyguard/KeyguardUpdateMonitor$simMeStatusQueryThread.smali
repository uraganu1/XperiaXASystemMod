.class Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;
.super Ljava/lang/Thread;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "simMeStatusQueryThread"
.end annotation


# instance fields
.field simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p2, "simArgs"    # Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .prologue
    .line 2413
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2414
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2413
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 2420
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->phoneId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v6, v6, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simMECategory:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    const-string/jumbo v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryNetworkLock, phoneId ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v6, v6, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->phoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", simMECategory ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2422
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v6, v6, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simMECategory:I

    .line 2421
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simMECategory:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simMECategory:I

    if-le v4, v7, :cond_1

    .line 2425
    :cond_0
    return-void

    .line 2428
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->phoneId:I

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 2429
    .local v3, "subId":I
    const-string/jumbo v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    .line 2430
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simMECategory:I

    .line 2429
    invoke-interface {v4, v3, v5}, Lcom/mediatek/internal/telephony/ITelephonyEx;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v0

    .line 2431
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "com.mediatek.phone.QUERY_SIMME_LOCK_RESULT"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2433
    .local v2, "query_result":Z
    const-string/jumbo v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryNetworkLock, query_result ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    if-eqz v2, :cond_2

    .line 2436
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->phoneId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2437
    const-string/jumbo v6, "com.mediatek.phone.SIMME_LOCK_LEFT_COUNT"

    const/4 v7, 0x5

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2436
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$simMeStatusQueryThread;->simArgs:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    const/16 v7, 0x130

    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2418
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "query_result":Z
    .end local v3    # "subId":I
    :goto_1
    return-void

    .line 2439
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "query_result":Z
    .restart local v3    # "subId":I
    :cond_2
    const-string/jumbo v4, "KeyguardUpdateMonitor"

    const-string/jumbo v5, "queryIccNetworkLock result fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2442
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "query_result":Z
    .end local v3    # "subId":I
    :catch_0
    move-exception v1

    .line 2443
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryIccNetworkLock got exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
