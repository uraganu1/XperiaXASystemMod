.class public interface abstract Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSessionListener;
.super Ljava/lang/Object;
.source "ImageTransferSessionListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;


# virtual methods
.method public abstract handleContentTransfered(Landroid/net/Uri;)V
.end method

.method public abstract handleSharingError(Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;)V
.end method

.method public abstract handleSharingProgress(JJ)V
.end method
