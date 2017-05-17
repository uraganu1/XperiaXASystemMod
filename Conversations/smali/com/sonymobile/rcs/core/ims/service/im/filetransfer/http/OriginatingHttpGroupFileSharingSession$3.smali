.class Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$3;
.super Ljava/lang/Object;
.source "OriginatingHttpGroupFileSharingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->resumeFileTransfer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$400(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->queryUpload(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;

    move-result-object v1

    .line 439
    .local v1, "upload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    if-nez v1, :cond_0

    .line 442
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    const/4 v3, 0x0

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->sendResultToContact([B)V
    invoke-static {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$500(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;[B)V

    .line 448
    .end local v1    # "upload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :goto_0
    return-void

    .line 440
    .restart local v1    # "upload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession$3;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$400(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->resumeUpload()[B

    move-result-object v3

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->sendResultToContact([B)V
    invoke-static {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;->access$500(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpGroupFileSharingSession;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    .end local v1    # "upload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
