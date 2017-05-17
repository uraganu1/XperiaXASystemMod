.class public abstract Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;
.super Landroid/os/Binder;
.source "IVideoEventListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.media.IVideoEventListener"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IVideoEventListener"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;

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
    .locals 5
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
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.media.IVideoEventListener"

    .line 45
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v4

    :sswitch_1
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.media.IVideoEventListener"

    .line 50
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;->mediaOpened()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v4

    :sswitch_2
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.media.IVideoEventListener"

    .line 57
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;->mediaResized(II)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v4

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.media.IVideoEventListener"

    .line 68
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;->mediaClosed()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v4

    :sswitch_4
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.media.IVideoEventListener"

    .line 75
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;->mediaStarted()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v4

    :sswitch_5
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.media.IVideoEventListener"

    .line 82
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;->mediaStopped()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v4

    :sswitch_6
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.media.IVideoEventListener"

    .line 89
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;->mediaError(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v4

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
