.class public abstract Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;
.super Landroid/os/Binder;
.source "IRichCallApi.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi;
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

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 16
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 224
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    :sswitch_0
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 45
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v15, 0x1

    return v15

    :sswitch_1
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 50
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->getRemotePhoneNumber()Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    const/4 v15, 0x1

    return v15

    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 58
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v5

    .line 63
    .local v5, "_arg1":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->initiateLiveVideoSharing(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;)Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;

    move-result-object v11

    .line 64
    .local v11, "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-nez v11, :cond_0

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 66
    const/4 v15, 0x1

    return v15

    .line 65
    :cond_0
    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    goto :goto_0

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;
    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;
    :sswitch_3
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 70
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->getVideoSharingSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;

    move-result-object v11

    .line 74
    .restart local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-nez v11, :cond_1

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 76
    const/4 v15, 0x1

    return v15

    .line 75
    :cond_1
    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    goto :goto_1

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IVideoSharingSession;
    :sswitch_4
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 80
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->getVideoSharingSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 84
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 86
    const/4 v15, 0x1

    return v15

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_5
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 90
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_2

    const/4 v4, 0x0

    .line 101
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_3

    const/4 v7, 0x0

    .line 102
    .local v7, "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v7}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->initiateImageSharing(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;

    move-result-object v10

    .line 103
    .local v10, "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-nez v10, :cond_4

    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 105
    const/4 v15, 0x1

    return v15

    .line 95
    .end local v7    # "_arg2":Z
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    :cond_2
    sget-object v15, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .local v4, "_arg1":Landroid/net/Uri;
    goto :goto_2

    .end local v4    # "_arg1":Landroid/net/Uri;
    :cond_3
    const/4 v7, 0x1

    .line 101
    goto :goto_3

    .line 104
    .restart local v7    # "_arg2":Z
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    :cond_4
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    goto :goto_4

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    :sswitch_6
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 109
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->getImageSharingSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;

    move-result-object v10

    .line 113
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-nez v10, :cond_5

    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 115
    const/4 v15, 0x1

    return v15

    .line 114
    :cond_5
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    goto :goto_5

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
    :sswitch_7
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 119
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->getImageSharingSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 123
    .restart local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 125
    const/4 v15, 0x1

    return v15

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_8
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 129
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_6

    const/4 v3, 0x0

    .line 132
    .local v3, "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->setMultiPartyCall(Z)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v15, 0x1

    return v15

    .end local v3    # "_arg0":Z
    :cond_6
    const/4 v3, 0x1

    .line 131
    goto :goto_6

    :sswitch_9
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 138
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_7

    const/4 v3, 0x0

    .line 141
    .restart local v3    # "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->setCallHold(Z)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v15, 0x1

    return v15

    .end local v3    # "_arg0":Z
    :cond_7
    const/4 v3, 0x1

    .line 140
    goto :goto_7

    :sswitch_a
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->isOutgoingVideoShareOngoing()Z

    move-result v14

    .line 149
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-nez v14, :cond_8

    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v15, 0x1

    return v15

    :cond_8
    const/4 v15, 0x1

    .line 150
    goto :goto_8

    .end local v14    # "_result":Z
    :sswitch_b
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 155
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->isOutgoingImageShareOngoing()Z

    move-result v14

    .line 157
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-nez v14, :cond_9

    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v15, 0x1

    return v15

    :cond_9
    const/4 v15, 0x1

    .line 158
    goto :goto_9

    .end local v14    # "_result":Z
    :sswitch_c
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 163
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_a

    const/4 v6, 0x0

    .line 173
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->initiateGeolocSharing(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;

    move-result-object v9

    .line 174
    .local v9, "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-nez v9, :cond_b

    const/4 v15, 0x0

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 176
    const/4 v15, 0x1

    return v15

    .line 168
    .end local v9    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;
    :cond_a
    sget-object v15, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .local v6, "_arg1":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    goto :goto_a

    .line 175
    .end local v6    # "_arg1":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .restart local v9    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;
    :cond_b
    invoke-interface {v9}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    goto :goto_b

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;
    :sswitch_d
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 180
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->getGeolocSharingSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;

    move-result-object v9

    .line 184
    .restart local v9    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-nez v9, :cond_c

    const/4 v15, 0x0

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 186
    const/4 v15, 0x1

    return v15

    .line 185
    :cond_c
    invoke-interface {v9}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    goto :goto_c

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;
    :sswitch_e
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 190
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->setRemoteParty(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v15, 0x1

    return v15

    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 199
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->getCallState()I

    move-result v8

    .line 201
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v15, 0x1

    return v15

    .end local v8    # "_result":I
    :sswitch_10
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 207
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .local v1, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->setCallState(I)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v15, 0x1

    return v15

    .end local v1    # "_arg0":I
    :sswitch_11
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.richcall.IRichCallApi"

    .line 216
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_d

    const/4 v3, 0x0

    .line 219
    .restart local v3    # "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IRichCallApi$Stub;->setRichcallPermissionStatus(Z)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v15, 0x1

    return v15

    .end local v3    # "_arg0":Z
    :cond_d
    const/4 v3, 0x1

    .line 218
    goto :goto_d

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
