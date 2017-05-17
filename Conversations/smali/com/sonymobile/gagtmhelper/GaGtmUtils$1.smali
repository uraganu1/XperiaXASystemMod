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
    .line 498
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 498
    check-cast p1, Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 5
    .param p1, "containerHolder"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 501
    const/4 v1, 0x0

    .line 503
    .local v1, "success":Z
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    :goto_0
    if-nez p1, :cond_2

    .line 544
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 549
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$400(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v2

    if-nez v2, :cond_7

    .line 555
    :goto_2
    return-void

    :cond_1
    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v3, "onResult:"

    .line 504
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 539
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v3, "Error loading container"

    .line 540
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 508
    :cond_3
    const/4 v1, 0x1

    .line 510
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # setter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;
    invoke-static {v2, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$002(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 511
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 513
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-nez v0, :cond_5

    .line 522
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-virtual {v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->setContainerDefaults()V

    .line 525
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 514
    :cond_5
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "GaGtmHelper"

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "container is default = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :cond_6
    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v3, "containerHolder was null"

    .line 545
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 550
    :cond_7
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 553
    :goto_4
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$400(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;->onContainerLoaded(Z)V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v3, "Calling callback"

    .line 551
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
