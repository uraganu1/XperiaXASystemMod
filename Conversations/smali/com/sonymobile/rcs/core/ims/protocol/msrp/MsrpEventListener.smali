.class public interface abstract Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;
.super Ljava/lang/Object;
.source "MsrpEventListener.java"


# virtual methods
.method public abstract msrpDataReceived(Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public abstract msrpDataTransfered(Ljava/lang/String;)V
.end method

.method public abstract msrpTransferAborted()V
.end method

.method public abstract msrpTransferError(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
.end method

.method public abstract msrpTransferProgress(JJ)V
.end method

.method public abstract msrpTransferProgress(JJ[B)Z
.end method
