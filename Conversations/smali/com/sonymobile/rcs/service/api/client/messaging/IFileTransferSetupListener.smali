.class public interface abstract Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
.super Ljava/lang/Object;
.source "IFileTransferSetupListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract handleFileTransferSessionResumed(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleFileTransferSessionSetup(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
