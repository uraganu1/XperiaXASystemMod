.class public abstract Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;
.super Landroid/os/Binder;
.source "IVideoSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
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
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 45
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v9

    :sswitch_1
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 50
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->getSessionID()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v9

    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 58
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v6

    .line 60
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v9

    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 66
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->getSessionState()I

    move-result v3

    .line 68
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v9

    .end local v3    # "_result":I
    :sswitch_4
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 74
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->acceptSession()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v9

    :sswitch_5
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 81
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->rejectSession()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v9

    :sswitch_6
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 88
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->cancelSession()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v9

    :sswitch_7
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 95
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v1

    .line 98
    .local v1, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v9

    .end local v1    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    :sswitch_8
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 104
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v5

    .line 106
    .local v5, "_result":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-nez v5, :cond_0

    :goto_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    return v9

    .line 107
    :cond_0
    invoke-interface {v5}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    goto :goto_0

    .end local v5    # "_result":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    :sswitch_9
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 112
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v0

    .line 115
    .local v0, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v9

    .end local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    :sswitch_a
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 121
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v4

    .line 123
    .local v4, "_result":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 125
    return v9

    .line 124
    :cond_1
    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    goto :goto_1

    .end local v4    # "_result":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    :sswitch_b
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 129
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;

    move-result-object v2

    .line 132
    .local v2, "_arg0":Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->addSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v9

    .end local v2    # "_arg0":Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;
    :sswitch_c
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IVideoSharingSession"

    .line 138
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession$Stub;->removeSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingEventListener;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
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
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
