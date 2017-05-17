.class Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;
.super Ljava/lang/Object;
.source "TerminatingHttpFileSharingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->resumeFileTransfer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->resumeDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    :cond_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    iget-object v1, v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/content/MmContent;->setUri(Landroid/net/Uri;)V

    .line 431
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->handleFileTransfered()V

    .line 433
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    const-string/jumbo v1, "displayed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->sendDeliveryReport(Ljava/lang/String;)V

    .line 446
    :goto_1
    return-void

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Download file with success"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_4

    .line 444
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v2, 0x7d

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_1

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/TerminatingHttpFileSharingSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "Download file has failed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method
