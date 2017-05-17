.class Lcom/android/mms/util/DownloadManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/mms/util/DownloadManager;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    .line 81
    const-string/jumbo v3, "android.intent.action.SERVICE_STATE"

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    const-string/jumbo v3, "Conversations"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 90
    const-string/jumbo v3, "bundle is null"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 91
    return-void

    .line 94
    :cond_1
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 95
    .local v2, "state":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    .line 96
    .local v1, "isRoaming":Z
    const-string/jumbo v3, "Conversations"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device is roaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v3}, Lcom/android/mms/util/DownloadManager;->-get0(Lcom/android/mms/util/DownloadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 101
    iget-object v3, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v3}, Lcom/android/mms/util/DownloadManager;->-get0(Lcom/android/mms/util/DownloadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-virtual {v4, v1}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    :cond_3
    const-string/jumbo v3, "Conversations"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Should auto download: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v4}, Lcom/android/mms/util/DownloadManager;->-get0(Lcom/android/mms/util/DownloadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 80
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "isRoaming":Z
    .end local v2    # "state":Landroid/telephony/ServiceState;
    :cond_4
    return-void
.end method
