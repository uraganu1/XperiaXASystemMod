.class Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$1;
.super Ljava/lang/Thread;
.source "FtHttpResumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;->processNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

.field final synthetic val$resumeDownload:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager;

    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$1;->val$resumeDownload:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FtHttpResumeManager$1;->val$resumeDownload:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/ResumeDownloadFileSharingSession;->startSession()V

    .line 167
    return-void
.end method
