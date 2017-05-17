.class Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;
.super Ljava/lang/Object;
.source "FtHttpResumeManager.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->getFileSharingSessionListener()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field fired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;)V
    .locals 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public handleFileTransferPaused()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public handleFileTransferResumed()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public handleFileTransfered(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 3
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->processNext()V
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;)V

    goto :goto_0
.end method

.method public handleFileUploaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatSessionId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->processNext()V
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;)V

    goto :goto_0
.end method

.method public handleSessionAborted(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->processNext()V
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;)V

    goto :goto_0
.end method

.method public handleSessionStarted()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public handleSessionTerminatedByRemote()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->processNext()V
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;)V

    goto :goto_0
.end method

.method public handleTransferError(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;)V
    .locals 3
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->fired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->processNext()V
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;)V

    goto :goto_0
.end method

.method public handleTransferProgress(JJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 274
    return-void
.end method
