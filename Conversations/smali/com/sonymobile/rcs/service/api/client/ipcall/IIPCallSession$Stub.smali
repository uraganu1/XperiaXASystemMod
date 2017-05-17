.class public abstract Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;
.super Landroid/os/Binder;
.source "IIPCallSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession;
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

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 20
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 15
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 233
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_0
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 47
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 52
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->getSessionID()Ljava/lang/String;

    move-result-object v13

    .line 54
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v14, 0x1

    return v14

    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 60
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v13

    .line 62
    .restart local v13    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    const/4 v14, 0x1

    return v14

    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 68
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->getSessionState()I

    move-result v8

    .line 70
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v14, 0x1

    return v14

    .end local v8    # "_result":I
    :sswitch_4
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 76
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->getSessionDirection()I

    move-result v8

    .line 78
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v14, 0x1

    return v14

    .end local v8    # "_result":I
    :sswitch_5
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 84
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_0

    const/4 v6, 0x0

    .line 87
    .local v6, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->acceptSession(Z)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v14, 0x1

    return v14

    .end local v6    # "_arg0":Z
    :cond_0
    const/4 v6, 0x1

    .line 86
    goto :goto_0

    :sswitch_6
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 93
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->rejectSession()V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v14, 0x1

    return v14

    :sswitch_7
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 100
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->cancelSession()V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v14, 0x1

    return v14

    :sswitch_8
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 107
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v4

    .line 111
    .local v4, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    .line 112
    .local v7, "_arg1":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    invoke-virtual {p0, v4, v7}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->addVideo(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v14, 0x1

    return v14

    .end local v4    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .end local v7    # "_arg1":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    :sswitch_9
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 118
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->acceptAddVideo()V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v14, 0x1

    return v14

    :sswitch_a
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 125
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->rejectAddVideo()V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/4 v14, 0x1

    return v14

    :sswitch_b
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 132
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->removeVideo()V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v14, 0x1

    return v14

    :sswitch_c
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 139
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_1

    const/4 v6, 0x0

    .line 142
    .restart local v6    # "_arg0":Z
    :goto_1
    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->setCallHold(Z)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v14, 0x1

    return v14

    .end local v6    # "_arg0":Z
    :cond_1
    const/4 v6, 0x1

    .line 141
    goto :goto_1

    :sswitch_d
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 148
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v5

    .line 151
    .local v5, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    invoke-virtual {p0, v5}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->setVideoRenderer(Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    const/4 v14, 0x1

    return v14

    .end local v5    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    :sswitch_e
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 157
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v12

    .line 159
    .local v12, "_result":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-nez v12, :cond_2

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 161
    const/4 v14, 0x1

    return v14

    .line 160
    :cond_2
    invoke-interface {v12}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_2

    .end local v12    # "_result":Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;
    :sswitch_f
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 165
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v4

    .line 168
    .restart local v4    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->setVideoPlayer(Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v14, 0x1

    return v14

    .end local v4    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    :sswitch_10
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 174
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v11

    .line 176
    .local v11, "_result":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-nez v11, :cond_3

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 178
    const/4 v14, 0x1

    return v14

    .line 177
    :cond_3
    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_3

    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    :sswitch_11
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 182
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v3

    .line 185
    .local v3, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->setAudioRenderer(Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v14, 0x1

    return v14

    .end local v3    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    :sswitch_12
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 191
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v10

    .line 193
    .local v10, "_result":Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-nez v10, :cond_4

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 195
    const/4 v14, 0x1

    return v14

    .line 194
    :cond_4
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_4

    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;
    :sswitch_13
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 199
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v2

    .line 202
    .local v2, "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->setAudioPlayer(Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v14, 0x1

    return v14

    .end local v2    # "_arg0":Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    :sswitch_14
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 208
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v9

    .line 210
    .local v9, "_result":Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-nez v9, :cond_5

    const/4 v14, 0x0

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 212
    const/4 v14, 0x1

    return v14

    .line 211
    :cond_5
    invoke-interface {v9}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_5

    .end local v9    # "_result":Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;
    :sswitch_15
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 216
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    move-result-object v1

    .line 219
    .local v1, "_arg0":Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->addSessionListener(Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v14, 0x1

    return v14

    .end local v1    # "_arg0":Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;
    :sswitch_16
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallSession"

    .line 225
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    move-result-object v1

    .line 228
    .restart local v1    # "_arg0":Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallSession$Stub;->removeSessionListener(Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v14, 0x1

    return v14

    .line 43
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
