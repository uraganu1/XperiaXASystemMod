.class public interface abstract Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi;
.super Ljava/lang/Object;
.source "IIPCallApi.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSessions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initiateCall(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
