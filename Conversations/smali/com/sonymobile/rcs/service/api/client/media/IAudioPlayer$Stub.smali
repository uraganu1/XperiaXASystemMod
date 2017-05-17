.class public abstract Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;
.super Landroid/os/Binder;
.source "IAudioPlayer.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 45
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v8

    :sswitch_1
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 50
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->open(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v8

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_2
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 61
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->close()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v8

    :sswitch_3
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 68
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->start()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v8

    :sswitch_4
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 75
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->stop()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v8

    :sswitch_5
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 82
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->getLocalRtpPort()I

    move-result v4

    .line 84
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v8

    .end local v4    # "_result":I
    :sswitch_6
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 90
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v8

    .end local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;
    :sswitch_7
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 99
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->removeAllListeners()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v8

    :sswitch_8
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 106
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->getSupportedAudioCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v6

    .line 108
    .local v6, "_result":[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 110
    return v8

    .end local v6    # "_result":[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    :sswitch_9
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 114
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->getAudioCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v5

    .line 116
    .local v5, "_result":Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-nez v5, :cond_0

    .line 122
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    :goto_0
    return v8

    .line 118
    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v5, p3, v8}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v5    # "_result":Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    :sswitch_a
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.media.IAudioPlayer"

    .line 128
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v1, 0x0

    .line 136
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->setAudioCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return v8

    .line 131
    :cond_1
    sget-object v7, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    .local v1, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    goto :goto_1

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
