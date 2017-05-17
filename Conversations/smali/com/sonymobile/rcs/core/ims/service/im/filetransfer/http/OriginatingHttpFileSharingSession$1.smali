.class Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession$1;
.super Ljava/lang/Object;
.source "OriginatingHttpFileSharingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->resumeFileTransfer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 306
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;

    iget-object v3, v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->queryUpload(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;

    move-result-object v1

    .line 308
    .local v1, "upload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    if-nez v1, :cond_0

    .line 311
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->sendResultToContact([B)V

    .line 316
    .end local v1    # "upload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :goto_0
    return-void

    .line 309
    .restart local v1    # "upload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;

    iget-object v3, v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->uploadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpUploadManager;->resumeUpload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->sendResultToContact([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v1    # "upload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;

    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;

    const/16 v4, 0x7c

    invoke-direct {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/OriginatingHttpFileSharingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_0
.end method
