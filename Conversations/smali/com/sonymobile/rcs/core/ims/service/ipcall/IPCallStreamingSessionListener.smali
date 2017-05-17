.class public interface abstract Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;
.super Ljava/lang/Object;
.source "IPCallStreamingSessionListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;


# virtual methods
.method public abstract handle486Busy()V
.end method

.method public abstract handleAddVideo(Ljava/lang/String;II)V
.end method

.method public abstract handleAddVideoAborted(I)V
.end method

.method public abstract handleAddVideoAccepted()V
.end method

.method public abstract handleCallError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V
.end method

.method public abstract handleCallHold()V
.end method

.method public abstract handleCallHoldAborted(I)V
.end method

.method public abstract handleCallHoldAccepted()V
.end method

.method public abstract handleCallResume()V
.end method

.method public abstract handleCallResumeAborted(I)V
.end method

.method public abstract handleCallResumeAccepted()V
.end method

.method public abstract handleRemoveVideo()V
.end method

.method public abstract handleRemoveVideoAborted(I)V
.end method

.method public abstract handleRemoveVideoAccepted()V
.end method

.method public abstract handleVideoResized(II)V
.end method
