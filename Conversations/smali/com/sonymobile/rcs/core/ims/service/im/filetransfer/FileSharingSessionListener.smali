.class public interface abstract Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSessionListener;
.super Ljava/lang/Object;
.source "FileSharingSessionListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;


# virtual methods
.method public abstract handleFileTransferPaused()V
.end method

.method public abstract handleFileTransferResumed()V
.end method

.method public abstract handleFileTransfered(Landroid/net/Uri;Ljava/lang/String;J)V
.end method

.method public abstract handleFileUploaded(Ljava/lang/String;)V
.end method

.method public abstract handleTransferError(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;)V
.end method

.method public abstract handleTransferProgress(JJ)V
.end method
