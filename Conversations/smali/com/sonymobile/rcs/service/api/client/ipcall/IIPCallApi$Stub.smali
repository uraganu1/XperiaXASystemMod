.class public abstract Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi$Stub;
.super Landroid/os/Binder;
.source "IIPCallApi.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallApi"

    .line 20
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallApi"

    .line 47
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v9

    :sswitch_1
    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallApi"

    .line 52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v2

    .line 58
    .local v2, "_arg1":Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v3

    .line 60
    .local v3, "_arg2":Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v4

    .line 62
    .local v4, "_arg3":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v5

    .local v5, "_arg4":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    move-object v0, p0

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi$Stub;->initiateCall(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;

    move-result-object v6

    .line 64
    .local v6, "_result":Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-nez v6, :cond_0

    move-object v0, v8

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 66
    return v9

    .line 65
    :cond_0
    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    .end local v3    # "_arg2":Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    .end local v4    # "_arg3":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .end local v5    # "_arg4":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    .end local v6    # "_result":Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    :sswitch_2
    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallApi"

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi$Stub;->getSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;

    move-result-object v6

    .line 74
    .restart local v6    # "_result":Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-nez v6, :cond_1

    :goto_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 76
    return v9

    .line 75
    :cond_1
    invoke-interface {v6}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    goto :goto_1

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
    :sswitch_3
    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallApi"

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallApi$Stub;->getSessions()Ljava/util/List;

    move-result-object v7

    .line 82
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 84
    return v9

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
