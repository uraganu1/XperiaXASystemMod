.class public abstract Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;
.super Landroid/os/Binder;
.source "IVideoPlayer.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

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
    .locals 11
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 45
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v9

    :sswitch_1
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 50
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 55
    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->open(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v9

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 61
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->close()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v9

    :sswitch_3
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 68
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->start()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v9

    :sswitch_4
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 75
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->stop()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v9

    :sswitch_5
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 82
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->getLocalRtpPort()I

    move-result v5

    .line 84
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v9

    .end local v5    # "_result":I
    :sswitch_6
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 90
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;

    move-result-object v1

    .line 93
    .local v1, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v9

    .end local v1    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;
    :sswitch_7
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 99
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->removeAllListeners()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v9

    :sswitch_8
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 106
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v7

    .line 108
    .local v7, "_result":[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v7, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 110
    return v9

    .end local v7    # "_result":[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    :sswitch_9
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 114
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->getVideoCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v6

    .line 116
    .local v6, "_result":Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-nez v6, :cond_0

    .line 122
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    :goto_0
    return v9

    .line 118
    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v6, p3, v9}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v6    # "_result":Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    :sswitch_a
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 128
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v2, 0x0

    .line 136
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return v9

    .line 131
    :cond_1
    sget-object v8, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    .local v2, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    goto :goto_1

    .end local v2    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    :sswitch_b
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.media.IVideoPlayer"

    .line 142
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->setOrientationHeaderId(I)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v9

    .line 41
    nop

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
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
