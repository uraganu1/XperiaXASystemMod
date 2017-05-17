.class public Lcom/android/mms/MmsCarrierConfigValuesLoader;
.super Ljava/lang/Object;
.source "MmsCarrierConfigValuesLoader.java"


# instance fields
.field private final mValuesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/mms/MmsCarrierConfigValuesLoader;->mValuesCache:Landroid/util/SparseArray;

    .line 39
    return-void
.end method

.method private loadFromSystem(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "values"    # Landroid/os/Bundle;

    .prologue
    .line 71
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v1

    .line 72
    .local v1, "systemValues":Landroid/os/Bundle;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "systemValues":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Calling system getCarrierConfigValues exception"

    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized get(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/MmsCarrierConfigValuesLoader;->mValuesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 47
    .local v0, "values":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Carrier configs for subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/android/mms/MmsCarrierConfigValuesLoader;->mValuesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 52
    const/4 v0, 0x0

    .line 54
    .end local v0    # "values":Landroid/os/Bundle;
    :cond_1
    if-nez v0, :cond_2

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .restart local v0    # "values":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/MmsCarrierConfigValuesLoader;->mValuesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/mms/MmsCarrierConfigValuesLoader;->loadFromSystem(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "values":Landroid/os/Bundle;
    :cond_2
    monitor-exit p0

    .line 59
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
