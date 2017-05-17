.class Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmUtils;->ensureContainerLoadedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;


# direct methods
.method constructor <init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 494
    check-cast p1, Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 502
    :goto_0
    if-nez p1, :cond_2

    .line 548
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 553
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$400(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v1

    if-nez v1, :cond_7

    .line 559
    :goto_2
    return-void

    :cond_1
    const-string/jumbo v1, "GaGtmHelper"

    const-string/jumbo v2, "onResult:"

    .line 500
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    .line 543
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GaGtmHelper"

    const-string/jumbo v2, "Error loading container"

    .line 544
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 504
    :cond_3
    const/4 v0, 0x1

    .line 506
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # setter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;
    invoke-static {v1, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$002(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 507
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v1

    .line 509
    if-nez v1, :cond_5

    .line 519
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-virtual {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushInitDefaultsToDataLayer()V

    .line 526
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-virtual {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->setContainerDefaults()V

    .line 529
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 510
    :cond_5
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "GaGtmHelper"

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "container is default = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "GaGtmHelper"

    const-string/jumbo v2, "containerHolder was null"

    .line 549
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 554
    :cond_7
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 557
    :goto_4
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$400(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;->onContainerLoaded(Z)V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v1, "GaGtmHelper"

    const-string/jumbo v2, "Calling callback"

    .line 555
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
