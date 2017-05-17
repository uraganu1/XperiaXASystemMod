.class public abstract Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub;
.super Landroid/os/Binder;
.source "IAudioEventListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.media.IAudioEventListener"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IAudioEventListener"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IAudioEventListener"

    .line 45
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    :sswitch_1
    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IAudioEventListener"

    .line 50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub;->audioOpened()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v2

    :sswitch_2
    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IAudioEventListener"

    .line 57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub;->audioClosed()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    return v2

    :sswitch_3
    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IAudioEventListener"

    .line 64
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub;->audioStarted()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v2

    :sswitch_4
    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IAudioEventListener"

    .line 71
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub;->audioStopped()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v2

    :sswitch_5
    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IAudioEventListener"

    .line 78
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub;->audioError(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v2

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
