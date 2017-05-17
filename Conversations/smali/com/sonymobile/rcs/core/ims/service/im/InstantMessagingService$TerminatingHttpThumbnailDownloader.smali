.class public Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;
.super Ljava/lang/Object;
.source "InstantMessagingService.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TerminatingHttpThumbnailDownloader"
.end annotation


# instance fields
.field private downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;Lcom/sonymobile/rcs/core/content/MmContent;)V
    .locals 1
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-direct {v0, p2, p0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;-><init>(Lcom/sonymobile/rcs/core/content/MmContent;Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpTransferEventListener;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    .line 740
    return-void
.end method


# virtual methods
.method public downloadThumbnail(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;)[B
    .locals 1
    .param p1, "thumbnailInfo"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/InstantMessagingService$TerminatingHttpThumbnailDownloader;->downloadManager:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpDownloadManager;->downloadThumbnail(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;)[B

    move-result-object v0

    return-object v0
.end method

.method public httpTransferPaused(Z)V
    .locals 0
    .param p1, "isNetworkPause"    # Z

    .prologue
    .line 752
    return-void
.end method

.method public httpTransferProgress(JJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 760
    return-void
.end method

.method public httpTransferResumed()V
    .locals 0

    .prologue
    .line 756
    return-void
.end method

.method public httpTransferStarted()V
    .locals 0

    .prologue
    .line 748
    return-void
.end method
